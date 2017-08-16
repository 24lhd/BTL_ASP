using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ui_Menu : System.Web.UI.Page
{
    string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\DocBaoV01.mdf;Integrated Security=True;Connect Timeout=30";
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }
    private void LoadData()
    {
        string text = "SELECT * FROM TheLoai";
        try
        {
            SqlConnection conn = new SqlConnection(this.connectionString);
            SqlCommand command = new SqlCommand(text, conn);
            conn.Open();
            DataTable dataTable = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dataTable);
            int flag = 1;

            string rowItem = "";
            string OneRow = "";

          
            foreach (DataRow row in dataTable.Rows)
            {

                string MaTheLoai = row["MaTheLoai"].ToString();
                string TenTheLoai = row["TenTheLoai"].ToString();

                string item = "<a href=\"../bao/theloai.aspx?id=" + MaTheLoai + "\" class=\"w3-bar-item w3-button\">" + TenTheLoai + "</a>";

                rowItem = rowItem + item;


            }
           
            /* string Title = dataTable.Rows[0]["Title"].ToString();
             txth2.Text = Title;
             string Image = dataTable.Rows[0]["Image"].ToString();
             imBao.ImageUrl = "~/public/image/" + Image;
             string NoiDung = dataTable.Rows[0]["NoiDung"].ToString();
             txtcontent.Text = NoiDung;
             string Username = dataTable.Rows[0]["Username"].ToString();
             txtTacGia.Text = Username;
             string NgayDang = dataTable.Rows[0]["NgayDang"].ToString();
             txtTime.Text = NgayDang;*/
            conn.Close();
        }
        catch (Exception e)
        {
            //   txtcontent.Text = "Not found 404";
        }


    }
}