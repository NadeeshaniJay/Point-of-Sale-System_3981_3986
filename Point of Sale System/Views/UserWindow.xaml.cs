using POS.Models;
using System.Windows;

namespace POS.Views
{
    public partial class UserWindow : Window
    {
        public User User { get; private set; }

        public UserWindow() : this(null) { }

        public UserWindow(User user)
        {
            InitializeComponent();
            if (user != null)
            {
                User = user;
                UsernameTextBox.Text = user.Username;
                PasswordBox.Password = user.Password;
                RoleComboBox.SelectedIndex = user.Role == "Admin" ? 0 : 1;
            }
            else
            {
                User = new User();
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(UsernameTextBox.Text) || string.IsNullOrWhiteSpace(PasswordBox.Password))
            {
                MessageBox.Show("Please enter a valid username and password.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            User.Username = UsernameTextBox.Text;
            User.Password = PasswordBox.Password; 
            User.Role = RoleComboBox.SelectedIndex == 0 ? "Admin" : "Normal";

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
