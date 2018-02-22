using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webs_management_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("useremail");
        cookie.Value = "";
        Response.Cookies.Add(cookie);
    }
    private void Login()
    {
        //
        //TODO 新增會員
        //

        //連線到MySql資料庫

        MySqlDataReader reader;
        MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["AAAMySqlServer"].ConnectionString);
        String select = "SELECT * FROM board.admin where admin_email='" + TextBox1.Text.Trim() + "';";
        connStr.Open();
        MySqlCommand cmd = new MySqlCommand(select, connStr);
        string password = "";
        string email = "";
        string id = "";
        reader = cmd.ExecuteReader();

        //將資料庫中資料存入陣列
        while (reader.Read())
        {
            email = reader["admin_email"].ToString().Trim();
            password = reader["admin_password"].ToString().Trim();
            id = reader["admin_id"].ToString().Trim();

        }


        if (email != "")
        {

            if (TextBox2.Text.Equals(password))
            {
                FormsAuthentication.RedirectFromLoginPage(email, true);
                Session["email"] = email;
                //產生一個Cookie物件
                HttpCookie cookie = new HttpCookie("useremail");
                //設定單值(這裡只能以字串的方式設定)
                cookie.Value = email;
                //cookie.Values.Add("test2", "shadow");
                //設定過期日(這裡只能針對全體cookie物件設定過期日)
                cookie.Expires = DateTime.Now.AddDays(2);
                //寫到用戶端
                Response.Cookies.Add(cookie);
                //  Session["isLogin"] = true;        //驗證登入

                Response.Redirect("/webs/management/backstagecontent.aspx");

            }
            else
            {

                Label1.Text = "密碼輸入錯誤";
            }
        }
        else
        {
            Label1.Text = "帳號輸入錯誤";
        }
        connStr.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Login();
    }
}