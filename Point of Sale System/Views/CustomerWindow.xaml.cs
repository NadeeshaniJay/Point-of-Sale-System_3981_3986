using POS.Models;
using System;
using System.Windows;

namespace POS.Views
{
    public partial class CustomerWindow : Window
    {
        public Customer Customer { get; private set; }

        public CustomerWindow() : this(null) { }

        public CustomerWindow(Customer customer)
        {
            InitializeComponent();
            if (customer != null)
            {
                Customer = customer;
                NameTextBox.Text = customer.Name;
                PhoneNumberTextBox.Text = customer.PhoneNumber;
                EmailTextBox.Text = customer.Email;
            }
            else
            {
                Customer = new Customer();
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(NameTextBox.Text) || string.IsNullOrWhiteSpace(PhoneNumberTextBox.Text) || string.IsNullOrWhiteSpace(EmailTextBox.Text))
            {
                MessageBox.Show("Please enter valid customer information.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            Customer.Name = NameTextBox.Text;
            Customer.PhoneNumber = PhoneNumberTextBox.Text;
            Customer.Email = EmailTextBox.Text;

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
