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
    public partial class kullanici : System.Web.UI.MasterPage
    {
        Veritabani baglanti = new Veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            //SLIDER
            SqlCommand cmdSlider = new SqlCommand("Select TOP 5 * from Makaleler order by makaleOkunma desc ", baglanti.baglan());
            SqlDataReader drSlider = cmdSlider.ExecuteReader();
            dl_slider.DataSource = drSlider;
            dl_slider.DataBind();
            //DUYURULAR
            //en yeni 5 duyuruyu getir
            SqlCommand cmdDuyuruCek = new SqlCommand("Select TOP 5 *from Duyurular order by duyuruId desc", baglanti.baglan());
            SqlDataReader drduyuruCek = cmdDuyuruCek.ExecuteReader();
            dl_duyuru.DataSource = drduyuruCek;
            dl_duyuru.DataBind();
            //KATEGORİLER
            SqlCommand cmdKategoriCek = new SqlCommand("Select *from Kategoriler",baglanti.baglan());
            SqlDataReader drKategoriCek = cmdKategoriCek.ExecuteReader();
            dl_Kategori.DataSource = drKategoriCek;
            dl_Kategori.DataBind();
        }

        protected void btn_ara_Click(object sender, EventArgs e)
        {
            Response.Redirect("MakaleAra.aspx?aranankelime=" + txt_ara.Text  );
        }
    }
}