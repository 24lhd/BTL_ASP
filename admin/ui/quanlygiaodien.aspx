<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="quanlygiaodien.aspx.cs" Inherits="admin_quanlygiaodien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <p>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="QUẢN LÝ GIAO DIỆN"></asp:Label>
        </p>
        <p>
            <asp:SqlDataSource ID="sqlGiaodien" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [GiaoDien] WHERE [IDGiaoDien] = @IDGiaoDien" InsertCommand="INSERT INTO [GiaoDien] ([IDGiaoDien], [Title], [Logo], [Header], [Footer]) VALUES (@IDGiaoDien, @Title, @Logo, @Header, @Footer)" SelectCommand="SELECT * FROM [GiaoDien]" UpdateCommand="UPDATE [GiaoDien] SET [Title] = @Title, [Logo] = @Logo, [Header] = @Header, [Footer] = @Footer WHERE [IDGiaoDien] = @IDGiaoDien">
                <DeleteParameters>
                    <asp:Parameter Name="IDGiaoDien" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IDGiaoDien" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Logo" Type="String" />
                    <asp:Parameter Name="Header" Type="String" />
                    <asp:Parameter Name="Footer" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Logo" Type="String" />
                    <asp:Parameter Name="Header" Type="String" />
                    <asp:Parameter Name="Footer" Type="String" />
                    <asp:Parameter Name="IDGiaoDien" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:FormView ID="fvGiaodien" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDGiaoDien" DataSourceID="sqlGiaodien" ForeColor="Black" GridLines="Horizontal" AllowPaging="True">
                <EditItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>ID giao diện:</td>
                            <td>
                                <asp:Label ID="IDGiaoDienLabel1" runat="server" Text='<%# Eval("IDGiaoDien") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Tiêu đề:</td>
                            <td>
                                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Logo:</td>
                            <td>
                                <asp:TextBox ID="LogoTextBox" runat="server" Text='<%# Bind("Logo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Header:</td>
                            <td>
                                <asp:TextBox ID="HeaderTextBox" runat="server" Text='<%# Bind("Header") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Footer:</td>
                            <td>
                                <asp:TextBox ID="FooterTextBox" runat="server" Text='<%# Bind("Footer") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>ID giao diện:</td>
                            <td>
                                <asp:TextBox ID="IDGiaoDienTextBox" runat="server" Text='<%# Bind("IDGiaoDien") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Title:</td>
                            <td>
                                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Logo:</td>
                            <td>
                                <asp:TextBox ID="LogoTextBox" runat="server" Text='<%# Bind("Logo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Header: </td>
                            <td>
                                <asp:TextBox ID="HeaderTextBox" runat="server" Text='<%# Bind("Header") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Footer</td>
                            <td>
                                <asp:TextBox ID="FooterTextBox" runat="server" Text='<%# Bind("Footer") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    IDGiaoDien:
                    <br />
                    Title:
                    <br />
                    Logo:
                    <br />
                    Header:
                    <br />
                    Footer:
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>ID giao diện:</td>
                            <td>
                                <asp:Label ID="IDGiaoDienLabel" runat="server" Text='<%# Eval("IDGiaoDien") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Tiêu đề:</td>
                            <td>
                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Logo</td>
                            <td><asp:Image ID="Image1" runat="server" Height="88px" ImageUrl='<%# Eval("Logo","~/public/image/{0}") %>' Width="101px" /></td>
                        </tr>
                        <tr>
                            <td>Header</td>
                            <td>
                                <asp:Label ID="HeaderLabel" runat="server" Text='<%# Bind("Header") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Footer</td>
                            <td>
                                <asp:Label ID="FooterLabel" runat="server" Text='<%# Bind("Footer") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:FormView>
        </p>
        <p>
            &nbsp;</p>
    </form>
</asp:Content>

