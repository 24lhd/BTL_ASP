<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="thembao.aspx.cs" Inherits="admin_bao_thembao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../ckeditor/ckeditor.js"></script>

    <asp:SqlDataSource ID="dsThemBao" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [BaiBao] WHERE [MaBaiBao] = @MaBaiBao" InsertCommand="INSERT INTO [BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (@MaBaiBao, @MaTheLoai, @Title, @Image, @MoTaNgan, @NoiDung, @Username, @NgayDang)" SelectCommand="SELECT * FROM [BaiBao]" UpdateCommand="UPDATE [BaiBao] SET [MaTheLoai] = @MaTheLoai, [Title] = @Title, [Image] = @Image, [MoTaNgan] = @MoTaNgan, [NoiDung] = @NoiDung, [Username] = @Username, [NgayDang] = @NgayDang WHERE [MaBaiBao] = @MaBaiBao">
        <DeleteParameters>
            <asp:Parameter Name="MaBaiBao" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaBaiBao" Type="String" />
            <asp:Parameter Name="MaTheLoai" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="MoTaNgan" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaTheLoai" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="MoTaNgan" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="MaBaiBao" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <form id="form1" runat="server">
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaBaiBao" DataSourceID="dsThemBao" OnPageIndexChanging="FormView1_PageIndexChanging">
             <EditItemTemplate>
                 MaBaiBao:
                 <asp:Label ID="MaBaiBaoLabel1" runat="server" Text='<%# Eval("MaBaiBao") %>' />
                 <br />
                 MaTheLoai:
                 <asp:TextBox ID="MaTheLoaiTextBox" runat="server" Text='<%# Bind("MaTheLoai") %>' />
                 <br />
                 Title:
                 <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                 <br />
                 Image:
                 <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                 <br />
                 MoTaNgan:
                 <asp:TextBox ID="MoTaNganTextBox" runat="server" Text='<%# Bind("MoTaNgan") %>' />
                 <br />
                 NoiDung:
                 <asp:TextBox ID="NoiDungTextBox" runat="server" Text='<%# Bind("NoiDung") %>' />
                 <br />
                 Username:
                 <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                 <br />
                 NgayDang:
                 <asp:TextBox ID="NgayDangTextBox" runat="server" Text='<%# Bind("NgayDang") %>' />
                 <br />
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </EditItemTemplate>
             <InsertItemTemplate>
                 MaBaiBao:
                 <asp:TextBox ID="MaBaiBaoTextBox" runat="server" Text='<%# Bind("MaBaiBao") %>' />
                 <br />
                 MaTheLoai:
                 <asp:TextBox ID="MaTheLoaiTextBox" runat="server" Text='<%# Bind("MaTheLoai") %>' />
                 <br />
                 Title:
                 <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                 <br />
                 Image:
                 <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                 <br />
                 MoTaNgan:
                 <asp:TextBox ID="MoTaNganTextBox" runat="server" Text='<%# Bind("MoTaNgan") %>' />
                 <br />
                 NoiDung:
                 <asp:TextBox ID="NoiDungTextBox" runat="server" Text='<%# Bind("NoiDung") %>' />
                 <br />
                 Username:
                 <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                 <br />
                 NgayDang:
                 <asp:TextBox ID="NgayDangTextBox" runat="server" Text='<%# Bind("NgayDang") %>' />
                 <br />
                 <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                 &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </InsertItemTemplate>
             <ItemTemplate>
                 <table class="auto-style1">
                     <tr>
                         <td>Mã bài báo</td>
                         <td>
                             <asp:Label ID="MaBaiBaoLabel" runat="server" Text='<%# Eval("MaBaiBao") %>' />
                         </td>
                         <td><a href="javascript:__doPostBack('ctl00$EditButton','')">Sửa</a></td>
                     </tr>
                     <tr>
                         <td>Mã thể loại</td>
                         <td>
                             <asp:Label ID="MaTheLoaiLabel" runat="server" Text='<%# Bind("MaTheLoai") %>' />
                         </td>
                         <td><a href="javascript:__doPostBack('ctl00$DeleteButton','')">Xóa</a></td>
                     </tr>
                     <tr>
                         <td>Tiêu đề</td>
                         <td>
                             <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                         </td>
                         <td><a href="javascript:__doPostBack('ctl00$NewButton','')">Thêm mới</a></td>
                     </tr>
                     <tr>
                         <td>Hình ảnh</td>
                         <td>
                             <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Mô tả ngắn</td>
                         <td>
                             <asp:Label ID="MoTaNganLabel" runat="server" Text='<%# Bind("MoTaNgan") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Nội dung</td>
                         <td>
                             <asp:Label ID="NoiDungLabel" runat="server" Text='<%# Bind("NoiDung") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Tên người đăng</td>
                         <td>
                             <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Ngày đăng</td>
                         <td>
                             <asp:Label ID="NgayDangLabel" runat="server" Text='<%# Bind("NgayDang") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 <br />
                 &nbsp;&nbsp;
             </ItemTemplate>
         </asp:FormView>
            <textarea name="editor1" id="editor1" rows="10" cols="80">
                
            </textarea>
            <script>
                CKEDITOR.replace('editor1');
            </script>
        </form>
</asp:Content>

