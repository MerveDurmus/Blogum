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
    public partial class YorumOnayGuncelle : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string yorumId = "";
        string makaleId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }
            yorumId = Request.QueryString["yorumId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmdyorumGetir = new SqlCommand("Select * from Yorumlar where yorumId='" + yorumId + "'", baglanti.baglan());
                SqlDataReader dryorumGetir = cmdyorumGetir.ExecuteReader();

                DataTable dtyorumGetir = new DataTable("tablo");
                dtyorumGetir.Load(dryorumGetir);

                DataRow row = dtyorumGetir.Rows[0];
                txt_AdSoyad.Text = row["yorumAdSoyad"].ToString();
                txt_Yorum.Text = row["yorumIcerik"].ToString();

            }


        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            makaleId = Request.QueryString["makaleId"];

            SqlCommand cmdyorumGuncelle = new SqlCommand("Update Yorumlar set yorumAdSoyad='" + txt_AdSoyad.Text + "',yorumIcerik='" + txt_Yorum.Text + "', yorumOnay='" + cb_onay.Checked + "' where yorumId='" + yorumId + "' ", baglanti.baglan());
            cmdyorumGuncelle.ExecuteNonQuery();

            if (cb_onay.Checked == true) {
                SqlCommand cmdyorumsayi = new SqlCommand("Update Makaleler Set makaleYorumSayi=makaleYorumSayi+1 where makaleId='" + makaleId + "'", baglanti.baglan());
                cmdyorumsayi.ExecuteNonQuery();
                Response.Redirect("Yorumlar.aspx");
            }
            if (cb_onay.Checked == false)
            {
                SqlCommand cmdYorumSayiGuncelle = new SqlCommand("Update Makaleler Set makaleYorumSayi=makaleYorumSayi-1 where makaleId='" + makaleId + "'", baglanti.baglan());
                cmdYorumSayiGuncelle.ExecuteNonQuery();
                Response.Redirect("Yorumlar.aspx");

            }
            
            

        }
    }
}