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
    public partial class Mesajlar : System.Web.UI.Page
    {
        string iletisimId = "";
        string islem = "";
        Veritabani baglanti = new Veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }
            iletisimId = Request.QueryString["iletisimId"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                SqlCommand cmdmesajsil = new SqlCommand("Delete from Iletisim where iletisimId='"+iletisimId+"'",baglanti.baglan());
                cmdmesajsil.ExecuteNonQuery();
                Response.Redirect("Mesajlar.aspx");
            }
            if (Page.IsPostBack == false)
            {
                pnl_mesaj.Visible = false;
            }
            SqlCommand cmdmesajGetir = new SqlCommand("Select * from Iletisim ",baglanti.baglan());
            SqlDataReader drmesajGetir = cmdmesajGetir.ExecuteReader();
            dl_mesaj.DataSource = drmesajGetir;
            dl_mesaj.DataBind();

            
        }

        protected void btn_mesajArtı_Click(object sender, EventArgs e)
        {
            pnl_mesaj.Visible = true;
        }

        protected void btn_mesajEksi_Click(object sender, EventArgs e)
        {
            pnl_mesaj.Visible = false;
        }
    }
}