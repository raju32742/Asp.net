<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     <link href="logindesign/css/bootstrap.css" rel="stylesheet" />
    <link href="logindesign/css/font-awesome.css" rel="stylesheet" />
    <link href="logindesign/css/styles.css" rel="stylesheet"  type="text/css" media="all"  />
        <!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet"/>  
    <!--     end of  bar         ----------------------------- ----- -->



    <link href="register/css/changepassword.css" rel="stylesheet" type="text/css" />
    <link href="register/registration/sweetalert.css" rel="stylesheet" type="text/css" />
    <link href="register/second%20header.css" rel="stylesheet" />
    <script type="text/javascript" src="register/jquery-2.1.4.min.js"></script>
    <script src="register/registration/sweetalert.min.js"></script>

     <script type="text/javascript">
         function f1()
         {
             sweetAlert("Hey", "Password Changed Successfully!!", "success");

         }
         
         function f2() {
             sweetAlert("Oops", "Password Reset link has expired or is invalid", "error");

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
				<li><a href="Login.aspx">Login</a></li>
			<li class="active">Change Password</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->



  <!-- -------------end of bar---------------------------->




          <div class="container"> 

            <h1>Change Password</h1>
       
           <div class="signin">

                <label>New Password</label>

            <asp:TextBox ID="txtNewPassword" CssClass="pass" TextMode="Password" 
            runat="server"   placeholder="Password" required="required" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword"  runat="server" ErrorMessage=""
                Text="*"  ControlToValidate="txtNewPassword" ForeColor="Red">
            </asp:RequiredFieldValidator>
         
                 <label> Confirm Password</label>
           
        
            <asp:TextBox ID="txtConfirmNewPassword" CssClass="pass" TextMode="Password" runat="server"  placeholder="Password" required="required" >
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmNewPassword" 
                runat="server" ErrorMessage="" Text="*" 
                ControlToValidate="txtConfirmNewPassword"
                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
                ErrorMessage=""
                ControlToValidate="txtConfirmNewPassword" ForeColor="Red" 
                ControlToCompare="txtNewPassword"
                Display="Dynamic" Type="String" Operator="Equal" Text="*">
            </asp:CompareValidator>
        
                 <div class="sim-button button11">
         <asp:Button ID="btnSave" runat="server" style="color:white" Text="Save" onclick="btnSave_Click"/>
          </div>
     
            <asp:Label ID="lblMessage" runat="server"> </asp:Label>
       
     
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
         <h3>Go to Login Page <a href="Login.aspx">Click here.</a></h3>
      </div>
                
              </div>
    </form>
</body>
</html>
