<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="theloai_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="idhead" Runat="Server">
    <h1>Đây là head</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="idheadlink" Runat="Server">
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DocBaoOnlineFinalConnectionString %>" DeleteCommand="DELETE FROM [BaiBao] WHERE [MaBaiBao] = @MaBaiBao" InsertCommand="INSERT INTO [BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (@MaBaiBao, @MaTheLoai, @Title, @Image, @MoTaNgan, @NoiDung, @Username, @NgayDang)" SelectCommand="SELECT * FROM [BaiBao]" UpdateCommand="UPDATE [BaiBao] SET [MaTheLoai] = @MaTheLoai, [Title] = @Title, [Image] = @Image, [MoTaNgan] = @MoTaNgan, [NoiDung] = @NoiDung, [Username] = @Username, [NgayDang] = @NgayDang WHERE [MaBaiBao] = @MaBaiBao">
        <DeleteParameters>
            <asp:Parameter Name="MaBaiBao" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaBaiBao" Type="String" />
            <asp:Parameter Name="MaTheLoai" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="MoTaNgan" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaTheLoai" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="MoTaNgan" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="MaBaiBao" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaBaiBao" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MaBaiBao" HeaderText="MaBaiBao" ReadOnly="True" SortExpression="MaBaiBao" />
                <asp:BoundField DataField="MaTheLoai" HeaderText="MaTheLoai" SortExpression="MaTheLoai" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="MoTaNgan" HeaderText="MoTaNgan" SortExpression="MoTaNgan" />
                <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="NgayDang" HeaderText="NgayDang" SortExpression="NgayDang" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="idcontent" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="idright" Runat="Server">

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="idfooter" Runat="Server">

</asp:Content>

