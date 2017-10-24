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
    public partial class Iletisim : System.Web.UI.Page
    {
        Veritabani baglanti = new Veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_yorumEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdMesaj = new SqlCommand("Insert into Iletisim (iletisimAdSoyad,iletisimEmail,iletisimIcerik) values('"+txt_adSoyad.Text+"','"+txt_email.Text+"','"+txt_yorumIcerik.Text+"')", baglanti.baglan());
            cmdMesaj.ExecuteNonQuery();
            txt_adSoyad.Text = "";
            txt_email.Text = "";
            txt_yorumIcerik.Text = "";
            lbl_bilgi.Text = "Mesajınız alınmıştır.";

        }
    }
}