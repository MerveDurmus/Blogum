using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Blogum.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani(); //bağlantı metodu
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btn_girisYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Yonetici where yoneticiKullanici='" + txt_kullanici.Text + "'and yoneticiSifre='" + txt_sifre.Text + "'", baglanti.baglan());
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["yoneticiKullanici"] = oku["yoneticiKullanici"];
                Response.Redirect("Makaleler.aspx");
            }
            else
            {
                lbl_bilgi.Text = "Böyle bir yönetici sistemimizde mevcut değildir lütfen giriş bilgilerinizi kontrol edip yeniden deneyiniz.!";
            }
        }
    }
}