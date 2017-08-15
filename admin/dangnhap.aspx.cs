using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void btdangnhap_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqldangnhap.Select(DataSourceSelectArguments.Empty);
        int n = dv.Count;
        if (n > 0)
        {
            Class1 nd = new Class1();
            nd.a = txtuser.Text;
            nd.b = txtpass.Text;
             Session.Add("nguoidung", nd);
            string name = dv.Table.Rows[0]["MaQuyen"].ToString();
            if (String.Compare("AD", name) == 0)
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Redirect("~/nguoidung/nguoidung.aspx?username=" + txtuser.Text);
            }

        }
        else
        {
            Response.Redirect("loi.aspx");
        }
        
    }
    protected void btdangky_Click(object sender, EventArgs e)
    {
        string a = "WR";
        string b = "logo.jpg";
        sqldky.InsertParameters["Username"].DefaultValue = txttendn.Text;
        sqldky.InsertParameters["Password"].DefaultValue = txtmk.Text;
        sqldky.InsertParameters["HoTen"].DefaultValue = txthten.Text;
        sqldky.InsertParameters["Email"].DefaultValue = txtemail.Text;
        sqldky.InsertParameters["Phonenumber"].DefaultValue = txtsdt.Text;
        sqldky.InsertParameters["MaQuyen"].DefaultValue = a;
        sqldky.InsertParameters["ImagePro"].DefaultValue = b;
        sqldky.InsertParameters["Address"].DefaultValue = txtdc.Text;
        try
        {
            sqldky.Insert();
            Label1.Text = "Đăng ký tài khoản thành công";
        }
        catch (Exception ex)
        {
            Label1.Text = "Đăng ký không thành công. Vui lòng kiểm tra lại" + ex.Message;
        }

    }
}