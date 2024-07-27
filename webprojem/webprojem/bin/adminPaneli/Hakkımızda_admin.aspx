<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkımızda_admin.aspx.cs" Inherits="webprojem.adminPaneli.Hakkımızda_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h3 class="page-title">
             Hakkımızda sayfasına hoşgeldiniz....
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <form class="forms-sample" runat="server">
                   
                     
                      <div class="form-group">
                      <label for="exampleInputName1">id</label>
                    <asp:TextBox ID="Textid" runat="server" CssClass="form-control"  placeholder="id"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Baslik</label>
                         <asp:TextBox ID="Textbaslik" runat="server" CssClass="form-control" placeholder="Baslik"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">özet</label>
                         <asp:TextBox ID="Textözet" runat="server" CssClass="form-control" placeholder="özet"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">detay</label>
                         <asp:TextBox ID="Textdetay" runat="server" CssClass="form-control" placeholder="detay"></asp:TextBox>
                    </div>
                      
                   
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                      <br />
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet"  />
                      <asp:Button ID="Button2" runat="server" Text="Güncelle" OnClick="Button2_Click"/>
                      <asp:Button ID="Button3" runat="server" Text="Yükle" OnClick="Button3_Click" />
                  </form>
                </div>
              </div>
            </div>
</asp:Content>
