<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <form id="form1" runat="server">
                <table><tr><td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txttiemkiem" runat="server"></asp:TextBox>
                    <asp:Button ID="bttimkiem" runat="server" OnClick="bttimkiem_Click1" Text="Tìm kiếm" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              </td></tr><tr><td>  
                        <asp:GridView ID="GridView1" runat="server">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="username" DataNavigateUrlFormatString="~/admin/thongtinnd.aspx?username={0}" NavigateUrl="~/admin/thongtinnd.aspx" Text="Chi tiết" />
                            </Columns>
                        </asp:GridView>
<<<<<<< HEAD
                        &nbsp;</td></tr></table>
=======
                        </td></tr></table>
>>>>>>> 0751568147756663984378a89196d0fc56a3a283
              
                </form>
              
</asp:Content>

