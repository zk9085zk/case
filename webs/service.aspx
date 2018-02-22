<%@ Page Language="C#" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="webs_service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 最新編譯和最佳化的 CSS -->
    <link href="/css/bootstrap-theme.min.css" rel="stylesheet" />
    <!-- 選擇性佈景主題 -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/style.css" rel='stylesheet' type='text/css' />	
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />

    <!-- 最新編譯和最佳化的 JavaScript -->
    <script src="/js/bootstrap.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="/js/jquery.min.js"> </script>

    <style>
        html, body{
  	font-family: Microsoft JhengHei;
}
         .index {
            color:#000000;
            font-size:45px;
            margin-top:7px;
            margin-left:5%
        }
        .index::before{
         
           background-image: url('/picture/logo/Logo.png');
            background-size: 60px 45px;
            display: inline-block;
            width: 60px; 
            height: 40px;
            content:"";
        }

        #ImageLine{
            position: absolute;
            left: 50%;
            margin-right: -50%;
            margin-top:    135px;
            transform: translate(-50%, -50%)
        }

        .lineQR{
            margin-bottom: 230px;
        }

    </style>
   
</head>
<body>
	<!--start-header-->
	<div id="home" class="header">
			<!--logo-->
			<div class="header-top">
              
                <a class="navbar-brand page-scroll index" href="home.aspx" >世豐木業</a>
			<div class="container">
		<!--top-nav-->
                  
			<div class="top-nav" >
				

					<ul>
                         
						<li><a  href="home.aspx">公司介紹</a></li> 
                        <li><a href="product.aspx">產品介紹</a></li> 
						<li><a  class="active" href="service.aspx">立即回應</a></li>
						<li><a href="woodspace.aspx">時尚木設計</a></li> 
					
					   
					</ul>
				</div>
				<div class="clearfix"> </div>
	
		<!-- script-for-menu -->
				<script>
					$(document).ready(function(){
						$("span.menu").click(function(){
							$(".top-nav ul").slideToggle(200);
						});
					});
				</script>
		</div>
	<!--End-top-nav-script-->
				
		</div>
	
             <div >
			<iframe src="http://maps.google.com.tw/maps?f=q&hl=zh-TW&geocode=&q=桃園市蘆竹區新生路600巷&z=16&output=embed&t=" frameborder="0" style="border:0;width:100%;min-height:350px;"></iframe>	
                 </div>	
	
		<!--/header-->
	</div>	
	<!--/contact-->
	<div class="contact-section">
		<div class="contact-head">
            <div class="container">
				
			</div>
			 
		</div>
	
        <div class="lineQR" style="text-align:center">
            <div class="col-sm-2" >
                </div>
            <div class="col-sm-5" >
                    <p style="text-align:center;font-size:30px;margin-top:20%">加入Line群，立即回應！<br /> ID:033235665</p>
             </div>
            <div class="col-sm-3">
                  <asp:Image ID="ImageLine" runat="server" ImageUrl="~/images/Lineqr.jpg" />
           </div>
           <div class="col-sm-2" >
                </div>
        </div>

		<div class="contact-inner">
             <div class="container">
			<h4>客戶留言</h4>
              <form runat="server" class="con">
                  <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                  <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                  <asp:TextBox ID="TextBox3" runat="server" placeholder="Title"></asp:TextBox>
                  <asp:TextBox ID="TextBox4" runat="server" placeholder="Message" Rows="3" TextMode="MultiLine"></asp:TextBox>
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="送出"/> 
               </form>
			</div>
		</div>
	</div>
<!--/start-footer-->
	<div class= "footer" style="text-align:center">
		 <div class="container">                                                   
		
				
				<div class=" col-xs-4 footer-grid">
					<div class="Office Address">
				        <h3 style="color:white">桃園冠誠店</h3>
				       <ul class="bottom-icons">
							<li><a class="fa fa-home" href="#"></a> 桃園市蘆竹區新生路599-3號</li>
                            <li><a class="fa fa-phone" href="#"></a> &nbsp;(03)323-5665</li>	
							<li><a class="fa fa-fax" href="#"></a> (03)323-5981</li>
							
							
						</ul>
					 </div>
				</div>
			
             <div class=" col-xs-4 footer-grid">
					<div class="Office Address">
				        <h3 style="color:white">台中世豐木業</h3>
				       <ul class="bottom-icons">
							<li><a class="fa fa-home" href="#"><span> </span></a> 台中市西屯區龍洋巷30-35號</li>
                            <li><a class="fa fa-phone" href="#"><span> </span></a> &nbsp;(04)2252-3866</li>	
							<li><a class="fa fa-fax" href="#"></a> (04)2252-2143</li>
							
							
						</ul>
					 </div>
				</div>

             <div class=" col-xs-4 footer-grid">
					<div class="Office Address">
				        <h3 style="color:white">高雄世豐木業</h3>
				       <ul class="bottom-icons">
							<li><a class="fa fa-home" href="#"><span> </span></a> 高雄市大發工業區田單四街26號</li>
							<li><a class="fa fa-phone" href="#"><span> </span></a> &nbsp;(07)787-1688</li>	
                            <li><a class="fa fa-fax" href="#"></a> (07)787-1688　(07)787-1807</li>
							
						</ul>
					 </div>
				</div>
				</div>
			</div>
			
			<!--start-smoth-scrolling-->
			<script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
								</script>
							<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    
</body>
</html>