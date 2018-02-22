<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertCommodity.aspx.cs" Inherits="webs_management_Commodity" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 最新編譯和最佳化的 CSS -->
    <link href="/css/bootstrap-theme.min.css" rel="stylesheet" />
    <!-- 選擇性佈景主題 -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
     <!-- w3 card的 CSS -->
    <link href="/css/w3.css" rel="stylesheet" />
    <link href="/css/style.css" rel='stylesheet' type='text/css' />	
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />

    <!-- 最新編譯和最佳化的 JavaScript -->
    <script src="/js/bootstrap.min.js"></script>

     <style>
      .a{
          color: white; 
          text-align: center; 
          font-size:40px;
          margin-left:28%;
      }
      .b{
          color:tomato;
          margin-left:40%;
          font-size:25px;
      }
      .c{
         background-color:#222; 
          padding:10px;
        
      }
      @media screen and (max-width: 480px) {


        
            .a{
                color: white; 
                text-align: center; 
                font-size:30px;
                margin-left:15%;
             
                
            }
            .b{
                 color:tomato;
                 font-size:15px;
                 margin-left:10%;

               
            }

            .c{
                background-color: #006064; 
                
                padding:10px;
               
            }
      }
     .img{
         width:100px
     }
     .lab1{
         font-size:30px;
         font-weight:bold;
         color:white;
     }
   
       .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 2px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

    .button1 {
   background-color: #f44336;
    color: white;
    border: 1px solid;
}

         .button1:hover {
             background-color: white;
             color: black;
             border: 1px solid #f44336;
         }
  </style>
</head>
<body>
     <form id="form1" runat="server">

     

      
        <nav class="w3-sidenav w3-collapse w3-card-2 w3-animate-left" style="width: 18%;background-color: #00796B" id="mySidenav">

            <a href="javascript:void(0)" onclick="w3_close()"
                class="w3-closenav w3-large w3-hide-large">收起 &times;</a>
           
           
            <a href="#" style="color: white;margin-top:70px">

            </a>
         
             <a href="#" style="color: white; background-color: #006064">
                <h4><i style="padding-right: 10px" class="fa fa-paw" aria-hidden="true"></i>商品資訊</h4>
            </a>
            <a href="/webs/management/Commodity.aspx" style="color: white;">商品修改</a>

   
               <a href="#" style="color: white; background-color: #006064">
            <h4><i style="padding-right: 10px" class="fa fa-pencil-square-o" aria-hidden="true"></i>留言管理</h4>
            </a>
            <a href="/webs/management/backstagecontent.aspx" style="color: white;">留言修改</a>  

         

        </nav>

          <div class="c navbar-fixed-top">
               
                    <div class="a " >
                         <a href="/webs/manager/backmanagerbillboard.aspx" style="color:white;text-decoration:none;" >世豐木業後台管理系統</a>
                         <a class="b " href="/webs/management/login.aspx" style="text-decoration:none;">
                            <asp:Label ID="Label2" runat="server" Text="登出"></asp:Label>
                         </a>
                    </div>
                   
                   
        </div>
        
           

            <div class="row" style="padding-top: 100px;margin-left:23%;width:70%">
   
            <ul class="nav nav-tabs">
         <li><a href="/webs/management/Commodity.aspx">商品資料</a></li>
        <li class="active"><a href="/webs/management/InsertCommodity.aspx">新增商品</a></li>
        
    </ul>
                <asp:Label ID="Label5" runat="server" Text="商品圖片："></asp:Label>
                <asp:Image ID="Image1" runat="server" Height="200px" Width="180px" />
                <br />
                 <br />
                   <asp:FileUpload ID="FileUpload1" runat="server" />
                   <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="上傳照片" />
                   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                 <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="商品名稱："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="商品尺寸："></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="商品分類："></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="200px">
                    <asp:ListItem Value="1">天然木紋版系列</asp:ListItem>
                    <asp:ListItem Value="2">天然塗裝木紋版系列</asp:ListItem>
                    <asp:ListItem Value="3">科技木紋版系列</asp:ListItem>
                    <asp:ListItem Value="4">科技塗裝木紋版系列</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button2" runat="server" Text="新增" CssClass="btn btn-info" OnClick="Button2_Click" />

            </div>
    
    </form>
</body>
</html>
