using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Blogum.Admin
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }
            kategoriId = Request.QueryString["kategoriId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdkategoriGuncelle = new SqlCommand("Select * from Kategoriler where kategoriId='"+kategoriId+"'", baglanti.baglan());
                SqlDataReader drkategoriguncelle = cmdkategoriGuncelle.ExecuteReader();
                //KATEGORİID İLE GELEN BİLGİLERİ TABLOYA AKTARMA KOMUTLARI
                DataTable dtkategoriguncelle = new DataTable("tablo");
                dtkategoriguncelle.Load(drkategoriguncelle);

                DataRow row = dtkategoriguncelle.Rows[0];
                txt_KategoriAdi.Text = row["kategoriAd"].ToString();
                txt_KategoriSira.Text = row["kategoriSira"].ToString();
                txt_KategoriAdet.Text = row["kategoriAdet"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (fu_KategoriResim.HasFile)
            {//hasfile resim eklenmişse demek
                fu_KategoriResim.SaveAs(Server.MapPath("/KategoriResim/" + fu_KategoriResim.FileName));
                SqlCommand cmdkGuncelle = new SqlCommand("Update Kategoriler Set kategoriAd='"+txt_KategoriAdi.Text+"', kategoriSira='"+txt_KategoriSira.Text+"',kategoriAdet='"+txt_KategoriAdet.Text+"', kategoriResim='/KategoriResim/"+fu_KategoriResim.FileName+"' where kategoriId='"+kategoriId+"'", baglanti.baglan());
                cmdkGuncelle.ExecuteNonQuery();
                Response.Redirect("Kategoriler.aspx");
            }else
            {
                SqlCommand cmdguncelle = new SqlCommand("Update Kategoriler Set kategoriAd='"+txt_KategoriAdi.Text+"', kategoriSira='"+txt_KategoriSira.Text+"', kategoriAdet='"+txt_KategoriAdet.Text+"'where kategoriId='"+kategoriId+"'", baglanti.baglan());
                cmdguncelle.ExecuteNonQuery();
                Response.Redirect("Kategoriler.aspx");

            }
        }
    }
}