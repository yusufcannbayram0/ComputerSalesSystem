using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.OleDb;
using System.Runtime.InteropServices;

namespace ComputerSalesSystem
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        // 1- FORM TÜRETME
        Home home = new Home();
        OleDbConnection connection;
        OleDbCommand command;
        OleDbDataReader reader;
        private void pictureBox1_Click(object sender, EventArgs e)
        {
            // eposta - şifre doğrulama
            connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\YB\\Desktop\\Desktop\\OKUL\\BilgisayarSatışSistemi\\ComputerSalesSystemm\\bilgisayarsatis.accdb");
            command = new OleDbCommand();
            connection.Open();
            command.Connection = connection;
            command.CommandText = "Select * from kullanici where kullanici_adi = '" + tbx_username.Text + "' AND sifre = '" + tbx_password.Text + "'";
            reader = command.ExecuteReader();
            
            if(reader.Read())
            {
                home.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Kullanıcı Adı veya Şifre yanlış");
            }
        }

        private void exit_lbl_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pcBox_login_MouseHover(object sender, EventArgs e)
        {
            pcBox_login.BorderStyle = BorderStyle.FixedSingle;
            
        }

        private void pcBox_login_MouseLeave(object sender, EventArgs e)
        {
            pcBox_login.BorderStyle = BorderStyle.None;
           
        }

        private void çıkışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit(); // uygulamadan çıkış
        }
    }
}
