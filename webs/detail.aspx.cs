using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webs_detail : System.Web.UI.Page
{
    string src;
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM product WHERE product_id= '" + Request.QueryString["id"] + "' ";
        mamberData();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //用戶端的物件
        System.Net.WebClient wc = new System.Net.WebClient();
        String fileUrlPath = src; //下載的檔案路徑


        byte[] file = null;

        try
        {
            //用戶端下載檔案到byte陣列
            file = wc.DownloadData(fileUrlPath);
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("ASP.net禁止下載此敏感檔案(通常為：.cs、.vb、微軟資料庫mdb、mdf和config組態檔等)。<br/>檔案路徑：" + fileUrlPath + "<br/>錯誤訊息：" + ex.ToString());
            return;
        }

        HttpContext.Current.Response.Clear();
        string fileName = System.IO.Path.GetFileName(fileUrlPath);
        //跳出視窗，讓用戶端選擇要儲存的地方                         //使用Server.UrlEncode()編碼中文字才不會下載時，檔名為亂碼
        HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=" + HttpContext.Current.Server.UrlEncode(fileName));
        //設定MIME類型為二進位檔案
        HttpContext.Current.Response.ContentType = "application/octet-stream";

        try
        {
            //檔案有各式各樣，所以用BinaryWrite
            HttpContext.Current.Response.BinaryWrite(file);

        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write("檔案輸出有誤，您可以在瀏覽器的URL網址貼上以下路徑嘗試看看。<br/>檔案路徑：" + fileUrlPath + "<br/>錯誤訊息：" + ex.ToString());
            return;
        }

        //這是專門寫文字的
        //HttpContext.Current.Response.Write();
        HttpContext.Current.Response.End();
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
            src = reader["product_img"].ToString();
            //產生表格
        }
        connStr.Close();

    }
}