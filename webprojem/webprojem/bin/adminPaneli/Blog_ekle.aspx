<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Blog_ekle.aspx.cs" Inherits="webprojem.adminPaneli.Blog_ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title">
              Blog kategori ekleme sayfasına hoşgeldiniz....
            </h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <form class="forms-sample" runat="server">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:İlac_NakliyesiConnectionString %>" SelectCommand="SELECT * FROM [Blog_kategori]"></asp:SqlDataSource>
                   <div class="form-group">
                      <label for="exampleInputName1">id</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  placeholder="id"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputName1">Baslik</label>
                    <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Baslik"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">özet</label>
                         <asp:TextBox ID="Txtözet" runat="server" CssClass="form-control" placeholder="özet"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Kategori</label>
                        <asp:DropDownList ID="DropDownList1"  runat="server"  CssClass="form-control" placeholder="Kategori" DataSourceID="SqlDataSource1" DataTextField="Kategorı_Adı" DataValueField="id"></asp:DropDownList>
                    </div>
                    
                   
                    <div class="form-group">
                      <label>Blog resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                        <asp:Label ID="Label1" runat="server" Text="Resim Yükle"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="resimalanı"></asp:Label>
                        </div>
                        <asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />
                   
                       <div class="form-group">
                      <label for="exampleInputPassword4">Blog  Detay</label>
                         <asp:TextBox ID="Txtblogdetay" runat="server" TextMode="Multiline" Height="100px" CssClass="form-control" placeholder="Blog Detay"></asp:TextBox>
                           <asp:Label ID="Lbltarih" runat="server" Text=""></asp:Label>

                    </div>
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" OnClick="Button1_Click" />
                      
                   
                  </form>
                </div>
              </div>
            </div>
</asp:Content>
