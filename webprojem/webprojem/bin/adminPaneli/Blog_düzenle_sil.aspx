<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Blog_düzenle_sil.aspx.cs" Inherits="webprojem.adminPaneli.Blog_düzenle_sil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">
              Blog düzenle/sil sayfasına hoşgeldiniz....
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:İlac_NakliyesiConnectionString %>" DeleteCommand="DELETE FROM [blog_ekle] WHERE [id] = @id" InsertCommand="INSERT INTO [blog_ekle] ([id], [Baslik], [özet], [Kategoriid], [Blog_Resim], [Blog_Detay], [tarih]) VALUES (@id, @Baslik, @özet, @Kategoriid, @Blog_Resim, @Blog_Detay, @tarih)" SelectCommand="SELECT * FROM [blog_ekle]" UpdateCommand="UPDATE [blog_ekle] SET [Baslik] = @Baslik, [özet] = @özet, [Kategoriid] = @Kategoriid, [Blog_Resim] = @Blog_Resim, [Blog_Detay] = @Blog_Detay, [tarih] = @tarih WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="özet" Type="String" />
                <asp:Parameter Name="Kategoriid" Type="Int32" />
                <asp:Parameter Name="Blog_Resim" Type="String" />
                <asp:Parameter Name="Blog_Detay" Type="String" />
                <asp:Parameter Name="tarih" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="özet" Type="String" />
                <asp:Parameter Name="Kategoriid" Type="Int32" />
                <asp:Parameter Name="Blog_Resim" Type="String" />
                <asp:Parameter Name="Blog_Detay" Type="String" />
                <asp:Parameter Name="tarih" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="table table-borderless" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="özet" HeaderText="özet" SortExpression="özet" />
                <asp:BoundField DataField="Kategoriid" HeaderText="Kategoriid" SortExpression="Kategoriid" />
                <asp:BoundField DataField="Blog_Resim" HeaderText="Blog_Resim" SortExpression="Blog_Resim" />
                <asp:BoundField DataField="Blog_Detay" HeaderText="Blog_Detay" SortExpression="Blog_Detay" />
                <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
            </Columns>
    </asp:GridView>
    </form>

</asp:Content>
