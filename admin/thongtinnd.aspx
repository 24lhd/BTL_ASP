<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="thongtinnd.aspx.cs" Inherits="admin_thongtinnd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        height: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Username" DataSourceID="sqlthongtin">
            <EditItemTemplate>
                Username:
                <asp:Label ID="UsernameLabel1" runat="server" Text='<%# Eval("Username") %>' />
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
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePro", "~/public/image/{0}") %>' />
                <br />
                Username:
                <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                HoTen:
                <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Phonenumber:
                <asp:Label ID="PhonenumberLabel" runat="server" Text='<%# Bind("Phonenumber") %>' />
                <br />
                MaQuyen:
                <asp:Label ID="MaQuyenLabel" runat="server" Text='<%# Bind("MaQuyen") %>' />
                <br />
                ImagePro:
                <asp:Label ID="ImageProLabel" runat="server" Text='<%# Bind("ImagePro") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="sqlthongtin" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NguoiDung] WHERE [Username] = @Username" InsertCommand="INSERT INTO [NguoiDung] ([Username], [Password], [HoTen], [Email], [Phonenumber], [MaQuyen], [ImagePro], [Address]) VALUES (@Username, @Password, @HoTen, @Email, @Phonenumber, @MaQuyen, @ImagePro, @Address)" SelectCommand="SELECT * FROM [NguoiDung] WHERE ([Username] = @Username)" UpdateCommand="UPDATE [NguoiDung] SET [Password] = @Password, [HoTen] = @HoTen, [Email] = @Email, [Phonenumber] = @Phonenumber, [MaQuyen] = @MaQuyen, [ImagePro] = @ImagePro, [Address] = @Address WHERE [Username] = @Username">
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

