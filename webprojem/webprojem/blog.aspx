<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="webprojem.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron jumbotron-fluid mb-5">
        <div class="container text-center py-5">
            <h1 class="text-white display-3">Blog Sayfası..</h1>
            <div class="d-inline-flex align-items-center text-white">
                <p class="m-0"><a class="text-white" href="">Ev</a></p>
                <i class="fa fa-circle px-3"></i>
                <p class="m-0">Blog Sayfası..</p>
            </div>
        </div>
    </div>

    <div class="container py-5">
        <div class="row">
            <!-- Blog Grid Start -->
            <div class="col-lg-8">
                <div class="row">
                
                   
                   
                </div>
               
            </div>




            <div class="mb-5">
                    <h3 class="mb-4">Kategoriler</h3>
                    <div class="bg-success" style="padding: 30px;">
                        <ul class="list-inline m-0">
                            <li class="mb-1 py-2 px-3 bg-light d-flex justify-content-between align-items-center">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:İlac_NakliyesiConnectionString %>" SelectCommand="SELECT * FROM [blog_ekle] inner join Blog_Kategori on Blog_Kategori.id=blog_ekle.Kategoriid"></asp:SqlDataSource>
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                       
                                       
                                        <br />
                                            <div class="col-md-12 mb-3">
                        <div class="position-relative">
                            <img class="img-fluid w-100" src="resimlerim/blog/<%# Eval("Blog_Resim") %>" alt="">
                            <div class="position-absolute bg-success d-flex flex-column align-items-center justify-content-center rounded-circle"
                                style="width: 60px; height: 60px; bottom: -30px; right: 30px;">
                                <h4 class="font-weight-bold mb-n1"><%# Eval("tarih") %></h4>
                                
                            </div>
                        </div>
                        <div class="bg-secondary mb-3" style="padding: 30px;">
                            <div class="d-flex mb-3">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" style="width: 40px; height: 40px;" src="resimlerim/blog/<%# Eval("Blog_Resim") %>" alt="">
                                    <a class="text-muted ml-2" href=""><%# Eval("Kategoriid") %></a>
                                </div>
                                <div class="d-flex align-items-center ml-4">
                                    <i class="far fa-bookmark text-success"></i>
                                    <a class="text-muted ml-2" href=""><%# Eval("Baslik") %></a>
                                </div>
                            </div>
                            <h4 class="font-weight-bold mb-3">Nakliye görevlisi</h4>
                            <p>İlaç nakliye hizmetlerinde firmamız ile yapacağınız görüşmelerde her türlü isteklerinizi en ince ayrıntısına kadar sistemli bir şekilde gerçekleştirmektedir</p>
                            <a class="border-bottom border-success text-uppercase text-decoration-none" href=""><%# Eval("özet") %> <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
<br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <li>
                               
                            </li>
                           
                           
                         
                        </ul>
                    </div>
                </div>
            





              </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    
</asp:Content>
