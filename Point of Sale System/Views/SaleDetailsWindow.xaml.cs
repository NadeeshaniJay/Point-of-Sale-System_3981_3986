using POS.Models;
using System.Windows;

namespace POS.Views
{
    public partial class SaleDetailsWindow : Window
    {
        public Sale Sale { get; private set; }

        public SaleDetailsWindow(Sale sale)
        {
            InitializeComponent();
            Sale = sale;
            DataContext = this;

            SaleDateTextBlock.Text = Sale.SaleDate.ToString("yyyy-MM-dd");
            CustomerNameTextBlock.Text = Sale.Customer.Name;
            SaleProductsDataGrid.ItemsSource = Sale.SaleProducts;
        }
    }
}
