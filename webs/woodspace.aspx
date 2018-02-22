<%@ Page Language="C#" AutoEventWireup="true" CodeFile="woodspace.aspx.cs" Inherits="webs_home" %>

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
    <link rel="stylesheet" type="text/css" href="/css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="/css/slick-theme.css"/>

    <!-- 最新編譯和最佳化的 JavaScript -->
    <script src="/js/bootstrap.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="/js/jquery.min.js"> </script>
    <script src="/js/slick.min.js"></script>

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
        
        #slideshow{
            height:40%;
            /*width: 700px;*/
            margin: 0px auto 0px auto;
        }

        #slideshow img{
            /* 輪播：500px / 700px */
            margin: 5px;
        }

        .max{
            width:80%;
            height:20%;

        }
        .min{
            height: 31%; 
            width: 33%;
        }

    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    	<!--start-header-->
	<div id="home" class="header">
			<!--logo-->
			<div class="header-top">
              
                <a class="navbar-brand page-scroll index" href="home.aspx" >世豐木業</a>
			<div class="container">
		<!--top-nav-->
        
			<div class="top-nav" >
				
                  
					<ul>
                         
						<li><a href="home.aspx">公司介紹</a></li> 
                        <li><a href="product.aspx">產品介紹</a></li> 
						<li><a href="service.aspx">立即回應</a></li>
						<li><a class="active" href="woodspace.aspx">時尚木設計</a></li> 
					
					   
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
	<!--/header-->
</div>

    
    <!--div id="slideshow">
        <div><img src="/picture/works/686624.jpg" /></div>
        <div><img src="/picture/works/686625.jpg" /></div>
        <div><img src="/picture/works/686626.jpg" /></div>
        <div><img src="/picture/works/686627.jpg" /></div>
        <div><img src="/picture/works/686628.jpg" /></div>
        <div><img src="/picture/works/686629.jpg" /></div>
        <div><img src="/picture/works/686630.jpg" /></div>
    </div-->

     
    <div style="text-align:center;margin-top:10px;margin-bottom:10px">
       
    <div style="margin-bottom:10px">
        <img id="img01" class="min" src="/picture/works/1.jpg" />
           
      
        <img id="img02" class="min"  src="/picture/works/2.jpg" />
        
      
        <img id="img03" class="min"  src="/picture/works/3.jpg" />
    
      </div>
        <div>
        <img id="img04" class="min"  src="/picture/works/4.jpg" />
     
      
        <img id="img05" class="min"  src="/picture/works/5.jpg" />
         
      
        <img id="img06" class="min"  src="/picture/works/6.jpg" />
           </div>
         </div>

          
    
        <!-- 輪播事件 -->
        <!--script>
            $(document).ready(function(){
              $('#slideshow').slick();
            });
        </script-->

        <!-- 圖片縮放 -->
       <script>
            $('#img01,#img02,#img03,#img04,#img05,#img06').click(function () {
                $('#img01,#img02,#img03,#img04,#img05,#img06').toggle();
                $(this).show();
                $(this).toggleClass('min');
                $(this).toggleClass('max');
            });
        </script>


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
										$('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
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
    </form>
</body>
</html>
