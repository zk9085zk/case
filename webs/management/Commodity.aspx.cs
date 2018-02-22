using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class webs_management_Commodity : System.Web.UI.Page
{
    private string a;
    private string[] arr = new string[2];
    string email;

    protected void Page_Load(object sender, EventArgs e)
    {
        check();
        if (email == null)
        {
            Response.Write("<script>alert('請先登入');location.href='/webs/management/login.aspx';</script>");
        }
        else
        {
            //新增第一行
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();

            cell1.Text = "圖片";
            row.Cells.Add(cell1);

            cell2.Text = "名稱";
            row.Cells.Add(cell2);

            cell3.Text = "尺寸";
            row.Cells.Add(cell3);

            cell4.Text = "分類";
            row.Cells.Add(cell4);

            cell5.Text = "";
            row.Cells.Add(cell5);


            Table1.Rows.Add(row);

            mamberData();
        }
    }
    private void mamberData()
    {
        //
        //TODO 連線到資料庫
        //

        //連線到MySql資料庫
        MySqlDataReader reader;
        MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["AAAMySqlServer"].ConnectionString);
        //顯示公告


        connStr.Open();
        String sql;
        try
        {
            if (!Request.QueryString["name"].Equals(""))
            {
                sql = "SELECT * FROM board.product WHERE product_name LIKE '%" + Request.QueryString["name"].ToString() + "%'";
            }
            else if (!Request.QueryString["class"].Equals("0"))
            {
                sql = "SELECT * FROM board.product WHERE product_class=" + Request.QueryString["class"];
            }
            else
            {
                sql = "SELECT * FROM board.product ORDER BY product_class ASC";
            }

        }
        catch {
            sql = "SELECT * FROM board.product ORDER BY product_class ASC";
        }
        MySqlCommand cmd2 = new MySqlCommand(sql, connStr);

        reader = cmd2.ExecuteReader();


        while (reader.Read())
        {
            Image image = new Image();
            Button button10 = new Button();
            Button button11 = new Button();
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();



            image.ImageUrl = reader["product_img"].ToString().Trim();
            image.Height = 125;
            image.Width = 125;
      
            cell1.Controls.Add(image);
            row.Cells.Add(cell1);


            cell2.Text = reader["product_name"].ToString();
            cell2.CssClass = "title";
            row.Cells.Add(cell2);


            cell3.Text = reader["product_size"].ToString();
            row.Cells.Add(cell3);

            if (reader["product_class"].ToString().Equals("1")) {
                cell4.Text = "天然木紋版系列";
            }
            else if (reader["product_class"].ToString().Equals("2"))
            {
                cell4.Text = "天然塗裝木紋版系列";
            }
            else if (reader["product_class"].ToString().Equals("3"))
            {
                cell4.Text = "科技木紋版系列";
            }
            else if (reader["product_class"].ToString().Equals("4"))
            {
                cell4.Text = "科技塗裝木紋版系列";
            }

            row.Cells.Add(cell4);

            button11.Text = "修改";
            button11.ID = "&"+reader["product_id"].ToString();
            button11.Click += new EventHandler(lbtn_Click3);
            button11.CssClass = "btn btn-info";
            cell5.Controls.Add(button11);

            button10.Text = "刪除";
            button10.ID = reader["product_id"].ToString();
            button10.Click += new EventHandler(lbtn_Click2);
            button10.CssClass = "btn btn-danger";
            button10.OnClientClick = "return confirm('您確定要刪除嗎？')";
            cell5.Controls.Add(button10);
            row.Cells.Add(cell5);

            //產生表格
            Table1.Rows.Add(row);

        }
        connStr.Close();

    }
    protected void lbtn_Click2(object sender, EventArgs e)
    {

        Button lbtn = (Button)sender;
        a = lbtn.ID;
        delete();
        Response.Redirect(Request.Url.ToString());
    }
    protected void lbtn_Click3(object sender, EventArgs e)
    {

        Button lbtn2 = (Button)sender;
        a = lbtn2.ID;
        arr = a.Split('&');


        Response.Redirect("/webs/management/Commodity2.aspx?id=" + arr[1]);
    }

    

    private void delete()
    {
        /*刪除*/

        MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["AAAMySqlServer"].ConnectionString);

        connStr.Open();


        String id = a;
        string delete = string.Format("DELETE FROM board.product WHERE product_id = @id");
        MySqlCommand deleteCmd = new MySqlCommand(delete, connStr);
        deleteCmd.Parameters.AddWithValue("@id", id);
        deleteCmd.Connection = connStr;
        //執行刪除
        deleteCmd.ExecuteNonQuery();

        connStr.Close();
    }

    private void check()
    {
        //
        //TODO 連線到資料庫
        //
        try
        {
            HttpCookie cookie = Request.Cookies["useremail"];

            // Response.Write("顯示cookie物件的單值(cookie.Value)：" + cookie.Value + "<hr/>");

            //連線到MySql資料庫
            MySqlDataReader reader;
            MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["AAAMySqlServer"].ConnectionString);



            String select = "SELECT * FROM board.admin where admin_email='" + cookie.Value.ToString() + "';";
            connStr.Open();
            MySqlCommand cmd = new MySqlCommand(select, connStr);
            reader = cmd.ExecuteReader();

            //將資料庫中資料存入陣列
            while (reader.Read())
            {


                email = reader["admin_email"].ToString();

            }
            connStr.Close();
        }
        catch
        {

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/webs/management/Commodity.aspx?name="+ TextBox1.Text.Trim() + "&class=" + DropDownList1.Text);
    }
}