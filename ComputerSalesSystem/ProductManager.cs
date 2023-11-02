using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;// 1-veri tutucu nesneler için(dataset)
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;// 2- veritabanı işlemleri için(ekle göster güncelle sil)
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace ComputerSalesSystem
{
    public partial class ProductManager : Form
    {
        public ProductManager()
        {
            InitializeComponent();
        }
        // VERİTABANI NESNELERİ
        OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\YB\\Desktop\\Desktop\\OKUL\\BilgisayarSatışSistemi\\ComputerSalesSystemm\\bilgisayarsatis.accdb");
        OleDbCommand command;
        OleDbDataAdapter oleDbDataAdapter;
        DataTable dataTable;
        OleDbDataReader dataReader;
    
        public void fillDataGrid(string sql)
        {
            //Dinamik Datagridview doldurma
            dataTable = new DataTable(); // veritablosu sıfırlandı

            
            connection.Open();// Bağlantı Açma
            oleDbDataAdapter = new OleDbDataAdapter(sql,connection); // tablodan gelen veriler veri tutucuya geldi
            oleDbDataAdapter.Fill(dataTable);
            dgw_urunler.DataSource = dataTable;
            connection.Close();
        }
        public void show(int satirno)
        {
            tbx_bilgisayarid.Text = dgw_urunler.Rows[satirno].Cells[0].Value.ToString();
            tbx_kategoriid.Text = dgw_urunler.Rows[satirno].Cells[1].Value.ToString();
            cbx_marka.Text = dgw_urunler.Rows[satirno].Cells[2].Value.ToString();
            tbx_model.Text = dgw_urunler.Rows[satirno].Cells[3].Value.ToString();
            tbx_ramsayisi.Text = dgw_urunler.Rows[satirno].Cells[4].Value.ToString();
            tbx_ramslotu.Text = dgw_urunler.Rows[satirno].Cells[5].Value.ToString();
            cbx_ramtipi.Text = dgw_urunler.Rows[satirno].Cells[6].Value.ToString();
            cbx_cpunesili.Text = dgw_urunler.Rows[satirno].Cells[7].Value.ToString();
            cbx_cpumarkası.Text = dgw_urunler.Rows[satirno].Cells[8].Value.ToString();
            tbx_cpumodeli.Text = dgw_urunler.Rows[satirno].Cells[9].Value.ToString();
            cbx_gpumarkası.Text = dgw_urunler.Rows[satirno].Cells[10].Value.ToString();
            tbx_gpumodeli.Text = dgw_urunler.Rows[satirno].Cells[11].Value.ToString();
            tbx_ekranboyutu.Text = dgw_urunler.Rows[satirno].Cells[12].Value.ToString();
            tbx_cozunurluk.Text = dgw_urunler.Rows[satirno].Cells[13].Value.ToString();
            tbx_vram.Text = dgw_urunler.Rows[satirno].Cells[14].Value.ToString();
            cbx_sdiskturu.Text = dgw_urunler.Rows[satirno].Cells[15].Value.ToString();
            tbx_sdisksayisi.Text = dgw_urunler.Rows[satirno].Cells[16].Value.ToString();
            cbx_sdiskboyutu.Text = dgw_urunler.Rows[satirno].Cells[17].Value.ToString();
            tbx_aciklama.Text = dgw_urunler.Rows[satirno].Cells[18].Value.ToString();
            cbx_pcturu.Text = dgw_urunler.Rows[satirno].Cells[19].Value.ToString();
            cbx_isletimsistemi.Text = dgw_urunler.Rows[satirno].Cells[20].Value.ToString();
            tbx_fiyat.Text = dgw_urunler.Rows[satirno].Cells[21].Value.ToString();
            tbx_stoksayisi.Text = dgw_urunler.Rows[satirno].Cells[22].Value.ToString();
            tbx_garantisuresi.Text = dgw_urunler.Rows[satirno].Cells[23].Value.ToString();
            tbx_resim.Text = dgw_urunler.Rows[satirno].Cells[24].Value.ToString();
            pcbox_resim.ImageLocation = dgw_urunler.Rows[satirno].Cells[24].Value.ToString();
        }
        private void ProductManager_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.None;
            this.Focus();
            this.BringToFront();
            this.TopMost = true;
            this.Bounds = Screen.PrimaryScreen.Bounds;
            this.Bounds = Screen.PrimaryScreen.Bounds;
        }
        private void btn_listele_Click(object sender, EventArgs e)
        {
            fillDataGrid("Select * from bilgisayar");
        }

        private void pcbox_resim_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            // Resim açma/gösterme işlemi
            openFileDialog1.ShowDialog(); // openFileDialog1 gösterme
            pcbox_resim.Image = Image.FromFile(openFileDialog1.FileName);
            tbx_resim.Text = dgw_urunler.CurrentRow.Cells[24].Value.ToString();
        }
    

        private void pcbox_resim_MouseClick(object sender, MouseEventArgs e)
        {
            if(e.Button == MouseButtons.Right) // sağ tuşa tıklandıysa kaydet
            {
                // Resim Kaydetme
                string ad = DateTime.Now.ToString("yyyMMddHHmmss") + ".png";
                pcbox_resim.Image.Save("Resim\\" + ad);
            }
           
        }

        private void dgw_urunler_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            show(e.RowIndex); // tıklanan satır göster
        }

        private void dgw_urunler_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            show(e.RowIndex);// tıklanan satır göster
        }

        private void btn_sil_Click(object sender, EventArgs e)
        {
            sil();
        }

        private void sil()
        {
            string sql = "delete * from bilgisayar where BilgisayarId = " + tbx_bilgisayarid.Text + "";
            connection.Open();
            command = new OleDbCommand(sql, connection);
            command.ExecuteNonQuery();
            connection.Close();
            fillDataGrid("select * from bilgisayar");
        }

        private void btn_ekle_Click(object sender, EventArgs e)
        {
            ekle();
            fillDataGrid("select * from bilgisayar");
        }

        private void ekle()
        {
            string sql = "insert into bilgisayar  " +
               "(KategoriId,BilgisayarMarka,BilgisayarModel,BİlgisayarRam,BilgisayarRamSlot,BilgisayarRamTipi,BilgisayarİşlemciNesili," +
               "BilgisayarİşlemciMarkası,BilgisayarİşlemciModeli,BilgisayarEkranKartıMarkası,BilgisayarEkranKartıModeli,BilgisayarEkranBoyutu," +
               "BilgisayarEkranÇözünürlüğü,BilgisayarVRAM,BilgisayarSabitDiskTürü,BilgisayarSabitDiskMiktarı,BilgisayarSabitDiskBoyutu," +
               "BilgisayarAçıklama,BilgisayarTürü,BilgisayarİşletimSistemi,BilgisayarFiyat,BilgisayarStok,BilgisayarGarantiSüresi,BilgisayarResim)" +
               "values (@kategoriid,@marka,@model,@ram,@slot,@tip,@nesil,@imarka,@imodel,@emarka,@emodel,@ekranboyut,@cözünürlük,@vram," +
               "@diskturu,@diskmiktar,@diskboyut,@aciklama,@türü,@isistemi,@fiyat,@stok,@garanti,@resim)";
            command = new OleDbCommand(sql, connection);
            command.Parameters.AddWithValue("kategoriid", tbx_kategoriid.Text);
            command.Parameters.AddWithValue("marka", cbx_marka.Text);
            command.Parameters.AddWithValue("model", tbx_model.Text);
            command.Parameters.AddWithValue("ram", tbx_ramsayisi.Text);
            command.Parameters.AddWithValue("slot", tbx_stoksayisi.Text);
            command.Parameters.AddWithValue("tip", cbx_ramtipi.Text);
            command.Parameters.AddWithValue("nesil", cbx_cpunesili.Text);
            command.Parameters.AddWithValue("imarka", cbx_cpumarkası.Text);
            command.Parameters.AddWithValue("imodel", tbx_cpumodeli.Text);
            command.Parameters.AddWithValue("emarka", cbx_gpumarkası.Text);
            command.Parameters.AddWithValue("emodel", tbx_gpumodeli.Text);
            command.Parameters.AddWithValue("ekranboyut", tbx_ekranboyutu.Text);
            command.Parameters.AddWithValue("cözünürlük", tbx_cozunurluk.Text);
            command.Parameters.AddWithValue("vram", tbx_vram.Text);
            command.Parameters.AddWithValue("diskturu", cbx_sdiskturu.Text);
            command.Parameters.AddWithValue("diskmiktar", tbx_sdisksayisi.Text);
            command.Parameters.AddWithValue("diskboyut", cbx_sdiskboyutu.Text);
            command.Parameters.AddWithValue("aciklama", tbx_aciklama.Text);
            command.Parameters.AddWithValue("türü", cbx_pcturu.Text);
            command.Parameters.AddWithValue("isistemi", cbx_isletimsistemi.Text);
            command.Parameters.AddWithValue("fiyat", tbx_fiyat.Text);
            command.Parameters.AddWithValue("stok", tbx_stoksayisi.Text);
            command.Parameters.AddWithValue("garanti", tbx_garantisuresi.Text);
            command.Parameters.AddWithValue("resim", tbx_resim.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }

        private void btn_goster_Click(object sender, EventArgs e)
        {
            goster();
        }

        private void goster()
        {
            string sql = "select * from bilgisayar where BilgisayarId = " + tbx_bilgisayarid.Text;
            connection.Open(); // 1-bağlantı aç
            command = new OleDbCommand(sql, connection);//2- Komut tanımlama
            dataReader = command.ExecuteReader();// 3- Komut çalıştırma
            if (dataReader.Read()) // böyle bir kayıt var mı?
            {
                tbx_bilgisayarid.Text = dataReader.GetValue(0).ToString(); // kitapid
                tbx_kategoriid.Text = dataReader.GetValue(1).ToString();
                cbx_marka.Text = dataReader.GetValue(2).ToString();
                tbx_model.Text = dataReader.GetValue(3).ToString();
                tbx_ramsayisi.Text = dataReader.GetValue(4).ToString();
                tbx_ramslotu.Text = dataReader.GetValue(5).ToString();
                cbx_ramtipi.Text = dataReader.GetValue(6).ToString();
                cbx_cpunesili.Text = dataReader.GetValue(7).ToString();
                cbx_cpumarkası.Text = dataReader.GetValue(8).ToString();
                tbx_cpumodeli.Text = dataReader.GetValue(9).ToString();
                cbx_gpumarkası.Text = dataReader.GetValue(10).ToString();
                tbx_gpumodeli.Text = dataReader.GetValue(11).ToString();
                tbx_ekranboyutu.Text = dataReader.GetValue(12).ToString();
                tbx_cozunurluk.Text = dataReader.GetValue(13).ToString();
                tbx_vram.Text = dataReader.GetValue(14).ToString();
                cbx_sdiskturu.Text = dataReader.GetValue(15).ToString();
                tbx_sdisksayisi.Text = dataReader.GetValue(16).ToString();
                cbx_sdiskboyutu.Text = dataReader.GetValue(17).ToString();
                tbx_aciklama.Text = dataReader.GetValue(18).ToString();
                cbx_pcturu.Text = dataReader.GetValue(19).ToString();
                cbx_isletimsistemi.Text = dataReader.GetValue(20).ToString();
                tbx_fiyat.Text = dataReader.GetValue(21).ToString();
                tbx_stoksayisi.Text = dataReader.GetValue(22).ToString();
                tbx_garantisuresi.Text = dataReader.GetValue(23).ToString();
                tbx_resim.Text = dataReader.GetValue(24).ToString();
                pcbox_resim.Image = Image.FromFile(dataReader.GetValue(24).ToString());

            }
            connection.Close(); // 4 - bağlantı kapat
        }

        public void temizle()
        {
            tbx_bilgisayarid.Text = "";
            tbx_kategoriid.Text = "";
            cbx_marka.Text = "";
            tbx_model.Text = "";
            tbx_ramsayisi.Text = "";
            tbx_ramslotu.Text = "";
            cbx_ramtipi.Text = "";
            cbx_cpunesili.Text = "";
            cbx_cpumarkası.Text = "";
            tbx_cpumodeli.Text = "";
            cbx_gpumarkası.Text = "";
            tbx_gpumodeli.Text = "";
            tbx_ekranboyutu.Text = "";
            tbx_cozunurluk.Text = "";
            tbx_vram.Text = "";
            cbx_sdiskturu.Text = "";
            tbx_sdisksayisi.Text = "";
            cbx_sdiskboyutu.Text = "";
            tbx_aciklama.Text = "";
            cbx_pcturu.Text = "";
            cbx_isletimsistemi.Text = "";
            tbx_fiyat.Text = "";
            tbx_stoksayisi.Text = "";
            tbx_garantisuresi.Text = "";
            tbx_resim.Text = "";
            pcbox_resim.Image = null;
        }
        private void btn_temizle_Click(object sender, EventArgs e)
        {
            temizle();

        }

        private void btn_guncelle_Click(object sender, EventArgs e)
        {
            guncelle();
        }
        public void guncelle()
        {
            string sql = "Update bilgisayar set "; 
               
            sql += "KategoriId='" + tbx_kategoriid.Text + "',";
            sql += "BilgisayarMarka='" + cbx_marka.Text + "',";
            sql += "BilgisayarModel='" + tbx_model.Text.Replace("'","''") + "',";
            sql += "BİlgisayarRam='" + tbx_ramsayisi.Text + "',";
            sql += "BilgisayarRamSlot='" + tbx_ramslotu.Text + "',";
            sql += "BilgisayarRamTipi='" + cbx_ramtipi.Text + "',";
            sql += "BilgisayarİşlemciNesili='" + cbx_cpunesili.Text + "',";
            sql += "BilgisayarİşlemciMarkası='" + cbx_cpumarkası.Text + "',";
            sql += "BilgisayarİşlemciModeli='" + tbx_cpumodeli.Text.Replace("'", "''") + "',";
            sql += "BilgisayarEkranKartıMarkası='" + cbx_gpumarkası.Text + "',";
            sql += "BilgisayarEkranKartıModeli='" + tbx_gpumodeli.Text.Replace("'", "''") + "',";
            sql += "BilgisayarEkranBoyutu='" + tbx_ekranboyutu.Text + "',";
            sql += "BilgisayarEkranÇözünürlüğü='" + tbx_cozunurluk.Text + "',";
            sql += "BilgisayarVRAM='" + tbx_vram.Text + "',";
            sql += "BilgisayarSabitDiskTürü='" + cbx_sdiskturu.Text + "',";
            sql += "BilgisayarSabitDiskMiktarı='" + tbx_sdisksayisi.Text + "',";
            sql += "BilgisayarSabitDiskBoyutu='" + cbx_sdiskboyutu.Text + "',";
            sql += "BilgisayarAçıklama='" + tbx_aciklama.Text.Replace("'", "''") + "',";
            sql += "BilgisayarTürü='" + cbx_pcturu.Text + "',";
            sql += "BilgisayarİşletimSistemi='" + cbx_isletimsistemi.Text + "',";
            sql += "BilgisayarFiyat='" + tbx_fiyat.Text + "',";
            sql += "BilgisayarStok='" + tbx_stoksayisi.Text + "',";
            sql += "BilgisayarGarantiSüresi='" + tbx_garantisuresi.Text + "',";
            sql += "BilgisayarResim='" + tbx_resim.Text + "' ";

            //sql = sql.Replace("'", "''");
            sql += " where BilgisayarId=" + tbx_bilgisayarid.Text; // güncelleme kriteri bilgisayarid

            connection.Open();
            command = new OleDbCommand(sql, connection);
            command.ExecuteNonQuery();
            connection.Close();
            fillDataGrid("select * from bilgisayar");

        }
    }
}
