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
    public partial class Blog_ekle : System.Web.UI.Page
    {


        string conf_baglanti = WebConfigurationManager.ConnectionStrings["İlac_NakliyesiConnectionString"].ConnectionString;
        DateTime bugun =DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            Lbltarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)//kaydetme alanı
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("INSERT INTO blog_ekle(id,Baslik,özet,Kategoriid,Blog_Resim,Blog_Detay,tarih) " +
                "VALUES(@id,@Baslik, @özet, @Kategoriid, @Blog_Resim,@Blog_Detay,@tarih)", baglanti);
            komut.Parameters.AddWithValue("@id", TextBox1.Text.ToString());
            komut.Parameters.AddWithValue("@Baslik", TxtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@özet", Txtözet.Text.ToString());
            komut.Parameters.AddWithValue("@Kategoriid", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@Blog_Resim", Label2.Text.ToString());
            komut.Parameters.AddWithValue("@Blog_Detay", Txtblogdetay.Text.ToString());
            komut.Parameters.AddWithValue("@tarih", bugun);
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Blog_ekle.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)//resim alanı
        {
            if (FileUpload1.HasFile)//RESİM VAR MI YOKMU ONU KONTROL EDİYORUM
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpg")
                {

                    string ResimAd = FileUpload1.FileName.ToString();//dosyanın ismini aldık
                    FileUpload1.SaveAs(Server.MapPath("~/resimlerim/blog/" + ResimAd));//resimi sunucuya yükleyelim
                    Label2.Text = ResimAd.ToString();
                }
                else
                {
                   Label2.Text = " lütfen bu jpg jpeg ve png uzantılarına uygun resim seciniz..";

                }

            }
            else
            {
                Label2.Text = " lütfen bu jpg jpeg ve png uzantılarına uygun resim seciniz..";

            }
        }
    }
}