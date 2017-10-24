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
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string duyuruId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }
            duyuruId = Request.QueryString["duyuruId"];
            if (Page.IsPostBack == false){
                SqlCommand cmdduyuruGetir = new SqlCommand("Select * from Duyurular where duyuruId='"+duyuruId+"'",baglanti.baglan());
                SqlDataReader drDuyuruGetir = cmdduyuruGetir.ExecuteReader();

                DataTable dtduyuruGetir = new DataTable("tablo");
                dtduyuruGetir.Load(drDuyuruGetir);

                DataRow row = dtduyuruGetir.Rows[0];
                txt_duyuruBaslik.Text = row["duyuruBaslik"].ToString();
                txt_duyuruIcerik.Text = row["duyuruIcerik"].ToString();

            }
        }

        protected void btnduyuruGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdduyuruGuncelle = new SqlCommand("Update Duyurular Set duyuruBaslik='"+txt_duyuruBaslik.Text+"',duyuruIcerik='"+txt_duyuruIcerik.Text+"'where duyuruId='"+duyuruId+"'",baglanti.baglan());
            cmdduyuruGuncelle.ExecuteNonQuery();
            Response.Redirect("Duyurular.aspx");
        }
    }
}