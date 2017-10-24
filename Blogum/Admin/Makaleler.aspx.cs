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
    public partial class Makaleler : System.Web.UI.Page
    {
        string islem = "";
        string makaleId = "";
        Veritabani baglanti = new Veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }
            //sayfalar arası bilgi aktarımı
            makaleId = Request.QueryString["makaleId"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                SqlCommand cmdMSil = new SqlCommand("Delete from Makaleler where makaleId='"+makaleId+"'", baglanti.baglan());
                cmdMSil.ExecuteNonQuery();
            }
            if (Page.IsPostBack == false)
            {
                pnl_makaleGuncelle.Visible = false;
                pnl_MakaleEkle.Visible = false;
                pnl_makaleDosya.Visible = false;
                //Kategorileri Getir
                SqlCommand cmdkGetir = new SqlCommand("Select *from Kategoriler", baglanti.baglan());
                SqlDataReader drkGetir = cmdkGetir.ExecuteReader();
                ddl_kategori.DataTextField = "kategoriAd";
                ddl_kategori.DataValueField = "kategoriId";
                ddl_kategori.DataSource = drkGetir;
                ddl_kategori.DataBind();

            }
            // makaleleri dataliste çekme
            SqlCommand cmdMGetir = new SqlCommand("Select * from Makaleler",baglanti.baglan());
            SqlDataReader drMGetir = cmdMGetir.ExecuteReader();
            dl_makale.DataSource = drMGetir;
            dl_makale.DataBind();
        }

        protected void btn_makaleEkleArtı_Click(object sender, EventArgs e)
        {
            pnl_MakaleEkle.Visible = true;
        }

        protected void btn_makaleEkleEksi_Click(object sender, EventArgs e)
        {
            pnl_MakaleEkle.Visible = false;
        }

        protected void btn_makaleEkle_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile == true)
            {
                fu_slider.SaveAs(Server.MapPath("/sResim/" + fu_slider.FileName));
                SqlCommand cmdMakaleEkle = new SqlCommand("Insert into Makaleler(makaleBaslik,makaleOzet,makaleIcerik,makaleResim,kategoriId) values('"+txt_makaleBaslik.Text+"','"+txt_makaleOzet.Text+"','"+txt_makaleIcerik.Text+ "','/sResim/" + fu_slider.FileName + "','"+ddl_kategori.SelectedValue+"') ", baglanti.baglan());
                cmdMakaleEkle.ExecuteNonQuery();
                //makale eklendiğinde o kategorideki adet güncellemesi için 
                SqlCommand cmdAdet = new SqlCommand("Update Kategoriler Set kategoriAdet=kategoriAdet+1 where kategoriId='"+ddl_kategori.SelectedValue+"'",baglanti.baglan());
                cmdAdet.ExecuteNonQuery();

                Response.Redirect("Makaleler.aspx");
            }
            else
            {
                btn_makaleEkle.Text = "Resim Ekleyiniz!!";

            }
        }

        protected void btn_makaleGuncelleArtı_Click(object sender, EventArgs e)
        {
            pnl_makaleGuncelle.Visible = true;
        }

        protected void btn_MakaleGuncelleEksi_Click(object sender, EventArgs e)
        {
            pnl_makaleGuncelle.Visible = false;
        }

        protected void btn_makaleDosyaArtı_Click(object sender, EventArgs e)
        {
            pnl_makaleDosya.Visible = true;
        }

        protected void btnmakaleDosyaEksi_Click(object sender, EventArgs e)
        {
            pnl_makaleDosya.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (fu_makaleDosya.HasFile)
            {
                fu_makaleDosya.SaveAs(Server.MapPath("/Dosyalar/" + fu_makaleDosya.FileName));
                Response.Redirect("Makaleler.aspx");
            }else
            {
                Button1.Text = "Dosya seçiniz";
            }
        }
    }
}