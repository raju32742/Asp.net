<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <title>Homepage</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="h/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="h/css/font-awesome.css" rel="stylesheet" /> 
<!-- Custom Theme files -->
<link href="h/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="h/css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href="h/css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- js -->
<script src="h/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- animation-effect -->
<link href="h/css/animate.min.css" rel="stylesheet"/> 
<script src="h/js/wow.min.js"></script>
<script>
    new WOW().init();
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Alex+Brush' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'/>
<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet"/>
    <link href="register/registration/sweetalert.css" rel="stylesheet" type="text/css"/>
     <script src="register/registration/sweetalert.min.js"></script>

     <script type="text/javascript">
        
         function f2() {
             swal({
                 title: "Please",
                 text: "**************    Login first to see the Product . If you have no account Sign Up first*********",
                 timer: 4000,
                 showConfirmButton: false
             });
         }
     </script>

 
</head>
<body>
    <form id="form1" runat="server">     

        <!-- banner -->
	
	
	
	  	<div class="banner-top">
			<div class="social-bnr-agileits">
				<ul>
					<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>					
				</ul>
			</div>
			<div class="contact-bnr-w3-agile">
				<ul>
					<li><i class="fa fa-envelope" style="font-size:20px" aria-hidden="true"></i><a href="#">taslimuddinraju7864@gmail.com</a></li>
					<li><i class="fa fa-phone" style="font-size:20px" aria-hidden="true"></i>+8801758739848</li>	
					<li>
						<div class="search">
							<input class="search_box" type="checkbox" id="search_box"/>
							<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
							<div class="search_form">
								
								
								
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div> 
	
	<!-- end of 1st layer ------  -->


        <div class="container">
		
		 <header>
     			<!-- navigation -->
			<div class="w3_navigation">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="w3_navigation_pos">
						<h1><a href="#"><span>Shopify</span></a></h1>
					</div>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--miranda">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item menu__item--current"><a href="#" class="menu__link">Home</a></li>                          
                            <li class="dropdown menu__item">
                 <a class=" menu__link">                 
	           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="Login"  Text="Product"/>
                                </a>
						
					     </li>
                            
                        <li class="dropdown menu__item">
      <a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Division<span class="caret"></span></a>
                                
						<ul class="dropdown-menu">
							<li><a>  <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="Login"  Text="Dhaka"/></a></li>
						   <li><a> <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CssClass="Login"  Text="Chittagong"/></a></li>
                            <li><a href="#">Rajhshahi</a></li>
                            <li><a href="#">Khulna</a></li>
                          <li><a href="#">Barishal</a></li>
                             <li><a href="#">Sylhet</a></li>
                            <li><a href="#">Rangpur</a></li>
					     	</ul>
					     </li>
							
							<li class="menu__item"><a href="registration.aspx" class=" menu__link">Sign Up</a></li>
						 	<li class="menu__item"><a href="Login.aspx" class=" menu__link">Login</a></li>
							<li class="menu__item"><a href="AboutMe.aspx" class=" menu__link">Contact</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
	</div>
        <div class="clearfix"></div>
             </header>
    </div>
  <!--      ------------------ --------- -->
        <div class="banner-info">
				<h1 class="animated fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms">Welcome to Shopify Online shopping</h1>
				<div class="banner-info1 animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
					<ul id="flexiselDemo1">			
						<li>
							<div class="banner-info1-grid">
								<img src="h/images/1.png" alt=" " class="img-responsive" />
								<h3>Laptop</h3>
								<p>In this sector any client can find his/her 
								suitable Laptop in a effective cost.</p>
							</div>
						</li>
						<li>
							<div class="banner-info1-grid">
								<img src="h/images/2.png" alt=" " class="img-responsive" />
								<h3>Digital Cemera</h3>
									<p>In this sector any client can find his/her 
								suitable Digital Cemera in a effective cost.</p>
							</div>
						</li>
						<li>
							<div class="banner-info1-grid">
								<img src="h/images/3.png" alt=" " class="img-responsive" />
								<h3>Samrt Phone</h3>
									<p>In this sector any client can find his/her 
								suitable Smart Phone in a effective cost.</p>
							</div>
						</li>
						
						<li>
							<div class="banner-info1-grid">
								<img src="h/images/4.png" alt=" " class="img-responsive" />
								<h3>Trad-mail</h3>
									<p>In this sector any client can find his/her 
								suitable trad-mail in a effective cost.</p>
							</div>
						</li>
					</ul>
						<script type="text/javascript">
						    $(window).load(function () {
						        $("#flexiselDemo1").flexisel({
						            visibleItems: 3,
						            animationSpeed: 1000,
						            autoPlay: true,
						            autoPlaySpeed: 3000,
						            pauseOnHover: true,
						            enableResponsiveBreakpoints: true,
						            responsiveBreakpoints: {
						                portrait: {
						                    changePoint: 480,
						                    visibleItems: 1
						                },
						                landscape: {
						                    changePoint: 640,
						                    visibleItems: 2
						                },
						                tablet: {
						                    changePoint: 768,
						                    visibleItems: 2
						                }
						            }
						        });

						    });
					</script>
					<script type="text/javascript" src="h/js/jquery.flexisel.js"></script>
					
				</div>
			</div>
	<div class="copyright-wthree">
		<p>&copy; 2017 Shopify . All Rights Reserved | Design by <a href="#"> S M Taslim Uddin Raju</a></p>
			</div>
<!-- //footer -->
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


    </form>

    <!-- for bootstrap working -->
	<script src="h/js/bootstrap.js"></script>
<!-- //for bootstrap working -->



			<script>
			    $(document).ready(function () {
			        $(".dropdown").hover(
						function () {
						    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
						    $(this).toggleClass('open');
						},
						function () {
						    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
						    $(this).toggleClass('open');
						}
					);
			    });
			</script>
		<!-- //Dropdown-Menu-JavaScript -->
<!-- Calendar -->
				<link rel="stylesheet" href="h/css/jquery-ui.css" />
				<script src="h/js/jquery-ui.js"></script>
				  <script>
				      $(function () {
				          $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
				      });
				  </script>
			<!-- //Calendar -->
 <!-- start-smoth-scrolling -->
<script type="text/javascript" src="h/js/move-top.js"></script>
<script type="text/javascript" src="h/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
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
<!-- //here ends scrolling icon -->
<!--js for bootstrap working-->
	<script src="h/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- script-for-menu -->
					<script>
					    $("span.menu").click(function () {
					        $(".top-nav ul").slideToggle("slow", function () {
					        });
					    });
					</script>


    </body>
</html>
