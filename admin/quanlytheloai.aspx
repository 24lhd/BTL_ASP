<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="quanlytheloai.aspx.cs" Inherits="admin_quanlytheloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 112%;
        }
    </style>
    <link href="../public/css/quanlytheloai.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">

        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp;<style></style><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Quản lý thể loại"></asp:Label>
        <asp:SqlDataSource ID="sqlTheloai" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TheLoai] WHERE [MaTheLoai] = @MaTheLoai" InsertCommand="INSERT INTO [TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (@MaTheLoai, @TenTheLoai)" SelectCommand="SELECT * FROM [TheLoai]" UpdateCommand="UPDATE [TheLoai] SET [TenTheLoai] = @TenTheLoai WHERE [MaTheLoai] = @MaTheLoai">
            <DeleteParameters>
                <asp:Parameter Name="MaTheLoai" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaTheLoai" Type="String" />
                <asp:Parameter Name="TenTheLoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenTheLoai" Type="String" />
                <asp:Parameter Name="MaTheLoai" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:FormView ID="fvTheloai" runat="server" DataKeyNames="MaTheLoai" DataSourceID="sqlTheloai" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" Width="337px" AllowPaging="True">
            <EditItemTemplate>
                <table class="auto-style1" style="margin-left:50px">
                    <tr>
                        <td>Mã thể loại:</td>
                        <td>
                            <asp:Label ID="MaTheLoaiLabel1" runat="server" Text='<%# Eval("MaTheLoai") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Tên thể loại:</td>
                        <td>
                            <asp:TextBox ID="TenTheLoaiTextBox" runat="server" Text='<%# Bind("TenTheLoai") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Mã thể loại:</td>
                        <td>
                            <asp:TextBox ID="MaTheLoaiTextBox" runat="server" Text='<%# Bind("MaTheLoai") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Tên thể loại:</td>
                        <td>
                            <asp:TextBox ID="TenTheLoaiTextBox" runat="server" Text='<%# Bind("TenTheLoai") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm " />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>Mã thể loại:</td>
                        <td>
                            <asp:Label ID="MaTheLoaiLabel" runat="server" Text='<%# Eval("MaTheLoai") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Tên thể loại:</td>
                        <td>
                            <asp:Label ID="TenTheLoaiLabel" runat="server" Text='<%# Bind("TenTheLoai") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                        </td>
                        <td>
                            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
                        </td>
                        <td>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới" />
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;
            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:FormView>
        <br />
        <br />
        <br />
        <br />
    </form>
</asp:Content>

