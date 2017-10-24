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
    public partial class MakaleAra : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        string aranankelime = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            aranankelime = Request.QueryString["aranankelime"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdara = new SqlCommand("SELECT dbo.Makaleler.makaleBaslik, dbo.Makaleler.makaleOzet, dbo.Makaleler.makaleIcerik, dbo.Makaleler.makaleTarih, dbo.Makaleler.makaleId, dbo.Makaleler.makaleOkunma, dbo.Makaleler.makaleYorumSayi, dbo.Kategoriler.kategoriResim FROM dbo.Kategoriler INNER JOIN dbo.Makaleler ON dbo.Kategoriler.kategoriId = dbo.Makaleler.kategoriId where makaleBaslik like '%" + aranankelime+"%' or makaleOzet like'%"+aranankelime+"%' or makaleIcerik like '%"+aranankelime+"%'", baglanti.baglan());
                SqlDataReader drara = cmdara.ExecuteReader();
                dl_ara.DataSource = drara;
                dl_ara.DataBind();
            }
        }
    }
}