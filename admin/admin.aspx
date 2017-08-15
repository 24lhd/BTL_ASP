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
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="dsDemo" AutoGenerateColumns="False" DataKeyNames="Username">
                            <Columns>
                                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Phonenumber" HeaderText="Phonenumber" SortExpression="Phonenumber" />
                                <asp:BoundField DataField="MaQuyen" HeaderText="MaQuyen" SortExpression="MaQuyen" />
                                <asp:BoundField DataField="ImagePro" HeaderText="ImagePro" SortExpression="ImagePro" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            </Columns>
                        </asp:GridView>
            </td></tr></table>
              
                </form>
              
</asp:Content>

