using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
namespace webprojem
{
    public partial class login_paneli : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["İlac_NakliyesiConnectionString"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Sayfaya öncelikli olarak System.Data.SqlClient kütüphanesi eklenmelidir.

                SqlConnection baglanti = new SqlConnection(conf_baglanti);
                //Projemize bağlanacağımız veritabanını tanıtmak için Connection Strings komutu kullanılır. 
                //Data Source=DESKTOP-7RH85OG -->DESKTOP-7RH85OG yerine sqlserver'daki servername kullanın. 
                //Initial Catalog=lisansustukayit -->veritabanınızın ismini kullanın.

                baglanti.Open();
                //veritabanı bağlantısı açıldı.

                SqlCommand komut = new SqlCommand("select * from login_panelim where Kullanici_Adi=@Kullanici_Adi and Sifre=@Sifre", baglanti);
                //komut nesnesini ekledik ve SQL komutunu oluşturduk. SQL komutundan sonra db nesnesini eklemeyi unutmayalım.
                //TBLadmin yerine sizin kendi tablonunuzu kullanın.

                komut.Parameters.AddWithValue("@Kullanici_Adi", Txtuser.Text.ToString());
                komut.Parameters.AddWithValue("@Sifre", Txtsifre.Text.ToString());
                //textbox'daki değerleri @kullaniciadi ve @sifre parametrelerine atandı

                SqlDataReader oku;
                oku = komut.ExecuteReader();
                if (oku.Read())
                {
                    Session["Kullanici"] = oku["Kullanici_Adi"].ToString();
                    Response.Redirect("~/adminPaneli/Default_admin.aspx");
                }
                
                oku.Close();
                baglanti.Close();
                baglanti.Dispose();
            }
            catch (Exception)
            {
                Response.Write("Bağlantı hatası!");
                //veritabanına bağlanmazsa uyarı verildi.
            }

        }

        

        
    }
}