<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


<link href="User_design/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="User_design/css/font-awesome.css" rel="stylesheet"/> 
<link href="User_design/css/style1.css" rel="stylesheet" type="text/css" media="all" />




<!-- Custom Theme files -->
<link href="product/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="product/css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="product/css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style --> 
<link href="product/css/ken-burns.css" rel="stylesheet" type="text/css" media="all" /> <!-- banner slider --> 
<link href="product/css/animate.min.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="product/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"/> <!-- carousel slider -->  
    <link href="product/product.css" rel="stylesheet" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="product/css/font-awesome.css" rel="stylesheet"/> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="product/js/jquery-2.2.3.min.js"></script> 
<!-- //js --> 
<!-- web-fonts -->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'/>
<!-- web-fonts --> 


    <script src="product/js/owl.carousel.js"></script>  
<script>
    $(document).ready(function () {
        $("#owl-demo").owlCarousel({
            autoPlay: 3000, //Set AutoPlay to 3 seconds 
            items: 4,
            itemsDesktop: [640, 5],
            itemsDesktopSmall: [480, 2],
            navigation: true

        });
    });
</script>
<script src="product/js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {

        // Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

        $('.header-two').scrollToFixed();
        // previous summary up the page.

        var summaries = $('.summary');
        summaries.each(function (i) {
            var summary = $(summaries[i]);
            var next = summaries[i + 1];

            summary.scrollToFixed({
                marginTop: $('.header-two').outerHeight(true) + 10,
                zIndex: 999
            });
        });
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

                <!------------------------upper bannar ------------------>
        <!-- header -->
		
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



        	<!-- breadcrumbs --> 
	<div class="container"> 
		<ol class="breadcrumb breadcrumb1">
			<li><a href="success.aspx">Home </a></li>
			
			<li class="active">Product</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->





<!-- deals -->
	<div class="deals"> 
		<div class="container"> 
			<h3 class="w3ls-title">Product Menu</h3>
			<div class="deals-row">
				<div class="col-md-3 focus-grid"> 
					<a href="Mobiles.aspx" class="wthree-btn"> 
						<div class="focus-image"><i class="fa fa-mobile"></i></div>
						<h4 class="clrchg">Mobiles</h4> 
					</a>
				</div>
				<div class="col-md-3 focus-grid"> 
					<a href="Laptops.aspx" class="wthree-btn wthree1"> 
						<div class="focus-image"><i class="fa fa-laptop"></i></div>
						<h4 class="clrchg"> Laptop And Destop</h4> 
					</a>
				</div> 
				<div class="col-md-3 focus-grid"> 
					<a href="Cemera.aspx" class="wthree-btn wthree2"> 
						<div class="focus-image"><i class="fa fa-camera-retro"></i></div>
						<h4 class="clrchg">Cemera</h4>
					</a>
				</div> 
				<div class="col-md-3 focus-grid"> 
					<a href="#" class="wthree-btn wthree3"> 
						<div class="focus-image"><i class="fa fa-wheelchair-alt"></i></div>
						<h4 class="clrchg">Treadmil</h4>
					</a>
				</div> 
				<div class="col-md-2 focus-grid w3focus-grid-mdl"> 
					<a href="Dhaka.aspx" class="wthree-btn wthree3"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Dhaka</h4> 
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl"> 
					<a href="Chittagong.aspx" class="wthree-btn wthree4"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Chittagong</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl"> 
					<a href="#" class="wthree-btn wthree2"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Comilla</h4>
					</a>
				</div> 
				<div class="col-md-2 focus-grid w3focus-grid-mdl"> 
					<a href="#" class="wthree-btn wthree"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Barishal</h4>
					</a>
				</div> 
				<div class="col-md-2 focus-grid w3focus-grid-mdl"> 
					<a href="#" class="wthree-btn wthree5"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Khulna</h4> 
					</a>
				</div> 
				<div class="col-md-2 focus-grid w3focus-grid-mdl"> 
					<a href="#" class="wthree-btn wthree1"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Shylet</h4> 
					</a>
				</div>
				<div class="col-md-3 focus-grid"> 
					<a href="#" class="wthree-btn wthree2"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Rajshahi</h4> 
					</a>
				</div>
				<div class="col-md-3 focus-grid"> 
					<a href="#" class="wthree-btn wthree5"> 
						<div class="focus-image"><i class="fa fa-map-marker"></i></div>
						<h4 class="clrchg">Rangpur</h4> 
					</a>
				</div> 
				<div class="col-md-3 focus-grid"> 
					<a href="AllProduct.aspx" class="wthree-btn wthree3"> 
						<div class="focus-image"><i class="fa fa-product-hunt"></i></div>
						<h4 class="clrchg">All Product</h4> 
					</a>
				</div> 
				<div class="col-md-3 focus-grid"> 
					<a href="success.aspx" class="wthree-btn "> 
						<div class="focus-image"><i class="fa fa-home"></i></div>
						<h4 class="clrchg">Home</h4> 
					</a>
				</div> 
				<div class="clearfix"> </div>
			</div>  	
		</div>  	
	</div> 

        <div class="containerr">
			<p class="pp">© 2017 Shopify . All rights reserved | Design by S M Taslim Uddin raju</p>
		</div>
	</div> 


    </form>


     
	<!-- //cart-js -->	

	<!-- //countdown.js -->
	<!-- menu js aim -->
	<script src="product/js/jquery.menu-aim.js"> </script>
	<script src="product/js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster --> 
</body>
</html>
