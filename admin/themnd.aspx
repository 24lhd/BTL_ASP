<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="themnd.aspx.cs" Inherits="admin_themnd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table border="1"><tr><td>
    <table>
        <tr> <td>Tên đăng nhập</td><td>
                    <asp:TextBox ID="txttendn" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqtendn" runat="server" ControlToValidate="txttendn" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Không để trống</asp:RequiredFieldValidator>
            </td></tr>
            </tr>
            <tr><td>Mật Khẩu</td><td>
                <asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqmk" runat="server" ControlToValidate="txtmk" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Không để trống</asp:RequiredFieldValidator>
                </td></tr>
            <tr><td>Nhập lại mật khẩu</td><td>
                <asp:TextBox ID="txtnhaplaimk" runat="server"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="cpvmk" runat="server" ControlToCompare="txtmk" ControlToValidate="txtnhaplaimk" ErrorMessage="CompareValidator" ForeColor="Red">Không khớp</asp:CompareValidator>
                </td></tr>
            <tr><td>Họ tên</td><td>
                <asp:TextBox ID="txthten" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqten" runat="server" ControlToValidate="txthten" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Không để trống</asp:RequiredFieldValidator>
                </td></tr>
            <tr><td>Email</td><td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="rqeemail" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">không đúng định dạng</asp:RegularExpressionValidator>
                </td></tr>
            <tr><td>Quyền</td><td>
                <asp:DropDownList ID="ddlquyen" runat="server" DataSourceID="sqlquyen" DataTextField="TenQuyen" DataValueField="MaQuyen">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlquyen" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PhanQuyen]"></asp:SqlDataSource>
                </td></tr>
            <tr><td class="auto-style1">Số điện thoại</td><td class="auto-style1">
                <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtsdt" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{10,11}">Số đthoai không đúng</asp:RegularExpressionValidator>
                </td></tr>
            <tr><td>Địa chỉ</td><td>
                <asp:TextBox ID="txtdc" runat="server"></asp:TextBox></td></tr>
            <tr><td colspan="2">
                <asp:Button ID="btthem" runat="server" Text="Thêm " OnClick="btdangky_Click" style="margin-left: 104px" Height="35px" Width="72px" />
                <asp:SqlDataSource ID="sqlthemtk" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NguoiDung] WHERE [Username] = @Username" InsertCommand="INSERT INTO [NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (@Username, @Password, @HoTen, @Email, @Phonenumber, @MaQuyen, @ImagePro, @Address)" SelectCommand="SELECT * FROM [NguoiDung] WHERE ([MaQuyen] = @MaQuyen)" UpdateCommand="UPDATE [NguoiDung] SET [Password] = @Password, [HoTen] = @HoTen, [Email] = @Email, [Phonenumber] = @Phonenumber, [MaQuyen] = @MaQuyen, [ImagePro] = @ImagePro, [Address] = @Address WHERE [Username] = @Username">
                    <DeleteParameters>
                        <asp:Parameter Name="Username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="HoTen" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phonenumber" Type="String" />
                        <asp:Parameter Name="MaQuyen" Type="String" />
                        <asp:Parameter Name="ImagePro" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlquyen" Name="MaQuyen" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="HoTen" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phonenumber" Type="String" />
                        <asp:Parameter Name="MaQuyen" Type="String" />
                        <asp:Parameter Name="ImagePro" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </table>
        </td></tr></table>
    </form>
</asp:Content>

