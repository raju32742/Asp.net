<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutMe.aspx.cs" Inherits="AboutMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <!-------------for upper banar ------------>
    
<link href="User_design/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="User_design/css/font-awesome.css" rel="stylesheet"/> 
<link href="User_design/css/style1.css" rel="stylesheet" type="text/css" media="all" />

<link href="About%20me/StyleSheet.css" rel="stylesheet" />
<link href="Cssforcomment/comment.css" rel="stylesheet" />
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
         function f1() {
             sweetAlert("Sorry...", "You can Delete only Your Comment!!", "error");

         }
     </script>

    <!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet"/> 
<link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'/>
<!------------------------------------------------------------------>
</head>
<body>
    <form id="form1" runat="server">
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
			<li><a>
   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  CssClass="home" Text="Home"/>
			    </a></li>			
			<li class="active">User Profile</li>
		</ol> 
		<div class="clearfix"> </div>
	
	<!-- //breadcrumbs -->
  
    <div class="details">

        <div class="col1">
            <br />
             <img  id="img1" runat="server" class="img1" src ="About%20me/Untitled-1ccc.jpg" />
            <br />
            <br />
           <br />
            <br />
            <br />
            <br />
        <i class="fa fa-graduation-cap"></i> <p class="Ep">Education</p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

          
           <i class="fa fa-pencil"> </i><p class="Sk">Skill</p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
               <br />   
                    <br />     
         <i class="fa fa-map-marker"></i><p class="AW">About Website</p>
      
           
        </div>
        <div class="col2">
               <p class="name">S M Taslim Uddin</p>
                 <p class="nameR">Raju</p>
             <p class="ss">Student,CSE,KUET</p>




            <div class="link">
                <ul>
                     <li>
                       <a href="#">  
                            <i class="fa fa-phone" aria-hidden="true"></i>
                        </a>
                  
                    </li>
                     <li>
                        <a href="#">  
                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                        </a>
                  
                    </li>
                    <li>
                        <a href="#">   
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                        </a>
                       
                    </li>
              
                    <li>
                        <a href="#">  
                            <i class="fa fa-linkedin" aria-hidden="true"></i>
                        </a>
                    
                    </li>
                    <li>
                       <a href="#">  
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                        </a>
                      
                    </li>
                      <li>
                       <a href="#">  
                            <i class="fa fa-building-o" aria-hidden="true"></i>
                        </a>
                      
                    </li>
                     
                    
                </ul>
                <p class="C">+08801759739848</p><br />
                  <p class="C">taslimuddinraju7864@gmail.com</p><br />
                  <p class="C">raju32742</p><br />
                  <p class="C">s-m-taslim-uddin-raju-621217119/</p><br />
                  <p class="C">twitter.com/RauUddin</p><br />
                 <p class="C">Karerhat,Mirsharai,Chittagong</p><br />
            </div>
             <i class="fa fa-star" aria-hidden="true"></i>
            <p class="Bsc">BSC </p>
            <div class="B">
            <p> CGPA:3.76(continue)</p>
            <p class="U">Khulna University Of Engineering And Technology </p>
            <p>Khulna</p>
            <p>(2014-on going undergraduate)</p><br />
                </div>
              <i class="fa fa-star" aria-hidden="true"></i>
            <p class="Bsc">HSC </p>
             <div class="B">
            <p> GPA:5.00</p>
            <p class="U">Govt. City College  </p>
            <p>Chittagong</p>
            <p>(2012-2014)</p><br />
                </div>
             <div class="SSc">
             <i class="fa fa-star" aria-hidden="true"></i>
            <p class="Bsc">SSC </p>
            <div class="B">
            <p> GPA:5.00</p>
            <p class="U">Baitush Sharaf Ideal Kamil Madrasha </p>
            <p>Chittagong</p>
            <p>(2010-2012)</p><br />
                </div>
                 </div>
            <br />
            <br />

