<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Galeri_Kategori.aspx.cs" Inherits="webprojem.adminPaneli.Galeri_Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title">
               Galeri kategori sayfasına hoşgeldiniz....
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">id</label>
                    <asp:TextBox ID="Textid" runat="server" CssClass="form-control" placeholder="id"></asp:TextBox>
                     <label for="exampleInputName1">Kategori Adı</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Kategori ekle" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:İlac_NakliyesiConnectionString %>" DeleteCommand="DELETE FROM [Kategori_Galeri] WHERE [id] = @id" InsertCommand="INSERT INTO [Kategori_Galeri] ([id], [Kategori_Adı]) VALUES (@id, @Kategori_Adı)" SelectCommand="SELECT * FROM [Kategori_Galeri]" UpdateCommand="UPDATE [Kategori_Galeri] SET [Kategori_Adı] = @Kategori_Adı WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                                <asp:Parameter Name="Kategori_Adı" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Kategori_Adı" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"   CssClass="table table-borderless" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="Kategori_Adı" HeaderText="Kategori_Adı" SortExpression="Kategori_Adı" />
                            </Columns>
                        </asp:GridView>
                        <br />
                    </div>
                        </form>
                </div>
              </div>
             </div>
</asp:Content>
