using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Blogum
{
    public class Veritabani
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=MERVE-PC;Initial Catalog=BlogumDb;Integrated Security=True");
            baglanti.Open();
            SqlConnection.ClearPool(baglanti);// bağlantı stringlerinin çoğalmasından dolayı onları siler
            SqlConnection.ClearAllPools();
            return baglanti;
        }
    }
}