using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.Services.Description;

namespace ComputerSalesSystemm
{
    public partial class BilgisayarIslemleri : System.Web.UI.Page
    {
        // VERİTABANI LİSTELERİ
        OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\bilgisayarsatis.accdb");
        OleDbCommand command; // sql kommutları çalıştırmak için
        OleDbDataAdapter adapter; // tablodan gelen bilgileri tutar
        OleDbDataReader reader; // tablodan gelen verileri satır satır okur
        DataTable dataTable; // tablodan gelen verileri tutar/listview doldurmak için

        // DİNAMİK LİSTVİEW DOLDURMA
        public void connectionOpen()
        {
            connection.Open();
        }
        public void fillListView(string sql)
        {
            dataTable = new DataTable(); // veritablosu temizlendi(referans yenilendi)-
            adapter = new OleDbDataAdapter(sql, connection); // sql çalıştır gelen veriler tutulur
            adapter.Fill(dataTable); //  veritutucu daki bilgiler varitablosuna dolduruldu
            ListView1.DataSource = dataTable; // veritablosundaki verileri listview e yüklendi
            ListView1.DataBind(); // tablodan gelen bilgiler listview1 de gösteriliyor
            connection.Close();

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            //// dinamik ListView1 doldurma
            connectionOpen();// bağlantı açıldı
            fillListView("Select * from bilgisayar");
        }

        public void clear()
        {
            fillListView("Select * from bilgisayar");
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList2.Text = "";
            DropDownList3.Text = "";
            DropDownList4.Text = "";
            TextBox6.Text = "";
            DropDownList5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            DropDownList6.Text = "";
            TextBox11.Text = "";
            DropDownList8.Text = "";
            TextBox16.Text = "";
            DropDownList7.Text = "";
            DropDownList9.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            Image1.ImageUrl = "";
        }

        protected void btn_temizle_Click(object sender, EventArgs e)
        {
            clear();
        }

        public void fillBox()
        {
            string sql = "select * from bilgisayar where bilgisayarId = " + TextBox1.Text + "";
            connectionOpen();// bağlantı açıldı
            command = new OleDbCommand(sql, connection); // komut tanımlama
            reader = command.ExecuteReader(); // komut çalıştırma, gelen bilgi veriokucuyu
            if (reader.Read()) // eğer böyle bir kayıt var ise
            {
                TextBox1.Text = reader.GetValue(0).ToString();
                TextBox2.Text = reader.GetValue(1).ToString();
                DropDownList1.Text = reader.GetValue(2).ToString(); // marka
                TextBox3.Text = reader.GetValue(3).ToString();
                TextBox4.Text = reader.GetValue(4).ToString();
                TextBox5.Text = reader.GetValue(5).ToString();
                DropDownList2.Text = reader.GetValue(6).ToString();
                DropDownList3.Text = reader.GetValue(7).ToString();
                DropDownList4.Text = reader.GetValue(8).ToString();
                TextBox6.Text = reader.GetValue(9).ToString();
                DropDownList5.Text = reader.GetValue(10).ToString();
                TextBox7.Text = reader.GetValue(11).ToString();
                TextBox8.Text = reader.GetValue(12).ToString();
                TextBox9.Text = reader.GetValue(13).ToString();
                TextBox10.Text = reader.GetValue(14).ToString();
                DropDownList6.Text = reader.GetValue(15).ToString();
                TextBox11.Text = reader.GetValue(16).ToString();
                DropDownList8.Text = reader.GetValue(17).ToString();
                TextBox16.Text = reader.GetValue(18).ToString();
                DropDownList7.Text = reader.GetValue(19).ToString();
                DropDownList9.Text = reader.GetValue(20).ToString();
                TextBox12.Text = reader.GetValue(21).ToString();
                TextBox13.Text = reader.GetValue(22).ToString();
                TextBox14.Text = reader.GetValue(23).ToString();
                
                Image1.ImageUrl = reader.GetValue(24).ToString();
                fillListView(sql);
            }
            connection.Close();
        }

