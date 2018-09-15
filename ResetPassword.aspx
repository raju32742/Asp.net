<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="logindesign/css/bootstrap.css" rel="stylesheet" />
    <link href="logindesign/css/font-awesome.css" rel="stylesheet" />
    <link href="logindesign/css/styles.css" rel="stylesheet"  type="text/css" media="all"  />

     <link rel="stylesheet" href="register/css/resetpassword.css"  type="text/css" media="all"  />
    <link href="register/registration/sweetalert.css" rel="stylesheet" type="text/css"/>
      
    <!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet"/>  
    <!--     end of  bar         ----------------------------- ----- -->
    <link href="register/second%20header.css" rel="stylesheet" />
    <link rel="stylesheet" href="register/css/resetpassword.css"  type="text/css"  />
    <link href="register/registration/sweetalert.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="register/jquery-2.1.4.min.js"></script>
    <script src="register/registration/sweetalert.min.js"></script>

     <script type="text/javascript">
         function f1()
         {
             sweetAlert("Sorry...", "User Not Found!!", "error");

         }
         function f2()
         {
             swal({
                 title: "HELLO",
                 text: "An email with instructions to reset your password is sent to your registered email",
                 timer: 3000,
                 showConfirmButton: false
             });
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
		
    <!-----------------second bar ------------------->



        <div class="container"> 
		<ol class="breadcrumb breadcrumb1">
			<li><a href="success.aspx">Home </a></li>
			<li><a href="Login.aspx">Login </a></li>
			<li class="active">Reset Password</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->



  <!-- -------------end of bar---------------------------->



         <div class="container"> 
             <h1>Reset Password</h1>
             <div class="signin">

                      <label>User Name</label>
          
               
                 <asp:TextBox ID="txtUserName" CssClass="user"  runat="server" placeholder="Enter UserName" required="required"></asp:TextBox>
             
                 <div class="sim-button button11">
                <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" onclick="btnResetPassword_Click" />
                  </div>
            
                      <asp:Label ID="lblMessage" runat="server"> </asp:Label>

              </div></div>

    </form>
</body>
</html>
