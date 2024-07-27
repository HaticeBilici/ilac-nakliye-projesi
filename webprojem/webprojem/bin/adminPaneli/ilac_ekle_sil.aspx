<%@ Page Title="" Language="C#" MasterPageFile="~/adminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="ilac_ekle_sil.aspx.cs" Inherits="webprojem.adminPaneli.ilac_ekle_sil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">
              ilac düzenle/sil sayfasına hoşgeldiniz....
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:İlac_NakliyesiConnectionString %>" DeleteCommand="DELETE FROM [ilac_ekle] WHERE [id] = @id" InsertCommand="INSERT INTO [ilac_ekle] ([id], [ilac_adı], [mail_adresi], [ilac_türü], [sehir], [Acıklama_detay]) VALUES (@id, @ilac_adı, @mail_adresi, @ilac_türü, @sehir, @Acıklama_detay)" SelectCommand="SELECT * FROM [ilac_ekle]" UpdateCommand="UPDATE [ilac_ekle] SET [ilac_adı] = @ilac_adı, [mail_adresi] = @mail_adresi, [ilac_türü] = @ilac_türü, [sehir] = @sehir, [Acıklama_detay] = @Acıklama_detay WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="ilac_adı" Type="String" />
                <asp:Parameter Name="mail_adresi" Type="String" />
                <asp:Parameter Name="ilac_türü" Type="String" />
                <asp:Parameter Name="sehir" Type="String" />
                <asp:Parameter Name="Acıklama_detay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ilac_adı" Type="String" />
                <asp:Parameter Name="mail_adresi" Type="String" />
                <asp:Parameter Name="ilac_türü" Type="String" />
                <asp:Parameter Name="sehir" Type="String" />
                <asp:Parameter Name="Acıklama_detay" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"  CssClass="table table-borderless" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="ilac_adı" HeaderText="ilac_adı" SortExpression="ilac_adı" />
                <asp:BoundField DataField="mail_adresi" HeaderText="mail_adresi" SortExpression="mail_adresi" />
                <asp:BoundField DataField="ilac_türü" HeaderText="ilac_türü" SortExpression="ilac_türü" />
                <asp:BoundField DataField="sehir" HeaderText="sehir" SortExpression="sehir" />
                <asp:BoundField DataField="Acıklama_detay" HeaderText="Acıklama_detay" SortExpression="Acıklama_detay" />
            </Columns>
        </asp:GridView>
        </form>
    </asp:Content>