<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xembao.aspx.cs" Inherits="bao_xembao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="idhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="idheadlink" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="idcontent" runat="Server">
    <h2>
        <asp:Literal ID="txth2" runat="server" /></h2>
    <i>
        <asp:Literal ID="txtTime" runat="server" /></i><br />
    <asp:Image ID="imBao" runat="server" Width="700px"   /><br />
    <asp:Literal ID="txtcontent" runat="server" /><br />
    <b>
        <asp:Literal ID="txtTacGia" runat="server" /></b><br />
    <asp:SqlDataSource ID="dsXemBao" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [BaiBao] WHERE ([MaBaiBao] = @MaBaiBao)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaBaiBao" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="idright" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="idfooter" runat="Server">
</asp:Content>

