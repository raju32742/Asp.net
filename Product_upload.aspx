<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_upload.aspx.cs" Inherits="_Default" %>

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

    
      <link rel="stylesheet" href="Product_upload/style.css" type="text/css" />
 
     <link rel="stylesheet" href="register/registration/sweetalert.css"  type="text/css"/>
    <script  src="register/registration/sweetalert.min.js"></script>
    <script type="text/javascript">
        function f1() {
            sweetAlert("Oops...", "Only images (.jpg, .png, .gif and .bmp) can be uploaded", "error");

        }
        function f2() {
            swal("Congratulation!", "Product Upload Completed!", "success");
        }

    </script>
       <link href="header/second%20header.css" rel="stylesheet" />
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
		




  <!-- -------------end of bar---------------------------->

  
             	<!-- breadcrumbs --> 
	<div class="container"> 
		<ol class="breadcrumb breadcrumb1">
			<li><a href="success.aspx">Home </a></li>
			<li><a href="User.aspx">User profile</a></li>
			<li class="active">Product Upload</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->







        <!-----------------------second bar --------->




             <div class="container"> 
                     <h1>Please Upload Your Product For Sell</h1>
                   <div class="signin">

                    <label>Catagory</label>
                    <asp:DropDownList ID="TextBoxCa" CssClass="user" runat="server" placeholder="Select Item" required="required">
                        <asp:ListItem>Select Item</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Cemera</asp:ListItem>
                        <asp:ListItem>Trad-mail</asp:ListItem>
                        <asp:ListItem>Modem</asp:ListItem>
                    </asp:DropDownList>
               <label>Product Title</label>
                    <asp:TextBox ID="TextBoxTitle" CssClass="user" runat="server"  placeholder="Enter Product Title" required="required"></asp:TextBox>
               


                         <label>Address</label>
                     <asp:DropDownList ID="TextBoxLo" CssClass="user"  runat="server"  placeholder="Enter division name" required="required">
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
                  
                <label>Main Image</label>
                    <asp:FileUpload ID="FileUpload1" CssClass="user" runat="server" required="required"/>
               

                 <label>Partial Image</label>
                    <asp:FileUpload ID="FileUpload2" CssClass="user" runat="server" required="required"/>

                   <label>Partial Image</label>
                    <asp:FileUpload ID="FileUpload3" CssClass="user"  runat="server" required="required"/>


                   <label>Condition</label><br />

                      <asp:RadioButtonList id="condition" CssClass="user" runat="server" RepeatDirection="Horizontal"  RepeatLayout="Flow" >
                    <asp:ListItem Text="Used" Value="0"  />
                    <asp:ListItem Text="New" Value="1" />
                    </asp:RadioButtonList><br />
                 
                 <label>Brand</label>

                    <asp:TextBox ID="TextBoxBrand" CssClass="user" runat="server" placeholder="Enter Brand name" required="required"></asp:TextBox>

                  <label>Description</label>
                    <asp:TextBox ID="TextBoxDes" TextMode="MultiLine" CssClass="user1" runat="server" required="required"></asp:TextBox>

                  <label>Model</label>

                    <asp:TextBox ID="TextBoxMo" runat="server" CssClass="user" placeholder="Enter Model name" required="required"></asp:TextBox>

                    <label>Authenticity</label><br />

                     <asp:RadioButtonList id="Authenticity"  runat="server" CssClass="user" RepeatDirection="Horizontal"  RepeatLayout="Flow">
                    <asp:ListItem Text="Original" Value="0"  />
                    <asp:ListItem Text="Replica / Clone" Value="1" />
                    </asp:RadioButtonList><br />
                   
                <label>Price (Tk)</label>
                    <asp:TextBox ID="TextBoxPri" CssClass="user" runat="server" placeholder="1000000" required="required"></asp:TextBox>
             
   <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" OnClientClick="return ValidateRegForm();"/>
  </div>
           </div>
    </form>
</body>
</html>
