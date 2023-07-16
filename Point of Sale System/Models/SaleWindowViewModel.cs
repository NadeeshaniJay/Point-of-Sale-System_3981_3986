using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POS.Models
{
    public class SaleWindowViewModel
    {
        public ObservableCollection<Customer> Customers { get; set; }
        public ObservableCollection<Product> Products { get; set; }
        public ObservableCollection<SaleProduct> SaleProducts { get; set; }
        public Sale Sale { get; set; }
        public int SelectedCustomerId { get; set; }

        public SaleWindowViewModel(ObservableCollection<Customer> customers, ObservableCollection<Product> products)
        {
            Customers = customers;
            Products = products;
            SaleProducts = new ObservableCollection<SaleProduct>();
            Sale = new Sale();

           
            foreach (var product in products)
            {
                SaleProducts.Add(new SaleProduct { Product = product, Quantity = 0 });
            }
        }
    }
}
