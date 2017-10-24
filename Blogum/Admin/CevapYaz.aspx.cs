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
    public partial class CevapYaz : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string makaleId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            makaleId = Request.QueryString["makaleId"];
            SqlCommand adminyorum = new SqlCommand("Insert into Yorumlar(yorumAdSoyad,yorumIcerik,yorumResim,makaleId) values('" + txt_yorumAdSoyad.Text + "','" + txt_yorumIcerik.Text + "','/Temalar/admin.png','" + makaleId + "')", baglanti.baglan());
            adminyorum.ExecuteNonQuery();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}