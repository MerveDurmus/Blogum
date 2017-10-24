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
    public partial class Yorumlar : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string yorumId = "";
        string islem = "";
        string islem1 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }
            yorumId = Request.QueryString["yorumId"];
            islem = Request.QueryString["islem"];
            islem1 = Request.QueryString["islem1"];
           
            if (islem1 == "sil1")
            {
                SqlCommand cmdOnayliSil = new SqlCommand("Delete from Yorumlar where yorumId='" + yorumId + "'", baglanti.baglan());
                cmdOnayliSil.ExecuteNonQuery();
                Response.Redirect("Yorumlar.aspx");
            }
            if (islem == "sil")
            {
                SqlCommand cmdyorumsil = new SqlCommand("Delete from Yorumlar where yorumId='"+yorumId+"'",baglanti.baglan());
                cmdyorumsil.ExecuteNonQuery();
                Response.Redirect("Yorumlar.aspx");
            }
            if (Page.IsPostBack == false)
            {
                pnl_OnaysızYorum.Visible = false;
                pnl_onaylıYorum.Visible = false;
            }
           //onaysız yorumlar
            SqlCommand cmdyorum = new SqlCommand("SELECT dbo.Makaleler.makaleBaslik, dbo.Makaleler.makaleTarih, dbo.Makaleler.makaleYorumSayi, dbo.Yorumlar.yorumId, dbo.Yorumlar.yorumAdSoyad, dbo.Yorumlar.yorumEmail, dbo.Yorumlar.yorumIcerik, dbo.Yorumlar.yorumTarih, dbo.Yorumlar.yorumOnay, dbo.Yorumlar.yorumResim, dbo.Makaleler.makaleId FROM dbo.Makaleler INNER JOIN dbo.Yorumlar ON dbo.Makaleler.makaleId = dbo.Yorumlar.makaleId where yorumOnay =0", baglanti.baglan());
            SqlDataReader drYorum = cmdyorum.ExecuteReader();

            dl_yorum.DataSource = drYorum;
            dl_yorum.DataBind();

            //onaylı yorumlar
            SqlCommand cmdOnayli = new SqlCommand("SELECT dbo.Makaleler.makaleBaslik, dbo.Makaleler.makaleTarih, dbo.Makaleler.makaleYorumSayi, dbo.Yorumlar.yorumId, dbo.Yorumlar.yorumAdSoyad, dbo.Yorumlar.yorumEmail, dbo.Yorumlar.yorumIcerik, dbo.Yorumlar.yorumTarih, dbo.Yorumlar.yorumOnay, dbo.Yorumlar.yorumResim, dbo.Makaleler.makaleId FROM dbo.Makaleler INNER JOIN dbo.Yorumlar ON dbo.Makaleler.makaleId = dbo.Yorumlar.makaleId where yorumOnay =1", baglanti.baglan());
            SqlDataReader drOnayli = cmdOnayli.ExecuteReader();
            dl_yorumOnay.DataSource = drOnayli;
            dl_yorumOnay.DataBind();
        }

        protected void btn_onaysızYorumArtı_Click(object sender, EventArgs e)
        {
            pnl_OnaysızYorum.Visible = true;
        }

        protected void btn_onaysızYorumEksi_Click(object sender, EventArgs e)
        {
            pnl_OnaysızYorum.Visible = false;
        }

        protected void btn_onayArtı_Click(object sender, EventArgs e)
        {
            pnl_onaylıYorum.Visible = true;
        }

        protected void btonayEksi_Click(object sender, EventArgs e)
        {
            pnl_onaylıYorum.Visible = false;
        }
    }
}