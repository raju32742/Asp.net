<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPersonalProdt.aspx.cs" Inherits="UserPersonalProdt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <!-------------for upper banar ------------>
 
<link href="User_design/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="User_design/css/font-awesome.css" rel="stylesheet"/> 
<link href="User_design/css/style1.css" rel="stylesheet" type="text/css" media="all" />

  <link href="All%20Product/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
   <link href="All%20Product/css/style.css" rel="stylesheet" type="text/css" media="all" />  

<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="All%20Product/css/font-awesome.css" rel="stylesheet"/>

 <link href="All%20Product/product.css" rel="stylesheet" />


<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet"/> 
<link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'/>
<!------------------------------------------------------------------>


</head>
<body>
    <form id="form1" runat="server">
  
      
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
					
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>



        	<!-- breadcrumbs --> 
	<div class="container"> 
		<ol class="breadcrumb breadcrumb1">
			<li><a href="success.aspx">Home </a></li>
		<li><a href="User.aspx">User Profile</a></li>
			<li class="active">User Personal Product</li>
		</ol> 
		<div class="clearfix"> </div>
	
	<!-- //breadcrumbs -->


        <!-----------------------end of -------------------------->

   
        <!----------               end of      search button             -------------------->
       
   <div class="product">




            <asp:ListView ID="productList" runat="server" 
                 GroupItemCount="4">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                 <td runat="server">
                        
                   
                     <div class="total">

                                    
                                   <asp:Image ID="Image1" runat="server" 
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("ImageData")) %>'  CssClass="imageP" />
                                     
                              
                                  
                                      </br>
                                             <asp:Label ID="lblTitle" 
                                            runat="server" 
                                            Text='<%#Eval("Title") %>' CssClass="titleP">
                                         </asp:Label>
                                 
                                 
                                    <br />
                                   
                                       <b class="PriceP"> TK 
                                        <asp:Label ID="lblPrice" 
                                            runat="server" 
                                            Text='<%#Eval("Price") %>'>
                                         </asp:Label>
                                   </b>
                                  
                             <br />
                                       
                         <p  class="ProductDe">View Details</p>
                          <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CssClass="w3ls-cart pw3ls-cart"
                                     Text='<%#Eval("id") %>' runat="server"></asp:LinkButton>
                                   
                               
                                    
                            </div>
                 
				
                            
                         </td>      

                          
                    
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
    
     
      </div>

        </div>

    </form>
</body>
</html>
