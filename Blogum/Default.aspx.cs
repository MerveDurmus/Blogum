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
    public partial class Default : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdKategoriCek = new SqlCommand("SELECT dbo.Makaleler.makaleBaslik, dbo.Makaleler.makaleOzet,  dbo.Makaleler.makaleTarih, dbo.Makaleler.makaleId, dbo.Makaleler.makaleOkunma, dbo.Makaleler.makaleYorumSayi, dbo.Kategoriler.kategoriResim FROM dbo.Kategoriler INNER JOIN dbo.Makaleler ON dbo.Kategoriler.kategoriId = dbo.Makaleler.kategoriId order by makaleId desc", baglanti.baglan());
            SqlDataReader drKategoriCek = cmdKategoriCek.ExecuteReader();
            dl_makale.DataSource = drKategoriCek;
            dl_makale.DataBind();
            
        }
    }
}