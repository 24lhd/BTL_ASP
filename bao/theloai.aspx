<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="theloai.aspx.cs" Inherits="bao_theloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="idhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="idheadlink" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="idcontent" runat="Server">
    <div class="w3-container w3-teal">
        <h1>
            <asp:Literal ID="txtTenTheLoai" runat="server"></asp:Literal></h1>
    </div>
    <asp:Literal ID="txtDemo" runat="server"></asp:Literal>
    

    <div class="w3-content">

      <asp:Literal ID="contentList" runat="server"></asp:Literal>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="idright" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="idfooter" runat="Server">
</asp:Content>

