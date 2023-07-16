using POS.Models;
using System;
using System.Windows;

namespace POS.Views
{
    public partial class ProductWindow : Window
    {
        public Product Product { get; private set; }

        public ProductWindow() : this(null) { }

        public ProductWindow(Product product)
        {
            InitializeComponent();
            if (product != null)
            {
                Product = product;
                NameTextBox.Text = product.Name;
                DescriptionTextBox.Text = product.Description;
                PriceTextBox.Text = product.Price.ToString();
                QuantityTextBox.Text = product.Quantity.ToString();
            }
            else
            {
                Product = new Product();
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(NameTextBox.Text) || string.IsNullOrWhiteSpace(PriceTextBox.Text) || string.IsNullOrWhiteSpace(QuantityTextBox.Text))
            {
                MessageBox.Show("Please enter valid product information.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            Product.Name = NameTextBox.Text;
            Product.Description = DescriptionTextBox.Text;

            if (decimal.TryParse(PriceTextBox.Text, out decimal price) && int.TryParse(QuantityTextBox.Text, out int quantity))
            {
                Product.Price = price;
                Product.Quantity = quantity;
            }
            else
            {
                MessageBox.Show("Invalid price or quantity. Please enter valid values.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            DialogResult = true;
            Close();
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
    }
}
