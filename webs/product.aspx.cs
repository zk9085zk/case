using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webs_product : System.Web.UI.Page
{
    /*
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
        MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString);
        //顯示公告


        connStr.Open();
        String sql = "SELECT * FROM board.contact";

        MySqlCommand cmd2 = new MySqlCommand(sql, connStr);

        reader = cmd2.ExecuteReader();


        while (reader.Read())
        {
            //產生表格
        }
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
            MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString);



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

    }*/
}