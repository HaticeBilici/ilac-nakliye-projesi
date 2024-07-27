<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="webprojem.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron jumbotron-fluid mb-5 ">
        <div class="container text-center py-5">
            <h1 class="text-white mb-4">Hızlı & Güvenilir</h1>
            
            <div class="mx-auto" style="width: 100%; max-width: 600px;">
               
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5 pb-4 pb-lg-0">
                    <img class="img-fluid w-100" src="img/araba.jpg" alt="">
                    <div class="bg-success text-dark text-center p-4">
                        <h3 class="m-0">İLAÇ VE TIBBİ MALZEME TAŞINMASI</h3>
                    </div>
                </div>
                <div class="col-lg-7">
                    <h6 class="text-success text-uppercase font-weight-bold">About Us</h6>
                    <h1 class="mb-4">Güvenilir ve Daha Hızlı Lojistik Nakliye Sağlayıcı</h1>
                    <p class="mb-4">Deneyimli çalışanlarımız, mevcut teslimat şemalarını optimize ederek, müşterinin talepleri ve yükün özelliklerini de dikkate alarak bireysel lojistik çözümleri geliştirir. AsstrA, ulaşım coğrafyası neresi olursa olsun, malların nakliyesini, belirlenen şartlara tam uyarak hayata geçirmektedir. Güvenilir ulaşım şirketleri ile işbirliğimiz sayesinde, esnek bir fiyat politikası yürütmeyi ve İsviçre kalitesinde hizmet vermeyi başarabiliyoruz.</p>
                </div>
            </div>
        </div>
        
        
        
        

         
        <div class="container-fluid bg-secondary my-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 py-5 py-lg-0">
                    <h6 class="text-success text-uppercase font-weight-bold">Get A Quote</h6>
                    <h1 class="mb-4">İlaç Saklama Koşulları</h1>
                    <p class="mb-4">Ürünlerin, ilaçların saklama koşulları düzenli yapılan stabilite testleri ile belirlenir. Ambalaj malzemesi üzerinde de belirtilmesi zorunludur.

Saklama koşul ve ortamları 4 gruptan oluşur. Bu ortamlar, oda sıcaklığı, serin yer, buzdolabı ve derin dondurucu olarak adlandırılır.</p>
                   
                </div>
                <div class="col-lg-5">
                    <div class="bg-success py-5 px-4 px-sm-5">
                        <form class="py-5">
                            <div class="form-group">
                                <input type="text" class="form-control border-0 p-4" placeholder="Your Name" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-0 p-4" placeholder="Your Email" required="required" />
                            </div>
                            <div class="form-group">
                                <select class="custom-select border-0 px-4" style="height: 47px;">
                                    <option selected>Select A Service</option>
                                    <option value="1">Service 1</option>
                                    <option value="2">Service 1</option>
                                    <option value="3">Service 1</option>
                                </select>
                            </div>
                            <div>
                                <button class="btn btn-dark btn-block border-0 py-3" type="submit">Get A Quote</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>
