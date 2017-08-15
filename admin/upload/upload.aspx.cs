using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections.Generic;
public partial class admin_upload_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/public/image/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                string fileName = Path.GetFileName(filePath);
                files.Add(new ListItem(fileName, "~/public/image/" + fileName));
            }
            GridViewDemo.DataSource = files;
            GridViewDemo.DataBind();
        }
    }
   
    protected void Upload(object sender, EventArgs e)
    {
        if (FileUploadDemo.HasFile)
        {
            string fileName = Path.GetFileName(FileUploadDemo.PostedFile.FileName);
            FileUploadDemo.PostedFile.SaveAs(Server.MapPath("~/public/image/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}