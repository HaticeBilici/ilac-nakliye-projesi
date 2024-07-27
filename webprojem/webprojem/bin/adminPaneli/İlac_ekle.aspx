<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="İlac_ekle.aspx.cs" Inherits="webprojem.adminPaneli.İlac_ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">
              ilac ekleme sayfasına hoşgeldiniz....
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <form class="forms-sample" runat="server">
                     <div class="form-group">
                      <label for="exampleInputName1">id</label>
                    <asp:TextBox ID="Txtid" runat="server" CssClass="form-control" placeholder="id"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputName1">İlac Adı</label>
                    <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" placeholder="İlac Adı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Gidecegi yerin mail adresi</label>
                         <asp:TextBox ID="Txtyer" runat="server" CssClass="form-control" placeholder="Gidecegi yerin mail adresi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">İlac Türü</label>
                         <asp:TextBox ID="Txttür" runat="server" CssClass="form-control" placeholder="İlac Türü"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputPassword4">Sehir</label>
                         <asp:TextBox ID="Txtsehir" runat="server" CssClass="form-control" placeholder="Sehir"></asp:TextBox>
                    </div>
                    
                   
                       <div class="form-group">
                      <label for="exampleInputPassword4">Acıklama Detay</label>
                         <asp:TextBox ID="Txtdetay" runat="server" TextMode="Multiline" Height="80px" CssClass="form-control" placeholder="Acıklama Detay"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" OnClick="Button1_Click" />
                      
                   
                  </form>
                </div>
              </div>
            </div>
</asp:Content>
