<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_des.aspx.cs" Inherits="product_des" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="User_design/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="User_design/css/font-awesome.css" rel="stylesheet"/> 
<link href="User_design/css/style1.css" rel="stylesheet" type="text/css" media="all" />


    <!---------------------------  full design ----------------------------->



    <!-- Custom Theme files -->
<link href="product_des/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="product_des/css/style.css" rel="stylesheet" type="text/css" media="all" /> 


<link href="product_des/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"/> <!-- carousel slider -->  
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="product_des/css/font-awesome.css" rel="stylesheet"/> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="product_des/js/jquery-2.2.3.min.js"></script> 
<script src="product_des/js/owl.carousel.js"></script>
<script src="product_des/js/bootstrap.js"></script>
<!--flex slider-->
<script src="product_des/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="product_des/css/flexslider.css" type="text/css" media="screen" />
<script>
    // Can also be used with $(document).ready()
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>
<!--flex slider-->
<script src="product_des/js/imagezoom.js"></script>
<!-- //js --> 
<!-- web-fonts -->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'/>





  
 <link href="product_des/StyleSheet.css" rel="stylesheet" />




<link href="Cssforcomment/comment.css" rel="stylesheet" />




     <style type="text/css">
   .link {
            text-decoration:none;
            color:#808080;
        }
            .link:hover {
                color:rgba(253, 0, 255, 0.94);
            }
  </style>



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
        <!-----------------------end of -------------------------->

  <!---------------------scroll bar -------------------------->



        	<!-- //header-two -->
		<div class="header-three"><!-- header-three -->
			<div class="container">
				<div class="menu">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger" href="#0">Shopify</a>
						
					</div> <!-- .cd-dropdown-wrapper -->	 
				</div>
				<div class="move-text">
					<div class="marquee"><a href="#"> New collections are available here...... <span>Welcome to Our online Shopify </span> <span> You can choice your desire product from here</span></a></div>
					<script type="text/javascript" src="product_des/js/jquery.marquee.min.js"></script>
					<script>
					    $('.marquee').marquee({ pauseOnHover: true });
					    //@ sourceURL=pen.js
					</script>
				</div>
			</div>
		</div>

        <!---------end of scroll bar ---------------------->
	<!-- breadcrumbs --> 
	<div class="container"> 
		<ol class="breadcrumb breadcrumb1">
			<li><a href="success.aspx">Home</a></li>
            <li><a href="product.aspx">Main Menu</a></li>
            <li><a href="AllProduct.aspx">All Products</a></li>
			
			<li class="active">Product Description</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->
<!--------------------for image ------------------------------->


	<div class="products">	 
		<div class="container">  
        <div class="single-page">
				<div class="single-page-row" id="detail-21">
					<div class="col-md-6 single-top-left">	
						<div class="flexslider">
							<ul class="slides">
								<li> 
									<div class="thumb-image"> 
                                    
               <img runat="server"  id="ImgTest" src="ImageData"  data-imagezoom="true" class="img-responsive" alt=""/>       
                                      
									</div>
								</li>
								<li>

									 <div class="thumb-image">
                                          
                                    <img runat="server"  id="imageTest2"  src="ImageData2" data-imagezoom="true" class="img-responsive" alt="" />    

									 </div>
								</li>
								<li>
								   <div class="thumb-image"> 
                                  <img runat="server"  id="imageTest3"  data-imagezoom="true" class="img-responsive" alt="" src="ImageData3"/>   
                                        
								   </div>
								</li> 
							</ul>
						</div>
					</div>

 

                    

					<div class="col-md-6 single-top-right">
                         <div class="details">
						<h3 class="item_name"> <asp:Label ID="lblTitle" CssClass="bbb" runat="server"> </asp:Label></h3>
					   

					   <ul>
                           <li><i>Product Id </i>
                            <p class="pp"> : <asp:Label ID="lblID" CssClass="bb" runat="server"></asp:Label> </p>
                           </li>
                           <li><i> Device Type</i>
                               <p class="pp"> : <asp:Label ID="lblCatagory" CssClass="bb" runat="server"></asp:Label> </p>
                           </li>
                           <li><i>Condition</i>
                               <p class="pp"> : <asp:Label ID="lblCondition" CssClass="bb" runat="server"></asp:Label> </p>

                           </li>
                           <li><i>Brand </i>
                               <p class="pp"> : <asp:Label ID="lblBrand" CssClass="bb" runat="server"></asp:Label> </p>

                           </li>
                           <li><i> Model</i>
                               <p class="pp"> : <asp:Label ID="lblModel" CssClass="bb"  runat="server"></asp:Label></p>

                           </li>
                           <li><i> Authenticity </i>
                               <p class="pp">: <asp:Label ID="lblAuthenticity" CssClass="bb" runat="server"></asp:Label></p>
                           </li>
					   </ul>		
							 
				  </div>
			  <div class="price">
                <p class="tk">TK  
            <asp:Label ID="lblPrice" runat="server"></asp:Label></p> 
			  </div>			
					</div>
				   <div class="clearfix"> </div>  
				</div>
				<div class="single-page-icons social-icons"> 
					<ul>
						<li><h4>Share on</h4></li>
						<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
						<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
						<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
						<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
						<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
					</ul>
				</div>
			</div> 













