<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="webs_home" %>

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
                         
						<li><a class="active"  href="home.aspx">公司介紹</a></li> 
                        <li><a href="product.aspx">產品介紹</a></li> 
						<li><a href="service.aspx">立即回應</a></li>
						<li><a href="woodspace.aspx">時尚木設計</a></li> 
					
					   
					</ul>
			
                </div>  
			
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
<!--start-slider-->
	<div class="slider-bg">
				<div class="side wow bounceInRight" data-wow-delay="0.7s">
					 <div  id="top" class="callbacks_container">
							<ul class="rslides" id="slider4" >
									<li>
										<!--img src="/images/bg2.jpg" style="width:100%"/-->
								   <img src="/images/ik2.jpg" style="width:100%"/>
								
									</li>
									<li>
									<img src="/images/ik1.jpg" style="width:100%"/>
									 
									</li>
									<li>
									<img src="/images/ik3.jpg" style="width:100%"/>
															
									</li>
								 </ul>
							</div>
						</div>
					</div>	
				<!--- banner Slider starts Here --->
	  			<script src="/js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 2000,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!----//End-slider-script---->
				<div class="clearfix"> </div>

		<!--start-welcome-->
     
		<div class="welcome-section">
		   <div class="container">
				 <div class="wel-grid">
                     <br />
				   <div class="col-xs-8 welcome-text">
					   
					   <h3 style="color:white;font-family: Microsoft JhengHei;">誠信、品質、創新</h3>
					   <p style="text-align: justify;font-size: 16px">本企業世豐木業，從事木紋板加工，至今以超過30個年頭，從竹單板、南洋樟木、科技木、天然水染木皮，到碳化木皮等等。本企業在全省服務分別在桃園、台中、高雄均設有服務據點，一直秉持著求新求變的態度，並堅持對於品質、環保的要求，並在2009年通過SGS全球公認品質的誠信標竿。本企業研發部門，也不斷的創新開發新的顏色及技術層面的提升，並精心排選每一原木，將其產品優點，發揮到極致，客戶的肯定就是我們最大的動力。本公司並設有完善的售後服務，有專業、親切的客服人員，可為客戶一一解決難題，「誠信」是本企業最大的宗旨。
</p>
				   </div>
                    
                   
					<div class="col-xs-4 welcome-img">
					   <img src="/images/ik3.jpg" class="img-responsive" alt="" style="height:365px"/>
					</div>
                    
				   <div class="clearfix"> </div>
                      <br />
			   </div>
			    
		    </div>
		</div>
		<!--start-team-->
		  

	
<!--gallery-->
	<!--<div class="gallery">
		<div class="container">
				<h3>Gallery</h3>
			<div class="portfolio-bottom">
				<div class="gallery-one">
					<div class="col-md-3 gallery-left">
						<a href="images/g1.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="/images/g1.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-3 gallery-left">
						<a href="images/g2.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="/images/g2.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-3 gallery-left">
						<a href="images/g4.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="/images/g4.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-3 gallery-left">
						<a href="images/g3.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="/images/g3.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>-->
	<!--swipebox -->	
			<link rel="stylesheet" href="/css/swipebox.css">
				<script src="js/jquery.swipebox.min.js"></script> 
				<script type="text/javascript">
					jQuery(function($) {
						$(".swipebox").swipebox();
					});
				</script>
			<!--//swipebox Ends -->
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
    </form>
</body>
</html>
