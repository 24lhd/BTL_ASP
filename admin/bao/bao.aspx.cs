using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections.Generic;
public partial class admin_bao_thembao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void FormView1_PageIndexChanging1(object sender, FormViewPageEventArgs e)
    {

    }
    protected void Upload(object sender, EventArgs e)
    {
      
    }
    protected void UploadEditBao(object sender, EventArgs e)
    {
       
    }
    protected void UploadBao(object sender, EventArgs e)
    {
        if (FileUploadBao.HasFile)
        {
            string fileName = Path.GetFileName(FileUploadBao.PostedFile.FileName);
            FileUploadBao.PostedFile.SaveAs(Server.MapPath("~/public/image/") + fileName);
            idTxtLinkImageUpdate.Text = fileName;
            imgUp.ImageUrl= "~/public/image/" + fileName;
           // Response.Redirect(Request.Url.AbsoluteUri);
           

        }
    }
}