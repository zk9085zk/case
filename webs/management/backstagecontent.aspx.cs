using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webs_management_Default : System.Web.UI.Page
{
    private string a;
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

            cell1.Text = "標題";
            row.Cells.Add(cell1);

            cell2.Text = "姓名";
            row.Cells.Add(cell2);

            cell3.Text = "時間";
            row.Cells.Add(cell3);

            cell4.Text = "";
            row.Cells.Add(cell4);



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
        String sql = "SELECT * FROM board.contact";

        MySqlCommand cmd2 = new MySqlCommand(sql, connStr);

        reader = cmd2.ExecuteReader();


        while (reader.Read())
        {

            Button button10 = new Button();
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
         

            cell1.Text = "<a href='" + "/webs/management/backstagecontent2.aspx?id=" + reader["contact_id"].ToString() + "'>" + reader["contact_title"].ToString() + "</a>";
            cell1.CssClass = "title";
            row.Cells.Add(cell1);


            cell2.Text = reader["contact_name"].ToString();
            row.Cells.Add(cell2);

            cell3.Text = DateTime.Parse(reader["contact_time"].ToString()).ToString("yyyy/MM/dd");
            row.Cells.Add(cell3);


            button10.Text = "刪除";
            button10.ID = reader["contact_id"].ToString();
            button10.Click += new EventHandler(lbtn_Click2);
            button10.CssClass = "button button1";
            button10.OnClientClick = "return confirm('您確定要刪除嗎？')";
            cell4.Controls.Add(button10);
            row.Cells.Add(cell4);

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
    private void delete()
    {
        /*刪除*/

        MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["AAAMySqlServer"].ConnectionString);

        connStr.Open();


        String id = a;
        string delete = string.Format("DELETE FROM board.contact WHERE contact_id = @id");
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
}
