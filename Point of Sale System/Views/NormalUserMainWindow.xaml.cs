using POS.ViewModels;
using System.Windows;

namespace POS.Views
{
    /// <summary>
    /// Interaction logic for NormalUserMainWindow.xaml
    /// </summary>
    public partial class NormalUserMainWindow : Window
    {
        public NormalUserMainWindow()
        {
            InitializeComponent();
            DataContext = new NormalUserMainViewModel(); 
        }
    }
}
