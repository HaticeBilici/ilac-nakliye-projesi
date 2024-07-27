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
   
    public partial class İlac_ekle : System.Web.UI.Page
    {


        string conf_baglanti = WebConfigurationManager.ConnectionStrings["İlac_NakliyesiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void BtnResimYükle_Click(object sender, EventArgs e)
        {
            //if (FileUpload1.HasFile)//RESİM VAR MI YOKMU ONU KONTROL EDİYORUM
            //{
            // if(FileUpload1.PostedFile.ContentType=="image/jpeg"|| FileUpload1.PostedFile.ContentType == "image/png"|| FileUpload1.PostedFile.ContentType == "image/jpg")
            //   {
                    
            //        string ResimAd = FileUpload1.FileName.ToString();//dosyanın ismini aldık
            //        FileUpload1.SaveAs(Server.MapPath("~/img/"+ ResimAd));//resimi sunucuya yükleyelim
            //        Llbresim.Text = ResimAd.ToString();
            //    }
            //    else
            //    {
            //        Llbresim.Text =" lütfen bu jpg jpeg ve png uzantılarına uygun resim seciniz..";
                   
            //    }

            //}
            //else
            //{
            //    Llbresim.Text =" lütfen bu jpg jpeg ve png uzantılarına uygun resim seciniz..";
               
            //}

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("INSERT INTO ilac_ekle(id,ilac_adı,mail_adresi,ilac_türü,sehir,Acıklama_detay) " +
                "VALUES(@id,@ilac_adı, @mail_adresi, @ilac_türü, @sehir, @Acıklama_detay)", baglanti);
            komut.Parameters.AddWithValue("@id", Txtid.Text);
            komut.Parameters.AddWithValue("@ilac_adı", TxtAd.Text);
            komut.Parameters.AddWithValue("@mail_adresi", Txtyer.Text);
            komut.Parameters.AddWithValue("@ilac_türü", Txttür.Text);
            komut.Parameters.AddWithValue("@sehir", Txtsehir.Text);
            komut.Parameters.AddWithValue("@Acıklama_detay", Txtdetay.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("İlac_ekle.aspx");
        }
    }
}