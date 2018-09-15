<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Adminaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="User_design/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="User_design/css/font-awesome.css" rel="stylesheet"/> 
<link href="User_design/css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet"/> 
<link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'/>
<!------------------------------------------------------------------>


    <link href="admin/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

   
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




<p class="user">Total User In my Website are :</p>


    <div class="item">
         <asp:GridView ID="GridView1" ShowHeader="false" GroupItemCount="4"
        GridLines="None" AutoGenerateColumns="false"
        runat="server" >
              
        <Columns>
      
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
             
                             <asp:Image ID="Image1" runat="server" cssclass="imgDesign" 
                    ImageUrl='<%# "data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("User_image")) %>' />
                          </ItemTemplate>
                         </asp:TemplateField>
          
            <asp:TemplateField HeaderText="Infomation"  ControlStyle-BorderColor="#990000">
                <ItemTemplate>
                           <div class="details">



                    <ul>
                        
                                      
         <li > <i class="fa fa-user ">  User Name </i>
          <p class="pp">:
                                            <asp:Label ID="lblUserName" 
                                            runat="server" Cssclass="bb"
                                            Text='<%#Eval("UserName")%>'>
                                         </asp:Label></p> 

         </li>

         <li > <i class="fa fa-user "> Full  Name </i>
             <p class="pp">:
                 
                                       
                                            <asp:Label ID="lblFirstName" 
                                            runat="server" Cssclass="bb"
                                            Text='<%#Eval("FirstName")%>'>
                                         </asp:Label>
                                          <asp:Label ID="Label1" 
                                            runat="server" 
                                            Text='<%#Eval("LastName")%>'>
                                         </asp:Label><br />
                             


                 </li>


         <li><i class="fa fa-calendar"> BirthDay</i>
                    <p class="pp">:  <asp:Label ID="lblBirthDay" Cssclass="bb"
                                            runat="server" 
                                            Text='<%#Eval("BirthDay")%>'>
                                         </asp:Label></p>
         </li>
       	<li><i class="fa fa-envelope "> Email</i> 
            <p class="pp"> : <asp:Label ID="lblEmail" 
                                            runat="server" Cssclass="bb"
                                            Text='<%#Eval("Email")%>'>
                                         </asp:Label></p>
       	</li>
        
       
      	
      	<li><i class="glyphicon glyphicon-phone">Mobile No</i> 
                <p class="pp">: <asp:Label ID="lblMobileNo" 
                                            runat="server" Cssclass="bb"
                                            Text='<%#Eval("MobileNo")%>'>
                                         </asp:Label></p>
      	</li>
              
      	<li><i class="glyphicon glyphicon-map-marker">Address</i>
              <p class="pp">: <asp:Label ID="lblAddress" 
                                            runat="server" Cssclass="bb"
                                            Text='<%#Eval("Division")%>'>
                                         </asp:Label></p>
      	</li>
        
   
         
     </ul>

                       
                                                                                                           
                                       
                                        
                                                                              
                     </div>
                                        
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
             
    </asp:GridView>
          
   </div>
    </div>
    </form>
</body>
</html>
