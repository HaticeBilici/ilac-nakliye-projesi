using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

namespace webprojem.adminPaneli
{
    public partial class Galeri_Kategori : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["İlac_NakliyesiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("INSERT INTO Kategori_Galeri(id,Kategori_Adı) VALUES (@id,@Kategori_Adı)", baglanti);
            komut.Parameters.AddWithValue("@id", Textid.Text);
            komut.Parameters.AddWithValue("@Kategori_Adı", TextBox1.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Galeri_Kategori.aspx");
        }
    }
}