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
    public partial class Kategoriler : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string kategoriId = "";
        string islem = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Default.aspx");
            }

            //sayfalar arası bilgi aktarımı 
            kategoriId = Request.QueryString["kategoriId"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                SqlCommand cmdsil=new SqlCommand("Delete from Kategoriler where kategoriId='"+kategoriId+"'", baglanti.baglan());
                cmdsil.ExecuteNonQuery();

            }
            if (Page.IsPostBack == false)
            {
                pnl_KategoriEkle.Visible = false;
                pnl_KategoriDuzenle.Visible = false;
                
            }
            //KATEGORİLERİ DATALİSTE ÇEKME
            SqlCommand cmdkgetir = new SqlCommand("Select * from Kategoriler", baglanti.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();
            dl_kategoriDuzenle.DataSource = drkgetir;
            dl_kategoriDuzenle.DataBind();
        }
        


        protected void btn_kategoriEkleArtı_Click(object sender, EventArgs e)
        {
            pnl_KategoriEkle.Visible = true;
        }

        protected void btn_kategoriEkleEksi_Click(object sender, EventArgs e)
        {
            pnl_KategoriEkle.Visible = false;
        }

        protected void btn_kategoriKaydet_Click(object sender, EventArgs e)
        {
            if (fu_kategoriResim.HasFile)
            {
                fu_kategoriResim.SaveAs(Server.MapPath("/KategoriResim/" + fu_kategoriResim.FileName)); //eklediğimiz resmi ismiyle birlikte kategorireim içine kaydetmek
                SqlCommand cmdekle = new SqlCommand("insert into Kategoriler(kategoriAd,kategoriSira,kategoriResim) values('" + txt_KategoriAdi.Text + "','" + txt_Sira.Text + "','/KategoriResim/" + fu_kategoriResim.FileName + "')", baglanti.baglan());
                cmdekle.ExecuteNonQuery();
                Response.Redirect("Kategoriler.aspx");
            }else
            {
                btn_kategoriKaydet.Text = "resim ekleyiniz";
            }
        }


       

        protected void btn_kdEksi_Click(object sender, EventArgs e)
        {
            pnl_KategoriDuzenle.Visible = false;
        }

        protected void btn_kdArtı_Click(object sender, EventArgs e)
        {
            pnl_KategoriDuzenle.Visible = true;
        }
    }
}