        protected void btn_doldur_Click(object sender, EventArgs e)
        {
            // verigösterme işlemi
            fillBox();
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            add();
            clear();
        }
        public void add()
        {
            //veri ekleme işlemi
            string sql = "insert into bilgisayar  " +
                "(KategoriId,BilgisayarMarka,BilgisayarModel,BİlgisayarRam,BilgisayarRamSlot,BilgisayarRamTipi,BilgisayarİşlemciNesili," +
                "BilgisayarİşlemciMarkası,BilgisayarİşlemciModeli,BilgisayarEkranKartıMarkası,BilgisayarEkranKartıModeli,BilgisayarEkranBoyutu," +
                "BilgisayarEkranÇözünürlüğü,BilgisayarVRAM,BilgisayarSabitDiskTürü,BilgisayarSabitDiskMiktarı,BilgisayarSabitDiskBoyutu," +
                "BilgisayarAçıklama,BilgisayarTürü,BilgisayarİşletimSistemi,BilgisayarFiyat,BilgisayarStok,BilgisayarGarantiSüresi,BilgisayarResim)" +
                "values (@kategoriid,@marka,@model,@ram,@slot,@tip,@nesil,@imarka,@imodel,@emarka,@emodel,@ekranboyut,@cözünürlük,@vram," +
                "@diskturu,@diskmiktar,@diskboyut,@aciklama,@türü,@isistemi,@fiyat,@stok,@garanti,@resim)";
            command = new OleDbCommand(sql, connection);
            command.Parameters.AddWithValue("kategoriid", TextBox2.Text);
            command.Parameters.AddWithValue("marka", DropDownList1.Text);
            command.Parameters.AddWithValue("model", TextBox3.Text);
            command.Parameters.AddWithValue("ram", TextBox4.Text);
            command.Parameters.AddWithValue("slot", TextBox5.Text);
            command.Parameters.AddWithValue("tip", DropDownList2.Text);
            command.Parameters.AddWithValue("nesil", DropDownList3.Text);
            command.Parameters.AddWithValue("imarka", DropDownList4.Text);
            command.Parameters.AddWithValue("imodel", TextBox6.Text);
            command.Parameters.AddWithValue("emarka", DropDownList5.Text);
            command.Parameters.AddWithValue("emodel", TextBox7.Text);
            command.Parameters.AddWithValue("ekranboyut", TextBox8.Text);
            command.Parameters.AddWithValue("cözünürlük", TextBox9.Text);
            command.Parameters.AddWithValue("vram", TextBox10.Text);
            command.Parameters.AddWithValue("diskturu", DropDownList6.Text);
            command.Parameters.AddWithValue("diskmiktar", TextBox11.Text);
            command.Parameters.AddWithValue("diskboyut", DropDownList8.Text);
            command.Parameters.AddWithValue("aciklama", TextBox16.Text);
            command.Parameters.AddWithValue("türü", DropDownList7.Text);
            command.Parameters.AddWithValue("isistemi", DropDownList9.Text);
            command.Parameters.AddWithValue("fiyat", TextBox12.Text);
            command.Parameters.AddWithValue("stok", TextBox13.Text);
            command.Parameters.AddWithValue("garanti", TextBox14.Text);
            command.Parameters.AddWithValue("resim", "Resim/" + FileUpload1.FileName);
            connectionOpen();
            command.ExecuteNonQuery();
            connection.Close();
        }

        protected void btn_sil_Click(object sender, EventArgs e)
        {
            delete();
            clear();
        }
        public void delete()
        {
            string sql = "delete from bilgisayar where BilgisayarId = " + TextBox1.Text + "";
            connectionOpen();
            command = new OleDbCommand(sql, connection);
            command.ExecuteNonQuery();
            connection.Close();
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            update();
            clear();
        }
        public void update()
        {
            string sql = "Update bilgisayar set ";

            sql += "KategoriId='" + TextBox2.Text + "',";
            sql += "BilgisayarMarka='" + DropDownList1.Text + "',";
            sql += "BilgisayarModel='" + TextBox3.Text.Replace("'", "''") + "',";
            sql += "BİlgisayarRam='" + TextBox4.Text + "',";
            sql += "BilgisayarRamSlot='" + TextBox5.Text + "',";
            sql += "BilgisayarRamTipi='" + DropDownList2.Text + "',";
            sql += "BilgisayarİşlemciNesili='" + DropDownList3.Text + "',";
            sql += "BilgisayarİşlemciMarkası='" + DropDownList4.Text + "',";
            sql += "BilgisayarİşlemciModeli='" + TextBox6.Text.Replace("'", "''") + "',";
            sql += "BilgisayarEkranKartıMarkası='" + DropDownList5.Text + "',";
            sql += "BilgisayarEkranKartıModeli='" + TextBox7.Text.Replace("'", "''") + "',";
            sql += "BilgisayarEkranBoyutu='" + TextBox8.Text + "',";
            sql += "BilgisayarEkranÇözünürlüğü='" + TextBox9.Text + "',";
            sql += "BilgisayarVRAM='" + TextBox10.Text + "',";
            sql += "BilgisayarSabitDiskTürü='" + DropDownList6.Text + "',";
            sql += "BilgisayarSabitDiskMiktarı='" + TextBox11.Text + "',";
            sql += "BilgisayarSabitDiskBoyutu='" + DropDownList9.Text + "',";
            sql += "BilgisayarAçıklama='" + TextBox16.Text.Replace("'", "''") + "',";
            sql += "BilgisayarTürü='" + DropDownList7.Text + "',";
            sql += "BilgisayarİşletimSistemi='" + DropDownList9.Text + "',";
            sql += "BilgisayarFiyat='" + TextBox12.Text + "',";
            sql += "BilgisayarStok='" + TextBox13.Text + "',";
            sql += "BilgisayarGarantiSüresi='" + TextBox14.Text + "',";
            sql += "BilgisayarResim='" + FileUpload1.FileName + "' ";

            //sql = sql.Replace("'", "''");
            sql += " where BilgisayarId=" + TextBox1.Text; // güncelleme kriteri bilgisayarid

            connection.Open();
            command = new OleDbCommand(sql, connection);
            command.ExecuteNonQuery();
            connection.Close();
            fillListView("Select * from bilgisayar");


        }
    }
}