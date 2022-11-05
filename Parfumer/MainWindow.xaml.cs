using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Parfumer.Models;
using Parfumer.Windows;

namespace Parfumer
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static ParfumerEntities _context = new ParfumerEntities();
        public User user=new User();
      
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Btn_CheckUser_Click(object sender, RoutedEventArgs e)
        {
            if (textBox_login.Text.Length > 0)
            {
                if (password.Password.Length > 0)        
                {
                 
                  
                    if (user.login == textBox_login.Text && user.password == password.Password && user.role == "Менеджер") 
                    {
                        MessageBox.Show("Пользователь авторизовался");
                        ManagerWindow1 managerWindow=new ManagerWindow1();
                        managerWindow.ShowDialog();
                    }

                    else if(user.login == textBox_login.Text && user.password == password.Password && user.role == "Администратор")
                    {
                        MessageBox.Show("Пользователь авторизовался");
                        AdninWindow adWindow = new AdninWindow();
                        adWindow.ShowDialog();
                    }
                    else if (user.login == textBox_login.Text && user.password == password.Password && user.role == "Клиент")
                    {
                        MessageBox.Show("Пользователь авторизовался");
                        ClientWindow clWindow = new ClientWindow();
                        clWindow.ShowDialog();
                    }
                    else MessageBox.Show("Пользователя не найден"); 
                }
                else MessageBox.Show("Введите пароль"); 
            }
            else MessageBox.Show("Введите логин"); 
        }
    }
}