<!----------------------------for skill---------------------------------->
              <!-- prograss bar -->
    
            <div class="distance1">
                <div class="c100 p70">
                    <span>90%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                </div></div>
                  <div class="distance2">
                <div class="c100 p95">
                    <span>70%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                      </div></div>
                  <div class="distance3">
                <div class="c100 p90">
                    <span>80%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                      </div> </div>
              <div class="distance4">
                <div class="c100 p90">
                    <span>70%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                </div>

    
     </div>  
             
    <!--  end of prograss bar -->
       <br/><br/><br/><br/><br/><br/>
    <div class="pt1"><p class="CC">  C/C++  </p> <p class="CCC">  Python  </p> <p class="CCCC"> Java </p> <p class="CCCCC"> Machine Learning</p></div>
    
    
    <!-- 2nd prograss bar-->
            <div class="distance1">
                <div class="c100 p30">
                    <span>70%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                </div></div>
                  <div class="distance2">
                <div class="c100 p65">
                    <span>80%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                      </div></div>
                  <div class="distance3">
                <div class="c100 p95">
                    <span>95%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                      </div> </div>
              <div class="distance4">
                <div class="c100 p60">
                    <span>80%</span>
                    <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                    </div>
                </div>

    
     </div>   
    <!--  end of prograss bar -->
       <br/><br/><br/><br/><br/><br/>
     <div class="pt1"><p class="CC"> Asp.net </p> <p class="CCC">  Matlab </p> <p class="CCCC"> Database </p> <p class="CCCCC"> Descrte Mathematics</p></div>



     <div class="about">
   <span class="s">S</span>hopify,this is my first personal E-commerce website.I try my best to complete and design my best.
         In this website , we can add your personal product like Mobile,Laptop,Cemera etc.You could upload new product as well as used product.
       
      
            </div>






        </div>

    </div>
        <div class="comm">
              This website are under develpoing, you can share your idea to enhance my website by your valuable comment.
               <br />Thanks everyone.....
           <i class="fa fa-smile-o" aria-hidden="true"></i> <i class="fa fa-smile-o" aria-hidden="true"></i>
        </div>
   </div>

  <!-- -comment section    ------------->

    <div style="padding:15px 20px; width:560px; margin-left:12%;">
      <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>


        <img runat="server"  id="User_image" class="User_image" src="User_image"/>

         <!-- <asp:Image ID="Image1" runat="server" ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("User_image")) %>'  style="width:30px; height:30px; border-radius:50%;" />-->

      <asp:Button ID="btnCommentPublish" Text="Comment" runat="server" style="background-color:#4800ff; border:1px solid #4800ff; padding:7px 25px; border-radius:5px; color:#fff; float:right;" OnClick="btnCommentPublish_Click" />
          
         </div><br />
   

<!-----------------for comment publish ------------------------------>

           <!----       comment publish   --------------------->
       <div>
        <asp:GridView ID="GridViewComment" runat="server" AutoGenerateColumns="false" BorderWidth="0" Width="50%"   >
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
                                            
                                            
                                                  <div class="User_nameP">
                                               <asp:Label ID="lblFirstName" runat="server"  Text='<% #Eval("FirstName") %>'></asp:Label>
                                               <asp:Label ID="lblLastName" runat="server" Text='<% #Eval("LastName") %>'></asp:Label>
                                               </div>
                                                <asp:Label ID="lblCommentMessage" runat="server" Text='<% #Eval("CommentMessage") %>'></asp:Label><br />
                                                 <b>(</b>
                                                   <asp:Label ID="lblCommentDate" runat="server" Text='<% #Eval("CommentDate") %>'></asp:Label>
                                                  <b>)</b>
                                               <p  class="ProductDe">Delete Comment</p>                                                                    
                                                <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CssClass="w3ls-cart pw3ls-cart"
                                     Text='<%#Eval("Address") %>' runat="server"></asp:LinkButton>
                                              <br />
                                            
                                            </td>
                                        </tr>
                                     </table>
                      
                                    </ItemTemplate>
                                  </asp:TemplateField>
                                  </Columns>
                           </asp:GridView>           
                     </div>


    </form>
</body>
</html>
