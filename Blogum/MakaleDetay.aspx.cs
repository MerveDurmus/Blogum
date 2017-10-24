using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Blogum
{
    public partial class MakaleDetay : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string makaleId="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                //makale getiren kodlar
                makaleId = Request.QueryString["makaleId"];
                SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makaleler.makaleBaslik, dbo.Makaleler.makaleIcerik, dbo.Makaleler.makaleId, dbo.Makaleler.makaleTarih, dbo.Makaleler.makaleOkunma, dbo.Makaleler.makaleYorumSayi, dbo.Kategoriler.kategoriResim, dbo.Kategoriler.kategoriId FROM dbo.Kategoriler INNER JOIN dbo.Makaleler ON dbo.Kategoriler.kategoriId = dbo.Makaleler.kategoriId where dbo.Makaleler.makaleId='" + makaleId + "'", baglanti.baglan());
                SqlDataReader drmakale = cmdmakale.ExecuteReader();

                dl_makale.DataSource = drmakale;
                dl_makale.DataBind();

                //okunma sayısını arttıran kodlar
                SqlCommand cmdokunmaSayısı = new SqlCommand("Update Makaleler Set makaleOkunma=makaleOkunma+1 where makaleId='"+makaleId+"'", baglanti.baglan());
                cmdokunmaSayısı.ExecuteNonQuery();

                //yorumu makale detay sayfamızda gösterme
                SqlCommand cmdgetir = new SqlCommand("Select * from Yorumlar where makaleId='"+makaleId+"' and yorumOnay=1", baglanti.baglan());
                SqlDataReader drgetir = cmdgetir.ExecuteReader();
                dl_yorumGoster.DataSource = drgetir;
                dl_yorumGoster.DataBind();


            }
        }

        protected void btn_yorumEkle_Click(object sender, EventArgs e)
        {
            makaleId = Request.QueryString["makaleId"];

            SqlCommand cmdyorumEkle = new SqlCommand("Insert into Yorumlar (yorumAdSoyad,yorumEmail,yorumIcerik,yorumResim,makaleId) values('"+txt_adSoyad.Text+"','"+txt_email.Text+"','"+txt_yorumIcerik.Text+"','/Temalar/yorumcu.png','"+makaleId+"')", baglanti.baglan());
            cmdyorumEkle.ExecuteNonQuery();
            lbl_bilgi.Text = "Yorumunuz alındı.";
            txt_yorumIcerik.Text = "";
            txt_email.Text = "";
            txt_adSoyad.Text = "";
        }
    }
}