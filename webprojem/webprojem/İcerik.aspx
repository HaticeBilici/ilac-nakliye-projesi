<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="İcerik.aspx.cs" Inherits="webprojem.İcerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron jumbotron-fluid mb-5">
        <div class="container text-center py-5">
            <h1 class="text-white display-3">Bilgiler</h1>
            <div class="d-inline-flex align-items-center text-white">
                <p class="m-0"><a class="text-white" href="">icerik</a></p>
                <i class="fa fa-circle px-3"></i>
                <p class="m-0">Bilgiler</p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form runat="server">  
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <h6 class="text-success text-uppercase font-weight-bold">Dagıtım Bilgileri</h6>
                <h1 class="mb-4">Dagıtım için gerekli olan bilgiler..</h1>
            </div>
            <div class="row">
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:İlac_NakliyesiConnectionString %>" SelectCommand="SELECT * FROM [ilac_ekle]"></asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                        <div class="col-md-4 mb-5">
                    <div class="bg-secondary">
                        <div class="text-center p-4">
                            <h1 class="display-4 mb-0">
                               <img class="img-fluid w-100" src="img/araba.jpg" alt="">
                            </h1>
                        </div>
                        <div class="bg-success text-center p-4">
                           
                            <h3 class="m-0"><%# Eval("id")%></h3>
                        </div>
                        <div class="d-flex flex-column align-items-center py-4">
                            <p>1</p>
                            <p><%# Eval("mail_adresi") %></p>
                            <p><%# Eval("ilac_adı") %></p>
                            <p><%# Eval("sehir") %></p>
                            <p><%# Eval("ilac_türü") %></p>
                            <p><%# Eval("Acıklama_detay") %></p>
                            
                        </div>
                    </div>
                </div>
                        <br />
<br />
                 </ItemTemplate>
                </asp:Repeater>
              
                
               
            </div>
        </div>
    </div>
     </form>
</asp:Content>
