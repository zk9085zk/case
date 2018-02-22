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

        if (IsPostBack)
        {
            Label1.Text = updatePic(FileUpload1);
        }

        if (!IsPostBack)
        {

            if (email == null)
            {
                Response.Write("<script>alert('請先登入');location.href='/webs/management/login.aspx';</script>");
            }
            else
            {
                mamberData();
            }
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
        String sql = "SELECT * FROM product WHERE product_id= '" + Request.QueryString["id"] + "' ";

        MySqlCommand cmd2 = new MySqlCommand(sql, connStr);

        reader = cmd2.ExecuteReader();


        while (reader.Read())
        {
            Image1.ImageUrl = reader["product_img"].ToString();
            TextBox1.Text = reader["product_name"].ToString();
            TextBox2.Text = reader["product_size"].ToString();
            DropDownList1.SelectedValue= reader["product_class"].ToString();

        }
        connStr.Close();

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

    private void update()
    {
        /*更新*/
        MySqlConnection connStr = new MySqlConnection(ConfigurationManager.ConnectionStrings["AAAMySqlServer"].ConnectionString);

        connStr.Open();

        String id = Request.QueryString["id"];
        string update = string.Format("update board.product set product_name='{0}', product_size='{1}', product_class='{2}', product_img='{3}' where product_id=@id", TextBox1.Text,TextBox2.Text,DropDownList1.Text, Image1.ImageUrl);
        MySqlCommand updateCmd = new MySqlCommand(update, connStr);
        updateCmd.Parameters.AddWithValue("@id", id);
        updateCmd.Connection = connStr;
        //執行更新
        updateCmd.ExecuteNonQuery();

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

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("/webs/management/Commodity.aspx");
    }

  

    protected void Button2_Click(object sender, EventArgs e)
    {
        update();
        Response.Redirect("/webs/management/Commodity.aspx");
    }

    public string updatePic(FileUpload fileUpload)
    {
        Boolean fileOK = false; // 檔案格式驗證
        String path = Server.MapPath("~/picture/product/"); // 路徑
        if (fileUpload.HasFile) // 確認檔案存在
        {
            String fileExtension = System.IO.Path.GetExtension(fileUpload.FileName).ToLower(); // 取得檔案格式
            String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" }; // 限定檔案格式
            for (int i = 0; i < allowedExtensions.Length; i++) // 比對檔案格式
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }
        }

        if (fileOK) // 檔案格式正確
        {
            try
            {
                fileUpload.PostedFile.SaveAs(path + fileUpload.FileName);
                // 檔案儲存，預設：使用原檔案名稱，將直接覆蓋同名檔案。若要改寫確認檔案存在，請使用Exist檢查

     
                Image1.ImageUrl = "http://140.127.22.42:81/picture/product/" + fileUpload.FileName;

                return "檔案上傳成功";
            }
            catch (Exception ex)
            {
                return "檔案上傳失敗！錯誤代碼：" + ex;
            }
        }
        else
        {
            return "無法傳輸此類型的檔案";
        }
    }
}