<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar_admin.aspx.cs" Inherits="webprojem.adminPaneli.Ayarlar_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">
              Ayarlar sayfasına hoşgeldiniz....
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <form class="forms-sample" runat="server">
                      <div class="form-group">
                           <asp:Label ID="Lbltarih" runat="server" Text=""></asp:Label>

                      <label for="exampleInputName1">id</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  placeholder="id"></asp:TextBox>
                    </div><br />
                      <div class="form-group">
                      <label for="exampleInputName1">E-Mail</label>
                    <asp:TextBox ID="Txt_email" runat="server" CssClass="form-control"  placeholder="E-Mail"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Telefon</label>
                         <asp:TextBox ID="Txttelefon" runat="server" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Facebook</label>
                         <asp:TextBox ID="TxtFacebook" runat="server" CssClass="form-control" placeholder="Facebook"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Twitter</label>
                         <asp:TextBox ID="TxtTwitter" runat="server" CssClass="form-control" placeholder="Twitter"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Linkedin</label>
                         <asp:TextBox ID="TxtLinkedin" runat="server" CssClass="form-control" placeholder="Linkedin"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Instagram</label>
                         <asp:TextBox ID="TxtInstagram" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Youtube</label>
                         <asp:TextBox ID="TxtYoutube" runat="server" CssClass="form-control" placeholder="Youtube"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Adres</label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Multiline" Height="30px" CssClass="form-control" placeholder="Adres"></asp:TextBox>
                    </div>
                    
                   
                       <div class="form-group">
                      <label for="exampleInputPassword4">Açıklama</label>
                         <asp:TextBox ID="Txtblogdetay" runat="server" TextMode="Multiline" Height="120px" CssClass="form-control" placeholder="Açıklama"></asp:TextBox>

                    </div>
                      <br />
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet"  />
                      <asp:Button ID="Button2" runat="server" Text="Güncelle" OnClick="Button2_Click" />
                      <asp:Button ID="Button3" runat="server" Text="Yükle" OnClick="Button3_Click1" />
                  </form>
                </div>
              </div>
            </div>
</asp:Content>