<!-- collapse-tabs -->
			<div class="collpse tabs">
				<h3 class="w3ls-title">For More Details</h3> 
				<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
					
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									<i class="fa fa-info-circle fa-icon" aria-hidden="true"></i> Description <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a> 
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								 <asp:Label ID="lblDescription" runat="server"></asp:Label>
							</div>
						</div>
					</div>
					
					
				</div>
			</div>
			<!-- //collapse --> 
			









        </div>
    </div>














<!-----------------end of details ------------------------------->





      <!---------------- for contact ---------------------------------->
        
       <div class="contact">
           <h2 class ="hhhh"><p class="pppppp">Contact</p></h2>
       

            <ul>
                           <li><i>Name </i>
                            <p class="ppppppp"> :  <asp:Label ID="lblFullName" CssClass="bb" runat="server"></asp:Label> </p>
                           </li>
                           <li><i> Email</i>
                               <p class="ppppppp"> :  <asp:Label ID="lblEmail" CssClass="bb" runat="server"></asp:Label> </p>
                           </li>
                           <li><i>Mobile No</i>
                               <p class="ppppppp"> : <asp:Label ID="lblMoN" CssClass="bbbbbb" runat="server"></asp:Label> </p>

                           </li>
                           <li><i>Address </i>
                               <p class="ppppppp"> : <asp:Label ID="lblLocation" CssClass="bb"  runat="server"></asp:Label> </p>

                           </li>
                         
					   </ul>	


       </div>
        
        
                

           
                 
                              
          
              
               
                 
            
        
        
        
        
        
        
        
        
        
        
        
       <!------------------------------------end --------------------->      
     
        
    
           
    


         
           
 
 
       
           
 
         
      
          
        

       
               
         


        <!-- -comment section    ------------->

    <div style="padding:15px 20px; width:560px; margin-left:12%;">
      <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>


        <img runat="server"  id="User_image" class="User_image" src="User_image"/>

         <!-- <asp:Image ID="Image1" runat="server" ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("User_image")) %>'  style="width:30px; height:30px; border-radius:50%;" />-->

      <asp:Button ID="btnCommentPublish" Text="Comment" runat="server" style="background-color:#4800ff; border:1px solid #4800ff; padding:7px 25px; border-radius:5px; color:#fff; float:right;" OnClick="btnCommentPublish_Click" />
          
         </div><br />
   

         <!----       comment publish   --------------------->
       <div>
        <asp:GridView ID="GridViewComment" runat="server" AutoGenerateColumns="false" BorderWidth="0" Width="50%" OnRowDataBound="GridViewComment_RowDataBound" >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                    <div style="width:100%;">
                                    <table style="margin:3px 5px; width:100%;">
                                        <tr>
                                            <td style="width:55px; vertical-align:text-top;">                                                                                                               
                                                <asp:Image ID="ImageParent" runat="server" style="width:50px; border:1px solid pink; height:50px;border-radius:100%;"  ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("User_image")) %>'  />
                                            </td>
                                            <td style="padding:0px 5px; text-align:left; vertical-align:top;">
                                              <asp:Label ID="lblCommentID" runat="server" Visible="false" Text='<% #Eval("CommentID") %>'></asp:Label>
                                            
                                                  <div class="User_nameP">
                                               <asp:Label ID="lblFirstName" runat="server"  Text='<% #Eval("FirstName") %>'></asp:Label>
                                               <asp:Label ID="lblLastName" runat="server" Text='<% #Eval("LastName") %>'></asp:Label><br />
                                               </div><br />

                                              <asp:Label ID="lblCommentMessage" runat="server" Text='<% #Eval("CommentMessage") %>'></asp:Label><br />
                                               <a class="link" id='lnkReplyParent<%# Eval("CommentID") %>' href="javascript:void(0)" onclick="showReply(<%# Eval("CommentID") %>); return false;">Reply</a>&nbsp;
                                     
                                                 <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%# Eval("CommentID") %>); return false;">Cancel</a>
                                                  <b>(</b>
                                                   <asp:Label ID="lblCommentDate" runat="server" Text='<% #Eval("CommentDate") %>'></asp:Label>
                                                  <b>)</b>
                                                 <div id='divReply<%# Eval("CommentID") %>' style="display:none; margin-top:5px;">
                                                    <asp:TextBox ID="txtCommentReplyParent" runat="server" CssClass="divreply" TextMode="MultiLine" ></asp:TextBox>
                                                    <asp:Button ID="btnReplyParent" runat="server" Text="Reply" style="float:right;margin:5px;" OnClick="btnReplyParent_Click" />
                                               </div>
                                            </td>
                                        </tr>
                                     </table>
                     </div>
                        <div style="padding-left:75px;">
                            <asp:GridView ID="GridViewChild" runat="server" AutoGenerateColumns="false" BorderWidth="0" Width="50%">
                                 <Columns>
                                  <asp:TemplateField>
                                    <ItemTemplate>
                                        <div style="width:100%;" >
                                    <table style="margin:3px 5px; width:100%;">
                                        <tr>
                                            <td style="width:55px; vertical-align:text-top;">                                                                                                               
                                                <asp:Image ID="ImageChild" runat="server" style="width:50px;  border:1px solid pink; height:50px;border-radius:100%;"  ImageUrl='<%# "data:Image/png;base64,"
                                                       + Convert.ToBase64String((byte[])Eval("User_image")) %>'  />
                                            </td>
                                            <td style="padding:0px 5px; text-align:left; vertical-align:top;">
                                              <asp:Label ID="lblParentCommentID" runat="server" Visible="false" Text='<% #Eval("ParentCommentID") %>'></asp:Label>
                                              <asp:Label ID="lblChildCommentID" runat="server" Visible="false" Text='<% #Eval("CommentID") %>'></asp:Label>
                                                <div class="User_name">
                                               <asp:Label ID="lblFirstName" runat="server"  Text='<% #Eval("FirstName") %>'></asp:Label>
                                               <asp:Label ID="lblLastName" runat="server" Text='<% #Eval("LastName") %>'></asp:Label><br />
                                               </div>
                                              <asp:Label ID="lblChildCommentMessage" runat="server" Text='<% #Eval("CommentMessage") %>'></asp:Label><br />
                                               <a class="link" id='lnkReplyChild<%# Eval("CommentID") %>' href="javascript:void(0)" onclick="showReply(<%# Eval("CommentID") %>); return false;">Reply</a>&nbsp;
                                               <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%# Eval("CommentID") %>); return false;">Cancel</a>
                                                <b>(</b>
                                                   <asp:Label ID="lblCommentDate" runat="server" Text='<% #Eval("CommentDate") %>'></asp:Label>
                                                  <b>)</b>
                                                
                                                <div id='divReply<%# Eval("CommentID") %>' style="display:none; margin-top:5px;">
                                                    <asp:TextBox ID="txtCommentReplyChild" runat="server" TextMode="MultiLine" CssClass="divreply"></asp:TextBox>
                                                    <asp:Button ID="btnReplyChild" runat="server" Text="Reply" style="float:right;margin:5px;" OnClick="btnReplyChild_Click" />
                                               </div>  
                                            </td>
                                        </tr>
                                     </table>
                     </div>
                                    </ItemTemplate>
                                  </asp:TemplateField>
                                 </Columns>
                            </asp:GridView>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

    </form>

  <script type="text/javascript">
      var prevComment = [];
      function showReply(n) {
          $("#divReply" + n).show();
          return false;
         
      }
      function closeReply(n) {
          $("#divReply" + n).hide();
          return false;
      }
  </script>


</body>
</html>
