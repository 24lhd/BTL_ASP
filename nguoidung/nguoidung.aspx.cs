using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nguoidung_nguoidung : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hienten.Text = "";
    }
    protected void ImageProTextBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void bttaianh_Click(object sender, EventArgs e)
    {
        if (fileanh.HasFile)
        {
            string fileName = Path.GetFileName(fileanh.PostedFile.FileName);
            fileanh.PostedFile.SaveAs(Server.MapPath("~/public/image/") + fileName);
            hienanh.ImageUrl = "~/public/image/" + fileName;
            hienten.Text = fileName;
        }
    }
}