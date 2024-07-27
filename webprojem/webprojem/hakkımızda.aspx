<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="hakkımızda.aspx.cs" Inherits="webprojem.hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron jumbotron-fluid mb-5">
        <div class="container text-center py-5">
            <h1 class="text-white display-3">Hakkımızda</h1>
            <div class="d-inline-flex align-items-center text-white">
                <p class="m-0"><a class="text-white" href="">Hakkımızda</a></p>
                <i class="fa fa-circle px-3"></i>
                <p class="m-0">Detay</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- Features Start -->
    <div class="container-fluid bg-secondary my-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <img class="img-fluid w-100" src="img/feature.jpg" alt="">
                </div>
                <div class="col-lg-7 py-5 py-lg-0">
                    <h6 class="text-primary text-uppercase font-weight-bold">Neden Bizi Seçmelisiniz</h6>
                    <h1 class="mb-4">Daha Hızlı, Güvenli ve Güvenilir Lojistik Hizmetleri</h1>
                    <p class="mb-4">Bir ilacın üretim bandından hastaya ulaşıncaya kadar geçtiği tüm süreçlerin takip edilmesini sağlayan sistem şöyle işliyor;

Üretim sürecinde her bir ilaca özel karekod basılıyor. Bu sayede tüm ilaçlar kutu bazında karekodlar ile takip ediliyor.

Üretilen veya ithal edilen ilaçların bilgileri sisteme kaydediliyor.

Bundan sonra her ürünün tedarik zincirine girişinden başlayarak, geçtiği tüm aşamalar, alış-satış, sarf-iade bilgileri sisteme kaydediliyor.</p>
                    <ul class="list-inline">
                        <li><h6><i class="far fa-dot-circle text-primary mr-3"></i>endüstrinin en iyisi</h6>
                        <li><h6><i class="far fa-dot-circle text-primary mr-3"></i>Acil Servisler</h6></li>
                        <li><h6><i class="far fa-dot-circle text-primary mr-3"></i>Güvenilir iletişim</h6></li>
                    </ul>
                   
                </div>
            </div>
        </div>
    </div>
    <!-- Features End -->
</asp:Content>
