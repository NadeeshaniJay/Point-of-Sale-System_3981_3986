using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace POS.Models
{
    public class Sale
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Required]
        public DateTime SaleDate { get; set; }

        [Required]
        [ForeignKey("Customer")]
        public int CustomerId { get; set; }

        [Required]
        [Column(TypeName = "decimal(18,2)")]
        public decimal TotalAmount { get; set; }
        public bool IsCanceled { get; set; }

        public virtual Customer Customer { get; set; }
        public virtual ICollection<SaleProduct> SaleProducts { get; set; }

        public Sale()
        {
            SaleProducts = new List<SaleProduct>();
            TotalAmount = 0;
        }
    }
}
