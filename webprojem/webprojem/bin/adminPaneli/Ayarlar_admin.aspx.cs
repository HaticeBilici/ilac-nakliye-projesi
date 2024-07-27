using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace webprojem.adminPaneli
{
   
    public partial class Ayarlar_admin : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["İlac_NakliyesiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button2_Click(object sender, EventArgs e)//güncelle
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update Ayarlar set E_Mail=@E_Mail,Telefon=@Telefon,Facebook=@Facebook,Twitter=@Twitter,Linkedin=@Linkedin,Instagram=@Instagram,Youtube=@Youtube,Adres=@Adres,Acıklama=@Acıklama where id=@id ", baglanti);
            komut.Parameters.AddWithValue("@id", TextBox1.Text.ToString());
            komut.Parameters.AddWithValue("@E_Mail", Txt_email.Text.ToString());
            komut.Parameters.AddWithValue("@Telefon", Txttelefon.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", TxtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", TxtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Linkedin", TxtLinkedin.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", TxtInstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", TxtYoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", TextBox2.Text.ToString());
            komut.Parameters.AddWithValue("@Acıklama",Txtblogdetay.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar_admin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)//yükle
        {
            
        }

        protected void Button3_Click1(object sender, EventArgs e)//yükle
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select *from ayarlar ", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            TextBox1.Text = tablo.Rows[0]["id"].ToString();
            Txt_email.Text = tablo.Rows[0]["E_Mail"].ToString();
            Txttelefon.Text = tablo.Rows[0]["Telefon"].ToString();
            TxtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            TxtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            TxtLinkedin.Text = tablo.Rows[0]["Linkedin"].ToString();
            TxtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            TxtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            TextBox2.Text = tablo.Rows[0]["Adres"].ToString();
            Txtblogdetay.Text = tablo.Rows[0]["Acıklama"].ToString();
            
            baglanti.Close();
        }
    }
}