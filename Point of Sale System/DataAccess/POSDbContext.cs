using Microsoft.EntityFrameworkCore;
using POS.Models;
using System;
using System.IO;

namespace POS.DataAccess
{
    public class POSDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Sale> Sales { get; set; }

        public POSDbContext()
        {
            Database.Migrate();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string appDataPath = AppDomain.CurrentDomain.BaseDirectory;
            string dbPath = Path.Combine(appDataPath, "POS.db");
            optionsBuilder.UseSqlite($"Filename={dbPath}");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>().HasData(
                new User { Id = 1, Username = "admin", Password = "admin123", Role = "Admin" }
            );

            modelBuilder.Entity<Product>().HasData(
                new Product { Id = 1, Name = "Sample Product", Description = "This is a sample product", Price = 100, Quantity = 20 }
            );

            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<SaleProduct>(entity =>
            {
                entity.HasKey(sp => new { sp.SaleId, sp.ProductId });

                entity.HasOne(sp => sp.Sale)
                    .WithMany(s => s.SaleProducts)
                    .HasForeignKey(sp => sp.SaleId);

                entity.HasOne(sp => sp.Product)
                    .WithMany()
                    .HasForeignKey(sp => sp.ProductId);
            });
        }

    }
}
