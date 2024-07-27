using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace webprojem.adminPaneli
{
    public partial class Hakkımızda_admin : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["İlac_NakliyesiConnectionString"].ConnectionString;

        public object Txtid { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)//yükle
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select *from kurumsal ", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            Label1.Text = tablo.Rows[0]["id"].ToString();
            Textbaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            Textözet.Text = tablo.Rows[0]["özet"].ToString();
            Textdetay.Text = tablo.Rows[0]["detay"].ToString();
            baglanti.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)//güncelle
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update kurumsal set Baslik=@Baslik,özet=@özet,detay=@detay where id=@id ", baglanti);
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());
            komut.Parameters.AddWithValue("@Baslik", Textbaslik.Text.ToString());
            komut.Parameters.AddWithValue("@özet", Textözet.Text.ToString());
            komut.Parameters.AddWithValue("@detay", Textdetay.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Hakkımızda_admin.aspx");
        }
    }
}