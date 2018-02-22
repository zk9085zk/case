<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product2.aspx.cs" Inherits="webs_product2" %>

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

      <script>
    $(function() {
	var Accordion = function(el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.link');
		// Evento
		links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
	}

	Accordion.prototype.dropdown = function(e) {
		var $el = e.data.el;
			$this = $(this),
			$next = $this.next();

		$next.slideToggle();
		$this.parent().toggleClass('open');

		if (!e.data.multiple) {
			$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
		};
	}	

	var accordion = new Accordion($('#accordion'), false);
});

        </script>

    <style>
        html, body{
  	font-family: Microsoft JhengHei;
}
        ul li
{
list-style-type:none;
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

        table
        {
            margin: 0px auto 0px auto;
        }

         .accordion {
 	        width: 100%;
 	        max-width: 360px;
 	        margin: 30px auto 20px;
 	        background: #FFF;
 	        -webkit-border-radius: 4px;
 	        -moz-border-radius: 4px;
 	        border-radius: 4px;
         }

        .accordion .link {
	        cursor: pointer;
	        display: block;
	        padding: 15px 15px 15px 42px;
	        color: #4D4D4D;
	        font-size: 14px;
	        font-weight: 700;
	        border-bottom: 1px solid #CCC;
	        position: relative;
	        -webkit-transition: all 0.4s ease;
	        -o-transition: all 0.4s ease;
	        transition: all 0.4s ease;
        }

        .accordion li:last-child .link {
	        border-bottom: 0;
        }

        .accordion li i {
	        position: absolute;
	        top: 16px;
	        left: 12px;
	        font-size: 18px;
	        color: #595959;
	        -webkit-transition: all 0.4s ease;
	        -o-transition: all 0.4s ease;
	        transition: all 0.4s ease;
        }

        .accordion li i.fa-chevron-down {
	        right: 12px;
	        left: auto;
	        font-size: 16px;
        }

        .accordion li.open .link {
	        color: #b63b4d;
        }

        .accordion li.open i {
	        color: #b63b4d;
        }
        .accordion li.open i.fa-chevron-down {
	        -webkit-transform: rotate(180deg);
	        -ms-transform: rotate(180deg);
	        -o-transform: rotate(180deg);
	        transform: rotate(180deg);
        }

        /**
         * Submenu
         -----------------------------*/
         .submenu {
 	        display: none;
 	        background: #444359;
 	        font-size: 14px;
         }

         .submenu li {
 	        border-bottom: 1px solid #4b4a5e;
         }

         .submenu a {
 	        display: block;
 	        text-decoration: none;
 	        color: #d9d9d9;
 	        padding: 12px;
 	        padding-left: 42px;
 	        -webkit-transition: all 0.25s ease;
 	        -o-transition: all 0.25s ease;
 	        transition: all 0.25s ease;
         }

         .submenu a:hover {
 	        background: #b63b4d;
 	        color: #FFF;
         }
.img{
    width:230px;
    height:270px;
}
.lab1{
     font:bold;font-size:15px; color:#e8e8e8;
}
.ph-button {
	
    border-style: solid;
    border-width: 0px 0px 3px;
    box-shadow: 0 -1px 0 rgba(255, 255, 255, 0.1) inset;
    color: #FFFFFF;	   
    border-radius: 6px;
    cursor: pointer;
    display: inline-block;
    font-style: normal;
    overflow: hidden;
    text-align: center;
    text-decoration: none;
    text-overflow: ellipsis;
    transition: all 200ms ease-in-out 0s;
    white-space: nowrap;	
    font-family: "Gotham Rounded A","Gotham Rounded B",Helvetica,Arial,sans-serif;
    font-weight: 100;	
    padding: 3px 13px 3px;
    font-size: 16px;
	
}
.ph-btn-blue {

    border-color: #326E99;
    background-color: #ce8452;
}

.ph-btn-blue:hover, .ph-btn-blue:focus, .ph-btn-blue:active {
    background-color: #ce8452;
    border-color: #326E99;   
}
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    	<!--start-header-->
	<div id="home" class="header">
			<!--logo-->
			<div class="header-top" style="width:100%">
              
                <a class="navbar-brand page-scroll index" href="home.aspx" >世豐木業</a>
			<div class="container">
		<!--top-nav-->
                  
			<div class="top-nav">
				

					<ul>
                         
						<li><a  href="home.aspx">公司介紹</a></li> 
                        <li><a class="active" href="product.aspx">產品介紹</a></li> 
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
				<div class="clearfix"> </div>
		</div>

		<div class="head-bg">
		</div>
		<!--/header-->
   
		 <div class="row">		     

             <div class="col-md-2" style="margin-top:7%;margin-left:3%">


                  <ul id="accordion" class="accordion">
		        <li>
			        <div class="link" style="font-size:20px" ><i class="glyphicon glyphicon-tree-conifer"></i>天然系列<i class="fa fa-chevron-down"></i></div>
			        <ul class="submenu">
				        <li><a href="product.aspx" style="font-size:16px">天然木紋版系列</a></li>
				        <li><a href="product2.aspx" style="font-size:16px">天然塗裝木紋版系列</a></li>
			        </ul>
		        </li>
		        <li>
			        <div class="link" style="font-size:20px"><i class="glyphicon glyphicon-tree-deciduous"></i>科技系列<i class="fa fa-chevron-down"></i></div>
			        <ul class="submenu">
				        <li><a href="product3.aspx" style="font-size:16px">科技木紋版系列</a></li>
				        <li><a href="product4.aspx" style="font-size:16px">科技塗裝木紋版系列</a></li>
				
			        </ul>
		        </li>
	        </ul>
              </div>
		    
                 
					       
		 <div class="col-md-8" style="margin-top:2%;margin-left:3%">


			      <h2 style="text-align:center">天然塗裝木紋版系列</h2>
				  

                       <asp:ListView ID="ListView1" runat="server" DataKeyNames="product_id" DataSourceID="SqlDataSource1" GroupItemCount="4">

                            <AlternatingItemTemplate>
                                <td runat="server" style="padding:8px;">
                                     <a href="detail.aspx?id=<%# Eval("product_id") %>"> 
                                    <asp:image ID="Image1" runat="server" ImageUrl='<%# Eval("product_img")%>' CssClass="img" />
                                        	</a>
                                    <br />
                                    <div style="background-color:#434343;width:230px;padding:5px;text-align:center">
                                   
                                    <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' CssClass="lab1" />
                              
                                    </div>
                                </td>
                            </AlternatingItemTemplate>


                            <EditItemTemplate>
                                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">product_id:
                                    <asp:Label ID="product_idLabel1" runat="server" Text='<%# Eval("product_id") %>' />
                                    <br />
                                    product_name:
                                    <asp:TextBox ID="product_nameTextBox" runat="server" Text='<%# Bind("product_name") %>' />
                                    <br />
                                    product_img:
                                    <asp:TextBox ID="product_imgTextBox" runat="server" Text='<%# Bind("product_img") %>' />
                                    <br />
                                   
                                    product_size:
                                    <asp:TextBox ID="product_sizeTextBox" runat="server" Text='<%# Bind("product_size") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                    <br />
                                </td>
                            </EditItemTemplate>
                            

                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;">
                                    <tr>
                                        <td>未傳回資料。</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>

                            <EmptyItemTemplate>
                                <td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>

                            <InsertItemTemplate>
                                <td runat="server" >product_id:
                                    <asp:TextBox ID="product_idTextBox" runat="server" Text='<%# Bind("product_id") %>' />
                                    <br />
                                    product_name:
                                    <asp:TextBox ID="product_nameTextBox" runat="server" Text='<%# Bind("product_name") %>' />
                                    <br />
                                    product_img:
                                    <asp:TextBox ID="product_imgTextBox" runat="server" Text='<%# Bind("product_img") %>' />
                                    <br />
                                   
                                    product_size:
                                    <asp:TextBox ID="product_sizeTextBox" runat="server" Text='<%# Bind("product_size") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                    <br />
                                </td>
                            </InsertItemTemplate>

                            <ItemTemplate>
                                <td runat="server" style="padding:5px;">
                                       <a href="detail.aspx?id=<%# Eval("product_id") %>"> 
                                    <asp:image ID="Image1" runat="server" ImageUrl='<%# Eval("product_img")%>' CssClass="img" />
                                        	</a>
                                    <br />
                                   <div style="background-color:#434343;width:230px;padding:5px;text-align:center">
                                   
                                    <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' CssClass="lab1"/>
                                    
                                    </div>
                                </td>
                            </ItemTemplate>
                            
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:0px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                       <td runat="server"  style="text-align: center;font-family: Verdana, Arial, Helvetica, sans-serif; color:chocolate;">
                                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" FirstPageText="第一頁" ShowNextPageButton="False" ShowPreviousPageButton="False"  ButtonCssClass="ph-button ph-btn-blue" />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowNextPageButton="False" PreviousPageText="上一頁" ShowPreviousPageButton="True" ButtonCssClass="ph-button ph-btn-blue" />
                    <asp:NumericPagerField ButtonCount="10"  ButtonType="Button" />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowNextPageButton="True" NextPageText="下一頁" ShowPreviousPageButton="False" ButtonCssClass="ph-button ph-btn-blue" />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" LastPageText="最後一頁" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="ph-button ph-btn-blue" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>

                            <SelectedItemTemplate>
                                <td runat="server" style="background-color:#008A8C;color: #FFFFFF">product_id:
                                    <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                                    <br />
                                    product_name:
                                    <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
                                    <br />
                                    product_img:
                                    <asp:Label ID="product_imgLabel" runat="server" Text='<%# Eval("product_img") %>' />
                                    <br />
                                   
                                    product_size:
                                    <asp:Label ID="product_sizeLabel" runat="server" Text='<%# Eval("product_size") %>' />
                                    <br />
                                </td>
                            </SelectedItemTemplate>
                  </asp:ListView>
     
      
                  <p>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:boardConnectionString %>" 
                          SelectCommand="SELECT * FROM product WHERE product_class='2'" 
                          OldValuesParameterFormatString="original_{0}" 
                          ProviderName="<%$ ConnectionStrings:boardConnectionString.ProviderName %>">
                      </asp:SqlDataSource>
                  </p>
             </div>
			 </div>
        </div>
	<!--/start-reservations-->
          	
	<!--/end-reservations-->	
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
										
										var defaults = {
								  			//containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
        
                                <script>
                                $(function() {
	                            var Accordion = function(el, multiple) {
		                            this.el = el || {};
		                            this.multiple = multiple || false;

		                            // Variables privadas
		                            var links = this.el.find('.link');
		                            // Evento
		                            links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
	                            }

	                            Accordion.prototype.dropdown = function(e) {
		                            var $el = e.data.el;
			                            $this = $(this),
			                            $next = $this.next();

		                            $next.slideToggle();
		                            $this.parent().toggleClass('open');

		                            if (!e.data.multiple) {
			                            $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
		                            };
	                            }	

	                            var accordion = new Accordion($('#accordion'), false);
                            });

                                    </script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    </form>
</body>
</html>
