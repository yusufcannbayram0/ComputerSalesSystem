using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ComputerSalesSystem
{
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();
        }
        //1- FORM TÜRETME İŞLEMİ
        ComputerManager computerManager = new ComputerManager();
        AdminManager adminManager = new AdminManager();
        BasketManager basketManager = new BasketManager();
        CustomerManager customerManager = new CustomerManager();
        LoginManager loginManager = new LoginManager();
        ProductManager productManager = new ProductManager();
        SaleManager saleManager = new SaleManager();
        Statistics statistics = new Statistics();

        private void bilgisayarİşlemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {

            // 3 - FORM GÖSTERMe-GİZLEME
            showForm(computerManager);
           
        }
        public void showForm(Form form)
        {
            // tüm formları gizle
            computerManager.Hide();
            adminManager.Hide(); 
            basketManager.Hide();
            customerManager.Hide();
            loginManager.Hide();
            productManager.Hide();
            saleManager.Hide();
            statistics.Hide();

            form.Show(); // gönderilen formu göster
        }

        private void Home_Load(object sender, EventArgs e)
        {
            // 2 - MDIPARENT FORM TANIMLAMA
            computerManager.MdiParent = this;
            adminManager.MdiParent = this;
            basketManager.MdiParent = this;
            customerManager.MdiParent = this;
            loginManager.MdiParent = this;
            productManager.MdiParent = this;
            saleManager.MdiParent = this;
            statistics.MdiParent = this;
        }

        private void girişİşlemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            showForm(loginManager);
        }

        private void yöneticiİşlemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            showForm(adminManager);
        }

        private void müşteriİşlemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            showForm(customerManager);
        }

        private void ürünİşlemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            showForm(productManager);
        }

        private void satışİşlemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            showForm(saleManager);
        }

        private void sepetİşlemleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            showForm(basketManager);
        }

        private void istatistikToolStripMenuItem_Click(object sender, EventArgs e)
        {
            showForm(statistics);
        }
    }
}
