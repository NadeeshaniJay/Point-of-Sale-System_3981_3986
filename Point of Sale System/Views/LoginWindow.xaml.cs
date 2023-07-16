using System.Windows;
using POS.DataAccess;
using POS.Models;
using System.Linq;

namespace POS.Views
{
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            string username = UsernameTextBox.Text;
            string password = PasswordBox.Password;

            using (var context = new POSDbContext())
            {
                User user = context.Users.SingleOrDefault(u => u.Username == username && u.Password == password);

                if (user != null)
                {
                 
                    MessageBox.Show("Login successful!");

                   
                    if (user.Role == "Admin")
                    {
                        AdminMainWindow adminMainWindow = new AdminMainWindow();
                        adminMainWindow.Show();
                    }
                    else
                    {
                        NormalUserMainWindow normalUserMainWindow = new NormalUserMainWindow();
                        normalUserMainWindow.Show();
                    }

                    this.Close();
                }
                else
                {
                   
                    MessageBox.Show("Invalid username or password.");
                }
            }
        }
    }
}
