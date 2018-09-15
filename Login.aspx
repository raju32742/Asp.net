<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />




    <!--  css file for hideeye------------------------ -->



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

    <!----------------------------------------------   -->
    <!-- //for-mobile-apps -->
    
     <link href="logindesign/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="logindesign/css/font-awesome.css" rel="stylesheet"/> 
    <link href="logindesign/css/style1.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="logindesign/css/styles.css" rel="stylesheet" type="text/css" media="all" />
    <!--       for start bar  --- --------------------- ----------------- -->
<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet"/>

     
    <!--     end of  bar         ----------------------------- ----- -->
    <link href="log_in/css/style.css" rel="stylesheet" type="text/css"  />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css' />
        <link href="register/registration/sweetalert.css" rel="stylesheet" type="text/css"/>

           <script src="register/registration/sweetalert.min.js"></script>

    <script type="text/javascript">
        function f1() {
            sweetAlert("Sorry...", "User Not Found!!", "error");

        }
        function f2() {
            sweetAlert("Sorry...", "UserName or Password May be Wrong!!", "error");
        }
     </script>



</head>
<body>
    <form id="form1" runat="server">

        <!-- start of navigation bar ------------------------- -->
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
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="#">taslimuddinraju7864@gmail.com</a></li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>+8801758739848</li>	
					
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		
        <!--     end of bar ----------------  -->




         <!--    start of navigation bar  ---                    -->




        			<header>
			<div class="container">

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
						<h1><a href="index.html"><span>Shopify</span></a></h1>
					</div>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--miranda">
						<ul class="nav navbar-nav menu__list">
						<li class="menu__item"><a href="index.aspx" class="menu__link">Home</a></li>                          
                            <li class="dropdown menu__item">
                                
	<a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Product<span class="caret"></span></a>
                                
						<ul class="dropdown-menu">
							<li><a href="#">Laptop</a></li>
						   <li><a href="#">Mobile Phone</a></li>
                            <li><a href="#">Cemera</a></li>
					     	</ul>
					     </li>
                            
                        <li class="dropdown menu__item">
      <a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Division<span class="caret"></span></a>
                                
						<ul class="dropdown-menu">
							<li><a href="#">Dhaka</a></li>
						   <li><a href="#">Chittagong</a></li>
                            <li><a href="#">Rajhshahi</a></li>
                            <li><a href="#">Khulna</a></li>
                          <li><a href="#">Barishal</a></li>
                             <li><a href="#">Sylhet</a></li>
                            <li><a href="#">Rangpur</a></li>
					     	</ul>
					     </li>
							
							<li class="menu__item"><a href="registration.aspx" class=" menu__link">Sign Up</a></li>
						 	<li class="menu__item menu__item--current"><a href="#" class=" menu__link">Login</a></li>
							<li class="menu__item"><a href="#" class=" menu__link">Contact</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
	</div>

			</div>
	
 </header>



        <!--                        ----------------end ----------------------->
        <h1>Welcome!<span>Please login...</span></h1>
     
        <div class="login-box">

            <asp:TextBox CssClass="text" ID="TextBoxUNLogin" runat="server" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"></asp:TextBox>

            <asp:TextBox ID="TextBoxPass" TextMode="Password" runat="server" placeholder="Password" required="required"></asp:TextBox>
            <i id="showPass" class=" fa fa-eye" style="font-size:25px;color:white;"></i>



             <div class="remember">
			 <label>
           <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Remember Me?" />
              </label>
              <h4 class="h4444">Forgot your password?<a href="ResetPassword.aspx">Click here.</a></h4>
              <div class="btn">
          <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="LOG IN " />
	  </div></div>

        </div>

      
    </form>

    <script>
        $("#showPass")
          .mouseup(function () {
              $("#TextBoxPass").attr('type', 'password');
          })
          .mousedown(function () {
              $("#TextBoxPass").attr('type', 'text');
          });
    </script>

    <!--      for nevigation var scrolling  ----      -->

<script type="text/javascript" src="logindesign/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="logindesign/js/numscroller-1.0.js"></script>
<script src="logindesign/js/particles.js"></script>
<script src="logindesign/js/app.js"></script>

    
		<!-- Dropdown-Menu-JavaScript -->
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
		



</body>
</html>
