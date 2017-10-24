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
    public partial class MakaleGuncelle : System.Web.UI.Page
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
            makaleId = Request.QueryString["makaleId"];
            if (Page.IsPostBack==false)
            {
                SqlCommand cmdMGuncelle = new SqlCommand("Select * from Makaleler where makaleId='"+makaleId+"'",baglanti.baglan());
                SqlDataReader drMGuncelle = cmdMGuncelle.ExecuteReader();
                //MAKALEID İLE GELEN BİLGİLERİ TABLOYA AKTARMAK İÇİN DATATABLE KULLANACAĞIZ.
                DataTable dtMGuncelle=new DataTable("tablo");
                dtMGuncelle.Load(drMGuncelle);
                DataRow row = dtMGuncelle.Rows[0];
                txt_baslik.Text = row["makaleBaslik"].ToString();
                txt_ozet.Text = row["makaleOzet"].ToString();
                txt_makaleIcerik.Text = row["makaleIcerik"].ToString();
                txt_yorumSayisi.Text = row["makaleYorumSayi"].ToString();

            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmdMakaleGuncelle = new SqlCommand("Update Makaleler Set makaleBaslik='"+txt_baslik.Text+"', makaleOzet='"+txt_ozet.Text+"', makaleIcerik='"+txt_makaleIcerik.Text+"', makaleYorumSayi='"+txt_yorumSayisi.Text+"'where makaleId='"+makaleId+"'",baglanti.baglan());
                cmdMakaleGuncelle.ExecuteNonQuery();
            Response.Redirect("Makaleler.aspx");
            
        }
    }
}