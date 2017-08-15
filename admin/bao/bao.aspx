<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="bao.aspx.cs" Inherits="admin_bao_thembao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../ckeditor/ckeditor.js"></script>

    <asp:SqlDataSource ID="dsThemBao" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [BaiBao] WHERE [MaBaiBao] = @original_MaBaiBao AND (([MaTheLoai] = @original_MaTheLoai) OR ([MaTheLoai] IS NULL AND @original_MaTheLoai IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([MoTaNgan] = @original_MoTaNgan) OR ([MoTaNgan] IS NULL AND @original_MoTaNgan IS NULL)) AND (([NoiDung] = @original_NoiDung) OR ([NoiDung] IS NULL AND @original_NoiDung IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([NgayDang] = @original_NgayDang) OR ([NgayDang] IS NULL AND @original_NgayDang IS NULL))" InsertCommand="INSERT INTO [BaiBao] ([MaBaiBao], [MaTheLoai], [Title], [Image], [MoTaNgan], [NoiDung], [Username], [NgayDang]) VALUES (@MaBaiBao, @MaTheLoai, @Title, @Image, @MoTaNgan, @NoiDung, @Username, @NgayDang)" SelectCommand="SELECT * FROM [BaiBao]" UpdateCommand="UPDATE [BaiBao] SET [MaTheLoai] = @MaTheLoai, [Title] = @Title, [Image] = @Image, [MoTaNgan] = @MoTaNgan, [NoiDung] = @NoiDung, [Username] = @Username, [NgayDang] = @NgayDang WHERE [MaBaiBao] = @original_MaBaiBao AND (([MaTheLoai] = @original_MaTheLoai) OR ([MaTheLoai] IS NULL AND @original_MaTheLoai IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([MoTaNgan] = @original_MoTaNgan) OR ([MoTaNgan] IS NULL AND @original_MoTaNgan IS NULL)) AND (([NoiDung] = @original_NoiDung) OR ([NoiDung] IS NULL AND @original_NoiDung IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([NgayDang] = @original_NgayDang) OR ([NgayDang] IS NULL AND @original_NgayDang IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_MaBaiBao" Type="String" />
            <asp:Parameter Name="original_MaTheLoai" Type="String" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Image" Type="String" />
            <asp:Parameter Name="original_MoTaNgan" Type="String" />
            <asp:Parameter Name="original_NoiDung" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_NgayDang" Type="DateTime" />
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
            <asp:Parameter Name="original_MaBaiBao" Type="String" />
            <asp:Parameter Name="original_MaTheLoai" Type="String" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Image" Type="String" />
            <asp:Parameter Name="original_MoTaNgan" Type="String" />
            <asp:Parameter Name="original_NoiDung" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_NgayDang" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <form id="form1" runat="server">
         <table class="auto-style1">
             <tr>
                 <td>
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaBaiBao" DataSourceID="dsThemBao" OnPageIndexChanging="FormView1_PageIndexChanging1">
             <EditItemTemplate>
                 <table class="auto-style1">
                     <tr>
                         <td class="auto-style5">&nbsp;</td>
                         <td>
                             <asp:Label ID="MaBaiBaoLabel1" runat="server" Text='<%# Eval("MaBaiBao") %>' />
                         </td>
                         <td>
                             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Mã thể loại</td>
                         <td>
                             <asp:TextBox ID="MaTheLoaiTextBox" runat="server" Text='<%# Bind("MaTheLoai") %>' />
                         </td>
                         <td>
                             <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Tiêu đề</td>
                         <td>
                             <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Hình ảnh</td>
                         <td>
                             <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                             <asp:FileUpload ID="FileUpload1" runat="server" />
                             <asp:Button ID="btnUpload" runat="server" OnClick="Upload" Text="Upload" />
                             <hr />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Mô tả ngắn</td>
                         <td>
                             <asp:TextBox ID="MoTaNganTextBox" runat="server" Text='<%# Bind("MoTaNgan") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Nội dung</td>
                         <td>
                             <asp:TextBox ID="NoiDungTextBox" runat="server" Text='<%# Bind("NoiDung") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Người đăng</td>
                         <td>
                             <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Ngày đăng</td>
                         <td>
                             <asp:TextBox ID="NgayDangTextBox" runat="server" Text='<%# Bind("NgayDang") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
             </EditItemTemplate>
             <InsertItemTemplate>
                 <table class="auto-style1">
                     <tr>
                         <td>Mã bài báo</td>
                         <td>
                             <asp:TextBox ID="MaBaiBaoTextBox" runat="server" Text='<%# Bind("MaBaiBao") %>' />
                         </td>
                         <td>
                             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                         </td>
                     </tr>
                     <tr>
                         <td>Mã thể loại</td>
                         <td>
                             <asp:TextBox ID="MaTheLoaiTextBox0" runat="server" Text='<%# Bind("MaTheLoai") %>' />
                         </td>
                         <td>
                             <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </td>
                     </tr>
                     <tr>
                         <td>Tiêu đề</td>
                         <td>
                             <asp:TextBox ID="TitleTextBox0" runat="server" Text='<%# Bind("Title") %>' TextMode="MultiLine" />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Hình ảnh</td>
                         <td>
                             <asp:TextBox ID="ImageTextBox0" runat="server" Text='<%# Bind("Image") %>' />
                             <asp:FileUpload ID="FileUpload1" runat="server" />
                             <asp:Button ID="btnUpload" runat="server" OnClick="Upload" Text="Upload" />
                             <hr />
                         </td>
                         <td>  </td>
                     </tr>
                     <tr>
                         <td>Mô tả ngắn</td>
                         <td>
                             <asp:TextBox ID="MoTaNganTextBox0" runat="server" Text='<%# Bind("MoTaNgan") %>' TextMode="MultiLine" />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Nội dung</td>
                         <td>
                             <asp:TextBox ID="NoiDungTextBox0" runat="server" Text='<%# Bind("NoiDung") %>' TextMode="MultiLine" />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Người đăng</td>
                         <td>
                             <asp:TextBox ID="UsernameTextBox0" runat="server" Text='<%# Bind("Username") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>Ngày đăng</td>
                         <td>
                             <asp:TextBox ID="NgayDangTextBox0" runat="server" Text='<%# Bind("NgayDang") %>' />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 <br />
                 &nbsp;
             </InsertItemTemplate>
             <ItemTemplate>
                 MaBaiBa<table class="auto-style1">
                     <tr>
                         <td class="auto-style3">Mã</td>
                         <td>
                             <asp:Label ID="MaBaiBaoLabel" runat="server" Text='<%# Eval("MaBaiBao") %>' />
                         </td>
                         <td>&nbsp;</td>
                         <td>
                             <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Thể loại</td>
                         <td>
                             <asp:Label ID="MaTheLoaiLabel" runat="server" Text='<%# Bind("MaTheLoai") %>' />
                         </td>
                         <td>&nbsp;</td>
                         <td>
                             <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Tiêu đề</td>
                         <td>
                             <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                         </td>
                         <td>&nbsp;</td>
                         <td>
                             <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Hình ảnh</td>
                         <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image","~/public/image/{0}") %>' />
<br />
                             <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
                             &nbsp;</td>
                         <td>  &nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Mô tả ngắn</td>
                         <td>
                             <asp:Label ID="MoTaNganLabel" runat="server" Text='<%# Bind("MoTaNgan") %>' />
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Nội dung</td>
                         <td>
                             <asp:Label ID="NoiDungLabel" runat="server" Text='<%# Bind("NoiDung") %>' />
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Người đăng</td>
                         <td>
                             <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Ngày đăng<br /></td>
                         <td>
                             <asp:Label ID="NgayDangLabel" runat="server" Text='<%# Bind("NgayDang") %>' />
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 <br />
                 &nbsp;&nbsp;
             </ItemTemplate>
         </asp:FormView>
                 </td>
             </tr>
         </table>
            <textarea name="editor1" id="editor1" rows="10" cols="80">
                
            </textarea>
            <script>
                CKEDITOR.replace('editor1');
            </script>
        </form>
</asp:Content>

