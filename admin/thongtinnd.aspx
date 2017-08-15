<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="thongtinnd.aspx.cs" Inherits="admin_thongtinnd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Username" DataSourceID="sqlthontin">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td>
                            <asp:Label ID="UsernameLabel1" runat="server" Text='<%# Eval("Username") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                            <asp:RequiredFieldValidator ID="reqmk" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Không để trống</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Nhập lại mật khẩu</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="cpvnlmk" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="TextBox1" ErrorMessage="CompareValidator" ForeColor="Red">Không khớp</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Họ tên </td>
                        <td>
                            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                            <asp:RequiredFieldValidator ID="req" runat="server" ControlToValidate="HoTenTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Không để trống</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <asp:RegularExpressionValidator ID="reqemail" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="RegularExpressionValidator" ForeColor="Red">Không đúng định dạng</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Điện thoại</td>
                        <td>
                            <asp:TextBox ID="PhonenumberTextBox" runat="server" Text='<%# Bind("Phonenumber") %>' />
                            <asp:RequiredFieldValidator ID="reqdt" runat="server" ControlToValidate="PhonenumberTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">.</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhonenumberTextBox" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{10,11}">Không đúng</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Mã quyền</td>
                        <td>
                            <asp:TextBox ID="MaQuyenTextBox" runat="server" Text='<%# Bind("MaQuyen") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MaQuyenTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">không để trống</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Username:
                <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                HoTen:
                <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Phonenumber:
                <asp:TextBox ID="PhonenumberTextBox" runat="server" Text='<%# Bind("Phonenumber") %>' />
                <br />
                MaQuyen:
                <asp:TextBox ID="MaQuyenTextBox" runat="server" Text='<%# Bind("MaQuyen") %>' />
                <br />
                ImagePro:
                <asp:TextBox ID="ImageProTextBox" runat="server" Text='<%# Bind("ImagePro") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td rowspan="7">
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("ImagePro", "~/public/image/{0}") %>' Width="100px" />
                        </td>
                        <td>Tên đăng nhập</td>
                        <td>
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Họ tên </td>
                        <td>
                            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Điện thoại</td>
                        <td>
                            <asp:Label ID="PhonenumberLabel" runat="server" Text='<%# Bind("Phonenumber") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Mã quyền</td>
                        <td>
                            <asp:Label ID="MaQuyenLabel" runat="server" Text='<%# Bind("MaQuyen") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="sqlthontin" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NguoiDung] WHERE [Username] = @Username" InsertCommand="INSERT INTO [NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (@Username, @Password, @HoTen, @Email, @Phonenumber, @MaQuyen, @ImagePro, @Address)" SelectCommand="SELECT * FROM [NguoiDung] WHERE ([Username] = @Username)" UpdateCommand="UPDATE [NguoiDung] SET [Password] = @Password, [HoTen] = @HoTen, [Email] = @Email, [Phonenumber] = @Phonenumber, [MaQuyen] = @MaQuyen, [ImagePro] = @ImagePro, [Address] = @Address WHERE [Username] = @Username">
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
                <asp:QueryStringParameter Name="Username" QueryStringField="username" Type="String" />
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
</form>
</asp:Content>

