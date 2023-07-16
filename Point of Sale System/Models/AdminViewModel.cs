using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Data.Sqlite;
using Microsoft.EntityFrameworkCore;
using POS.DataAccess;
using POS.Models;
using POS.Views;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace POS.ViewModels
{
    public class AdminViewModel : ObservableObject
    {
        private ObservableCollection<User> _users;
        
        public ObservableCollection<User> Users
        {
            get => _users;
            set => SetProperty(ref _users, value);
        }

        private User _selectedUser;
        public User SelectedUser
        {
            get => _selectedUser;
            set => SetProperty(ref _selectedUser, value);
        }

        private ObservableCollection<Product> _products;
        public ObservableCollection<Product> Products
        {
            get => _products;
            set => SetProperty(ref _products, value);
        }

        private Product _selectedProduct;
        public Product SelectedProduct
        {
            get => _selectedProduct;
            set => SetProperty(ref _selectedProduct, value);
        }
        private ObservableCollection<Customer> _customers;
        public ObservableCollection<Customer> Customers
        {
            get => _customers;
            set => SetProperty(ref _customers, value);
        }

        private Customer _selectedCustomer;
        public Customer SelectedCustomer
        {
            get => _selectedCustomer;
            set => SetProperty(ref _selectedCustomer, value);
        }

        private ObservableCollection<Sale> _sales;
        public ObservableCollection<Sale> Sales
        {
            get => _sales;
            set => SetProperty(ref _sales, value);
        }

        private Sale _selectedSale;
        public Sale SelectedSale
        {
            get => _selectedSale;
            set => SetProperty(ref _selectedSale, value);
        }
        public ICommand LoadUsersCommand { get; }
        public ICommand AddUserCommand { get; }
        public ICommand UpdateUserCommand { get; }
        public ICommand DeleteUserCommand { get; }

        public ICommand LoadProductsCommand {  get; }
        public ICommand AddProductCommand { get; }
        public ICommand UpdateProductCommand { get; }
        public ICommand DeleteProductCommand { get; }

        public ICommand LoadCustomersCommand { get; }
        public ICommand AddCustomerCommand { get; }
        public ICommand UpdateCustomerCommand { get; }
        public ICommand DeleteCustomerCommand { get; }
        public ICommand LoadSalesCommand { get; }
        public ICommand AddSaleCommand { get; }
        public ICommand ViewSaleDetailsCommand { get; }
        public ICommand GenerateReportCommand { get; }

        public AdminViewModel()
        {
            Users = new ObservableCollection<User>();


            LoadUsersCommand = new RelayCommand(LoadUsers);
            AddUserCommand = new RelayCommand(AddUser);
            UpdateUserCommand = new RelayCommand(UpdateUser);
            DeleteUserCommand = new RelayCommand(DeleteUser);

            LoadProductsCommand = new RelayCommand(LoadProducts);
            AddProductCommand = new RelayCommand(AddProduct);
            UpdateProductCommand = new RelayCommand(UpdateProduct);
            DeleteProductCommand = new RelayCommand(DeleteProduct);

            LoadCustomersCommand = new RelayCommand(LoadCustomers);
            AddCustomerCommand = new RelayCommand(AddCustomer);
            UpdateCustomerCommand = new RelayCommand(UpdateCustomer);
            DeleteCustomerCommand = new RelayCommand(DeleteCustomer);

            LoadSalesCommand = new RelayCommand(LoadSales);
            AddSaleCommand = new RelayCommand(AddSale);
            ViewSaleDetailsCommand = new RelayCommand(SaleDetailsView);
            GenerateReportCommand = new RelayCommand(ReportGenerate);

            LoadUsers();

            LoadProducts();

            LoadCustomers();

            LoadSales();
        }

        private void LoadUsers()
        {
            using (var context = new POSDbContext())
            {
                Users.Clear();
                foreach (var user in context.Users)
                {
                    Users.Add(user);
                }
            }
        }
        private void LoadProducts()
        {
            using (var context = new POSDbContext())
            {
                Products = new ObservableCollection<Product>(context.Products.ToList());
            }
        }
        private void LoadCustomers()
        {
            using (var context = new POSDbContext())
            {
                Customers = new ObservableCollection<Customer>(context.Customers.ToList());
            }
        }

        private void LoadSales()
        {
            using (var context = new POSDbContext())
            {
                var sales = context.Sales
                    .Include(s => s.Customer)   
                    .Include(s => s.SaleProducts)    
                        .ThenInclude(sp => sp.Product) 
                    .ToList();

                Sales = new ObservableCollection<Sale>(sales);
            }
        }


        private void AddUser()
        {
            
            var userWindow = new UserWindow();
            if (userWindow.ShowDialog() == true)
            {
                var newUser = userWindow.User;
                using (var context = new POSDbContext())
                {
                    context.Users.Add(newUser);
                    context.SaveChanges();
                }
               
                Users.Add(newUser);
            }
        }


        private void UpdateUser()
        {
            if (SelectedUser != null)
            {
                using (var context = new POSDbContext())
                {
                    var user = context.Users.Find(SelectedUser.Id);
                    if (user != null)
                    {
                        var userWindow = new UserWindow(user);
                        if (userWindow.ShowDialog() == true)
                        {
                            user.Username = userWindow.User.Username;
                            user.Password = userWindow.User.Password;
                            user.Role = userWindow.User.Role;

                            context.SaveChanges();
                            LoadUsers();
                        }
                    }
                }
            }
        }




        private void DeleteUser()
        {
            if (SelectedUser != null)
            {
                
                var messageBoxResult = MessageBox.Show("Are you sure you want to remove this user?", "Delete User", MessageBoxButton.YesNo);
                if (messageBoxResult == MessageBoxResult.Yes)
                {
                    using (var context = new POSDbContext())
                    {
                        context.Users.Remove(SelectedUser);
                        context.SaveChanges();
                    }
                    
                    Users.Remove(SelectedUser);
                }
            }
        }

        private void AddProduct()
        {
            var productWindow = new ProductWindow();
            if (productWindow.ShowDialog() == true)
            {
                using (var context = new POSDbContext())
                {
                    context.Products.Add(productWindow.Product);
                    context.SaveChanges();
                }
                LoadProducts();
            }
        }

        private void UpdateProduct()
        {
            if (SelectedProduct != null)
            {
                using (var context = new POSDbContext())
                {
                    var product = context.Products.Find(SelectedProduct.Id);
                    if (product != null)
                    {
                        var productWindow = new ProductWindow(product);
                        if (productWindow.ShowDialog() == true)
                        {
                            product.Name = productWindow.Product.Name;
                            product.Description = productWindow.Product.Description;
                            product.Price = productWindow.Product.Price;
                            product.Quantity = productWindow.Product.Quantity;

                            context.SaveChanges();
                            LoadProducts();
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select a product", "Error!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void DeleteProduct()
        {
            if (SelectedProduct != null)
            {
                var result = MessageBox.Show("Are you sure you want to remove this product?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (result == MessageBoxResult.Yes)
                {
                    using (var context = new POSDbContext())
                    {
                        var product = context.Products.Find(SelectedProduct.Id);
                        if (product != null)
                        {
                            context.Products.Remove(product);
                            context.SaveChanges();
                            LoadProducts();
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select a product", "Error!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void AddCustomer()
        {
            var customerWindow = new CustomerWindow();
            if (customerWindow.ShowDialog() == true)
            {
                using (var context = new POSDbContext())
                {
                    context.Customers.Add(customerWindow.Customer);
                    context.SaveChanges();
                }
                LoadCustomers();
            }
        }

        private void UpdateCustomer()
        {
            if (SelectedCustomer != null)
            {
                using (var context = new POSDbContext())
                {
                    var customer = context.Customers.Find(SelectedCustomer.Id);
                    if (customer != null)
                    {
                        var customerWindow = new CustomerWindow(customer);
                        if (customerWindow.ShowDialog() == true)
                        {
                            customer.Name = customerWindow.Customer.Name;
                            customer.PhoneNumber = customerWindow.Customer.PhoneNumber;
                            customer.Email = customerWindow.Customer.Email;

                            context.SaveChanges();
                            LoadCustomers();
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select a customer", "Error!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void DeleteCustomer()
        {
            if (SelectedCustomer != null)
            {
                var result = MessageBox.Show("Are you sure you want to remove this customer?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (result == MessageBoxResult.Yes)
                {
                    using (var context = new POSDbContext())
                    {
                        var customer = context.Customers.Find(SelectedCustomer.Id);
                        if (customer != null)
                        {
                            context.Customers.Remove(customer);
                            context.SaveChanges();
                            LoadCustomers();
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("Please select a customer!", "Error!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void AddSale()
        {
            var saleWindow = new SaleWindow(Customers, Products); 
            if (saleWindow.ShowDialog() == true)
            {
                var newSale = saleWindow.Sale; 
                Sales.Add(newSale);
                LoadSales(); 
                LoadProducts();
            }
        }



        private void SaleDetailsView()
        {
            if (SelectedSale != null)
            {
                var saleDetailsWindow = new SaleDetailsWindow(SelectedSale);
                saleDetailsWindow.ShowDialog();
            }
            else
            {
                MessageBox.Show("Please select a sale to view details.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }


        private void ReportGenerate()
        {
            DateTime reportMonth = new DateTime(2023,7,4); 
            DateTime nextMonth = reportMonth.AddMonths(1);

            var monthlySales = Sales.Where(sale => sale.SaleDate >= reportMonth && sale.SaleDate < nextMonth).ToList();

            decimal totalAmount = monthlySales.Sum(sale => sale.TotalAmount);
            int totalSales = monthlySales.Count;

            MessageBox.Show($"Sales Report for {reportMonth:MMMM yyyy}\n\nTotal Sales: {totalSales}\nTotal Amount: {totalAmount:C}", "Sales Report", MessageBoxButton.OK, MessageBoxImage.Information);
        }




    }
}
