using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webs_management_backstagecontent2 : System.Web.UI.Page
{
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
            if (!Page.IsPostBack)
            {
                mamberData();
            }
        }
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
        String search = Request.QueryString["id"];
        String sql = "SELECT * FROM board.contact where contact_id = @id";

        MySqlCommand cmd2 = new MySqlCommand(sql, connStr);
        cmd2.Parameters.AddWithValue("@id", search);
        reader = cmd2.ExecuteReader();


        while (reader.Read())
        {
            Label6.Text = reader["contact_name"].ToString();
            Label4.Text = reader["contact_email"].ToString();
            Label8.Text = reader["contact_time"].ToString();
            Label10.Text = reader["contact_title"].ToString();
            Label11.Text = reader["contact_message"].ToString();

        }
        connStr.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("/webs/management/backstagecontent.aspx");
    }
}