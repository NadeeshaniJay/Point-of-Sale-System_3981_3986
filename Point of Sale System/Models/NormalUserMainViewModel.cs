using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
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
    public class NormalUserMainViewModel : ObservableObject
    {
        private ObservableCollection<Product> _products;

        public ObservableCollection<Product> Products
        {
            get => _products;
            set => SetProperty(ref _products, value);
        }

        private ObservableCollection<Sale> _sales;
        public ObservableCollection<Sale> Sales
        {
            get => _sales;
            set => SetProperty(ref _sales, value);
        }
        private ObservableCollection<Customer> _customers;

        public ObservableCollection<Customer> Customers
        {
            get => _customers;
            set => SetProperty(ref _customers, value);
        }

       
        private Sale _selectedSale;

        public Sale SelectedSale
        {
            get => _selectedSale;
            set => SetProperty(ref _selectedSale, value);
        }
        public ICommand LoadProductsCommand { get; }
        public ICommand AddSaleCommand { get; }
        public ICommand CancelSaleCommand { get; }
        public ICommand GenerateReportCommand { get; }
        public class RelayCommandWithParameter : ICommand
        {
            private readonly Action<object> _execute;
            private readonly Predicate<object> _canExecute;

            public RelayCommandWithParameter(Action<object> execute, Predicate<object> canExecute = null)
            {
                _execute = execute ?? throw new ArgumentNullException(nameof(execute));
                _canExecute = canExecute;
            }

            public bool CanExecute(object parameter)
            {
                return _canExecute == null || _canExecute(parameter);
            }

            public void Execute(object parameter)
            {
                _execute(parameter);
            }

            public event EventHandler CanExecuteChanged
            {
                add => CommandManager.RequerySuggested += value;
                remove => CommandManager.RequerySuggested -= value;
            }
        }

        public NormalUserMainViewModel()
        {
            Products = new ObservableCollection<Product>();
            Customers = new ObservableCollection<Customer>();

            LoadProductsCommand = new RelayCommand(LoadProducts);
            AddSaleCommand = new RelayCommand(AddSale);
            CancelSaleCommand = new RelayCommand(CancelSale);
            GenerateReportCommand = new RelayCommand(GenerateReport);


            LoadProducts();
            LoadCustomers();
            LoadSales();
        }

        private void LoadProducts()
        {
            using (var context = new POSDbContext())
            {
                Products.Clear();
                foreach (var product in context.Products)
                {
                    Products.Add(product);
                }
            }
        }
        private void LoadCustomers()
        {
            using (var context = new POSDbContext())
            {
                Customers.Clear();
                foreach (var customer in context.Customers)
                {
                    Customers.Add(customer);
                }
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


        private void CancelSale()
        {
            if (SelectedSale != null)
            {
                var messageBoxResult = MessageBox.Show("Are you sure you want to cancel this sale?", "Cancel Sale", MessageBoxButton.YesNo);
                if (messageBoxResult == MessageBoxResult.Yes)
                {
                    using (var context = new POSDbContext())
                    {
                        var saleToCancel = context.Sales.Include(s => s.SaleProducts).ThenInclude(sp => sp.Product).FirstOrDefault(s => s.Id == SelectedSale.Id);
                        if (saleToCancel != null)
                        {
                            saleToCancel.IsCanceled = true;

                            
                            foreach (var saleProduct in saleToCancel.SaleProducts)
                            {
                                var product = saleProduct.Product;
                                if (product != null)
                                {
                                    product.Quantity += saleProduct.Quantity;
                                }
                            }

                            context.SaveChanges();
                        }
                    }
                   
                    SelectedSale.IsCanceled = true;

                   
                    LoadSales();
                    LoadProducts();
                }
            }
            else
            {
                MessageBox.Show("Please select a sale to cancel.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }




        private void GenerateReport()
        {
            DateTime reportMonth = new DateTime(2023, 4, 1); 
            DateTime nextMonth = reportMonth.AddMonths(1);

            using (var context = new POSDbContext())
            {
                var monthlySales = context.Sales
                    .Where(sale => sale.SaleDate >= reportMonth && sale.SaleDate < nextMonth && !sale.IsCanceled)
                    .ToList();

                decimal totalAmount = monthlySales.Sum(sale => sale.TotalAmount);
                int totalSales = monthlySales.Count;

                MessageBox.Show($"Sales Report for {reportMonth:MMMM yyyy}\n\nTotal Sales: {totalSales}\nTotal Amount: {totalAmount:C}", "Sales Report", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        }
}
