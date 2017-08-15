using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.Page
{
    string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\MyLove\Desktop\BTL_ASP\App_Data\DocBaoOnlineFinal.mdf;Integrated Security=True;Connect Timeout=30";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (!IsPostBack)
        {
            load();
        }
    }
    protected void bttimkiem_Click(object sender, EventArgs e)
    {
        

       
    }
    protected void load()
    {
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        DataTable dataTable = new DataTable();
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT Username,HoTen,Email, Phonenumber,MaQuyen,Address FROM NguoiDung", con);
        adapter.Fill(dataTable);
        GridView1.DataSource = dataTable;
        GridView1.DataBind();

    }
    private void LoadData(string username)
    {
        string text = "SELECT Username,HoTen,Email, Phonenumber,MaQuyen,Address FROM NguoiDung WHERE Username LIKE N'%" + username + "%'";
        SqlConnection conn = new SqlConnection(this.connectionString);
        SqlCommand command = new SqlCommand(text, conn);
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dataTable = new DataTable();
        da.Fill(dataTable);
        GridView1.DataSource = dataTable;
        GridView1.DataBind();
        conn.Close();
    }
    protected void bttimkiem_Click1(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txttiemkiem.Text))
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Nhập [Tên người dùng] cần tìm";
            load();
        }
        else
        {
            Label1.Text = "";
            LoadData(txttiemkiem.Text.Trim());

        }
    }
}