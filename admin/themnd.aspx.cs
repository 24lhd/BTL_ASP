using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_themnd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void btdangky_Click(object sender, EventArgs e)
    {
        string a = "logo.jpg";
        sqlthemtk.InsertParameters["Username"].DefaultValue = txttendn.Text;
        sqlthemtk.InsertParameters["Password"].DefaultValue = txtmk.Text;
        sqlthemtk.InsertParameters["HoTen"].DefaultValue = txthten.Text;
        sqlthemtk.InsertParameters["Email"].DefaultValue = txtemail.Text;
        sqlthemtk.InsertParameters["Phonenumber"].DefaultValue = txtsdt.Text;
        sqlthemtk.InsertParameters["MaQuyen"].DefaultValue = ddlquyen.SelectedValue;
        sqlthemtk.InsertParameters["ImagePro"].DefaultValue = a;
        sqlthemtk.InsertParameters["Address"].DefaultValue = txtdc.Text;
        try
        {
            sqlthemtk.Insert();
            Label1.Text = "Đăng ký tài khoản thành công";
        }
        catch (Exception ex)
        {
            Label1.Text = "Đăng ký không thành công. Vui lòng kiểm tra lại" + ex.Message;
        }
    }
}