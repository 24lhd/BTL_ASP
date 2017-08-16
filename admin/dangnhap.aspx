<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="admin_dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 573px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="1"><tr><td class="auto-style1">
        <table><tr><td colspan="6">
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đăng nhập</h2>
                   </td>
               </tr>
            <tr><td>Username</td><td>
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox></td>
                <td></td><td>Password</td><td>
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Button ID="btdangnhap" runat="server" Text="Đăng nhập" style="margin-left: 27px" OnClick="btdangnhap_Click" />
                    <asp:SqlDataSource ID="sqldangnhap" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [NguoiDung] WHERE (([Username] = @Username) AND ([Password] = @Password))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtuser" Name="Username" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txtpass" Name="Password" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr><td rowspan="9" colspan="4">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/public/image/logo1.jpg" /></td>
                <td colspan="2"><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đăng ký</h3></td>
               <tr> <td>Tên đăng nhập</td><td>
                    <asp:TextBox ID="txttendn" runat="server"></asp:TextBox></td></tr>
            </tr>
            <tr><td>Mật Khẩu</td><td>
                <asp:TextBox ID="txtmk" runat="server"></asp:TextBox></td></tr>
            <tr><td>Nhập lại mật khẩu</td><td>
                <asp:TextBox ID="txtnhaplaimk" runat="server"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="cpvmk" runat="server" ControlToCompare="txtmk" ControlToValidate="txtnhaplaimk" ErrorMessage="CompareValidator" ForeColor="Red">Không khớp</asp:CompareValidator>
                </td></tr>
            <tr><td>Họ tên</td><td>
                <asp:TextBox ID="txthten" runat="server"></asp:TextBox></td></tr>
            <tr><td>Email</td><td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="rqeemail" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">không đúng định dạng</asp:RegularExpressionValidator>
                </td></tr>
            <tr><td>Số điện thoại</td><td>
                <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox></td></tr>
            <tr><td>Địa chỉ</td><td>
                <asp:TextBox ID="txtdc" runat="server"></asp:TextBox></td></tr>
            <tr><td colspan="2">
                <asp:Button ID="btdangky" runat="server" Text="Đăng ký" OnClick="btdangky_Click" style="margin-left: 104px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:SqlDataSource ID="sqldky" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NguoiDung] WHERE [Username] = @Username" InsertCommand="INSERT INTO [NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (@Username, @Password, @HoTen, @Email, @Phonenumber, @MaQuyen, @ImagePro, @Address)" SelectCommand="SELECT * FROM [NguoiDung]" UpdateCommand="UPDATE [NguoiDung] SET [Password] = @Password, [HoTen] = @HoTen, [Email] = @Email, [Phonenumber] = @Phonenumber, [MaQuyen] = @MaQuyen, [ImagePro] = @ImagePro, [Address] = @Address WHERE [Username] = @Username">
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
                </td></tr>
        </table>

     </td></tr></table>
    </div>
    </form>
</body>
</html>
