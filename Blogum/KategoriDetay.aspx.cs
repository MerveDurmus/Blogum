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
    public partial class KategoriDetay : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];
            SqlCommand cmdkategori = new SqlCommand("SELECT dbo.Makaleler.makaleBaslik, dbo.Makaleler.makaleId, dbo.Makaleler.makaleOzet, dbo.Makaleler.makaleTarih, dbo.Makaleler.makaleOkunma, dbo.Makaleler.makaleYorumSayi, dbo.Kategoriler.kategoriResim, dbo.Kategoriler.kategoriId FROM dbo.Kategoriler INNER JOIN dbo.Makaleler ON dbo.Kategoriler.kategoriId = dbo.Makaleler.kategoriId where dbo.Kategoriler.kategoriId='" + kategoriId+"'", baglanti.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();
            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();

        }
    }
}