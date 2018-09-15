<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>


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

    <!--                      end of bar ------------------>

     <link rel="stylesheet" href="register/css/style.css" type="text/css" />
    <link href="register/second%20header.css" rel="stylesheet" />
    <link rel="stylesheet" href="register/registration/sweetalert.css"  type="text/css"/>
    <script  src="register/registration/sweetalert.min.js"></script>
    <script type="text/javascript">
        function f1()
        {
            sweetAlert("Oops...", "User Name Already Exist!!", "error");

        }
        function f2() {
            swal("Congratulation!", "Your Registration Completed!", "success");
        }
       
    </script>

</head>
<body>
    <form id="form1" runat="server">
       <!--   bar  ----  -->


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
			
			<li class="active">Registration</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->



  <!-- -------------end of bar---------------------------->

  
   <div class="container"> 
  
<h1>Register Please</h1>
	<div class="signin">
                      <label>First Name</label>
                    <asp:TextBox ID="TextBoxFN" CssClass="user"  runat="server" placeholder="First Name" required="required"  ></asp:TextBox>
                     <label>Last Name</label>
                      <asp:TextBox ID="TextBoxLN" CssClass="user" runat="server"  placeholder="Last Name" required="required" ></asp:TextBox>
                          <label>User name</label>
                    <asp:TextBox ID="TextBoxUN"  CssClass="user" runat="server"  placeholder="User Name" required="required"></asp:TextBox>
               
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="TextBoxUN" ErrorMessage="" ></asp:RequiredFieldValidator>
                  
                     <label>Email</label>
                    <asp:TextBox ID="TextBoxEM" CssClass="user" runat="server" placeholder="raju@gmail.com" required="required"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEM" ErrorMessage=""></asp:RegularExpressionValidator>
                   
                      <label>Division</label>
                     <asp:DropDownList ID="TextBoxDV" CssClass="user" runat="server"  placeholder="Enter division name" required="required">
                         <asp:ListItem>Select Division Name</asp:ListItem>
                         <asp:ListItem>Dhaka</asp:ListItem>
                         <asp:ListItem>Chittagong</asp:ListItem>
                         <asp:ListItem>Rajshahi</asp:ListItem>
                         <asp:ListItem>Rangpur</asp:ListItem>
                         <asp:ListItem>Barishal</asp:ListItem>
                         <asp:ListItem>Khulna</asp:ListItem>
                         <asp:ListItem Value="Comilla"></asp:ListItem>
                         <asp:ListItem>Sylhet</asp:ListItem>
                    </asp:DropDownList>   
                    
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxDV" ErrorMessage=""></asp:RequiredFieldValidator>
                   
               <label>User Image</label>
           <asp:FileUpload ID="FileUpload1" CssClass="user" runat="server" />

              <label>Mobile no</label>
                     <asp:TextBox ID="TextBoxPhon" runat="server" Length="14" CssClass="user"  placeholder="+880175*********" required="required"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="user" runat="server" ControlToValidate="TextBoxPhon" ErrorMessage="" ValidationExpression="^([+]{1})([0-9]{13})$"></asp:RegularExpressionValidator>
              
             <label>Date of Birth</label>
             <asp:TextBox ID="TextBoxBirth" runat="server"  CssClass="user"  placeholder="March 20,1995" required="required"></asp:TextBox>
         
         <label>Password</label>
               <asp:TextBox ID="TextBoxPASS" runat="server" CssClass="pass" OnTextChanged="TextBoxPASS_TextChanged" TextMode="Password" placeholder="Password" required="required"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="pass" ErrorMessage="" ControlToValidate="TextBoxPASS"  ToolTip="Password is a REQUIRED field"></asp:RequiredFieldValidator>

               <label>Confirm Password</label>
              <asp:TextBox ID="TextBoxCPASS" runat="server" CssClass="pass" TextMode="Password"  placeholder="Password" required="required"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBoxCPASS" ControlToCompare="TextBoxPASS" ErrorMessage=""  ToolTip="Password must be the same" />

                
                  
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="return ValidateRegForm();" Text="Register"/>

         <h3>Go to Login Page <a href="Login.aspx">Click here.</a></h3>
        </div>
 
   </div>
        </form>

    <script lang="javascript" type="text/javascript">
        function ValidateRegForm() {
         var email = document.getElementById("<%=TextBoxEM.ClientID%>");
        var filter = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email.value)) {
            sweetAlert("Oops..","Please provide a valid email address","error");
             email.focus(); return false; 
        }
        return true;
    }
</script>



</body>
</html>
