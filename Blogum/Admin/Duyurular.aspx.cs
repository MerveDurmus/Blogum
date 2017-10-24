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
    public partial class Duyurular : System.Web.UI.Page
    {
        string duyuruId = "";
        string islem = "";

        Veritabani baglanti = new Veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            //session oturum yönetimi
            if (Session["yoneticiKullanici"] == null)//oturum açmadan makaleler sayfasına gitmek istediğimde beni oturum açma sayfasına yönlendirir.
            {
                Response.Redirect("Duyurular.aspx");
            }
            duyuruId = Request.QueryString["duyuruId"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                SqlCommand cmdDuyuruSil = new SqlCommand("Delete from Duyurular where duyuruId='"+duyuruId+"'", baglanti.baglan());
                cmdDuyuruSil.ExecuteNonQuery();
            }
            if (Page.IsPostBack == false)
            {
                pnl_duyuruEkle.Visible = false;
                pnl_dDuzenle.Visible = false;
            }
            SqlCommand cmdDuyuruGetir = new SqlCommand("Select * from Duyurular", baglanti.baglan());
            SqlDataReader drDuyurugetir = cmdDuyuruGetir.ExecuteReader();
            dl_duyuruDuzenle.DataSource = drDuyurugetir;
            dl_duyuruDuzenle.DataBind();

        }

        protected void btn_duyuruEkleArtı_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = true;
        }

        protected void btn_duyuruEkleEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = false;
        }

        protected void btn_duyuruEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdDuyuruEkle = new SqlCommand("insert into Duyurular(duyuruBaslik,duyuruIcerik,duyuruResim) values('"+txt_duyuruBaslik.Text+"','"+txt_duyuruIcerik.Text+"','/Temalar/duyuru.png')", baglanti.baglan());
            cmdDuyuruEkle.ExecuteNonQuery();
            Response.Redirect("Duyurular.aspx");
        }

        protected void btn_dDuzenleArtı_Click(object sender, EventArgs e)
        {
            pnl_dDuzenle.Visible = true;
        }

        protected void btn_dDuzenleEksi_Click(object sender, EventArgs e)
        {
            pnl_dDuzenle.Visible = false;
        }
    }
}