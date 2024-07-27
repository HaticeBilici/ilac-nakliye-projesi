<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Blog_kategori.aspx.cs" Inherits="webprojem.adminPaneli.Blog_kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title">
              Blog kategori sayfasına hoşgeldiniz....
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
      <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                    <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>
                      
                    <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" placeholder="İlac Adı"></asp:TextBox>
                         <label for="exampleInputName1">id</label>
                          <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="id" runat="server"></asp:TextBox>
                       </div>
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kaydet" OnClick="Button1_Click" />

                </div>
              </div>
            </div>
        <br /> <br /> <br /> <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:İlac_NakliyesiConnectionString %>" DeleteCommand="DELETE FROM [Blog_kategori] WHERE [id] = @id" InsertCommand="INSERT INTO [Blog_kategori] ([id], [Kategorı_Adı]) VALUES (@id, @Kategorı_Adı)" SelectCommand="SELECT * FROM [Blog_kategori]" UpdateCommand="UPDATE [Blog_kategori] SET [Kategorı_Adı] = @Kategorı_Adı WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="Kategorı_Adı" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Kategorı_Adı" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"  CssClass="table table-borderless" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Kategorı_Adı" HeaderText="Kategorı_Adı" SortExpression="Kategorı_Adı" />
            </Columns>
        </asp:GridView>
          </form>
    </asp:Content>
