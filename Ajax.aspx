<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ajax.aspx.cs" Inherits="Ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <!-------------for upper banar ------------>

<link href="User_design/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="User_design/css/font-awesome.css" rel="stylesheet"/> 
<link href="User_design/css/style1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="Edit%20User/EditUser.css" rel="stylesheet" />
<link href="User_design/css/fuulpagezoom.css" rel="stylesheet" type="text/css" media="all"/>
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
			<li><a href="User.aspx">User </a></li>
			<li class="active">Edit Profile</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->

   <h1 class="welcome">Edit Your Profile</h1>

        <!--------------------------------------------------------------------->



<!------------for image --------------------->
             <!-- main -->
<section class="main">
	<div class="points"></div>
	<div class="shield-left"></div>
	<div class="shield-right"></div>
	<!-- card -->
		<div class="detail-images">
       <img runat="server"  id="Image1" style="height:400px;" src="User_image" />
		</div>		
    <!-- The Modal -->
  <div id="myModal" class="modal">
  <span class="close">×</span>
  <img class="modal-content" runat="server" id="img01" src="User_image"/>

</div>
  <div class="imageN">
      <b class="b1">*Image can't Edit</b>
  </div>
</section>
<!-- /main -->




 <div class="details">

        <ul>
  
         <li > <i class="fa fa-user ">  User Name </i>
          <p class="pp">:<asp:Label ID="LabelUN" runat="server" CssClass="bb" Text="Label"></asp:Label><b class="b1">* User Name can't be Edited</b></p> 
         </li>
           <li><i class="glyphicon glyphicon-map-marker">Address</i>
              <p class="pp">:<asp:Label ID="LabelDV" runat="server" CssClass="bb" Text="Label"></asp:Label><b class="b1">* Address can't be Edited</b></p>
      	</li>
            

          
          
     
   
           <li > <i class="fa fa-user ">  First Name </i>

                    <p class="pp">:<input type="text" class="bb" id="TextBoxFN" /></p>
           	</li>
           
                <li > <i class="fa fa-user "> Last Name </i>
             
                   <p class="pp">:<input type="text" class="bb" id="TextBoxLN" /></p>
                </li>
             

                  <li > <i class="fa fa-calendar">BirthDay </i>
                    <p class="pp">:<input type="text" class="bb" id="TextBoxBD" /></p>
                </li>

                   <li > <i class="glyphicon glyphicon-phone"> Mobile No</i> 
                     <p class="pp">:<input type="text" class="bb" id="TextBoxMN"/></p>
                   </li>

                <li > <i class="fa fa-envelope">Email</i> 
                  <p class="pp">:<input type="text" class="bb" id="TextBoxEM" /></p>
                 </li>

                       <li > <i class="glyphicon glyphicon-phone">Password</i> 
                    <p class="pp">:<input type="text" class="bb" id="TextBoxPA"/></p>
                    </li>
               </ul>

        <input type="button" id="b1" class="B_design3" value="update" onclick="Update()"/>
        </div>
      
         
    </form>
     <script type="text/javascript">

         function Update() {
                
             var NFn = document.getElementById("TextBoxFN").value;
             var NLn = document.getElementById("TextBoxLN").value;
             var NBd = document.getElementById("TextBoxBD").value;
             var NEm = document.getElementById("TextBoxEM").value;
             var NMn = document.getElementById("TextBoxMN").value;
             var NPa = document.getElementById("TextBoxPA").value;
             var xmlhttp = new XMLHttpRequest();
             xmlhttp.open("GET", "UserUpdate.aspx?NFn=" + NFn + "&NLn=" + NLn + "&NBd=" + NBd + "&NEm=" + NEm + "&NMn=" + NMn + "&NPa=" + NPa + "&opr=update", false);
             xmlhttp.send(null);
             alert("data update successfully");
       
         }


    </script>



      <!---------------full page zoom ---------->
    <script>
        // Get the modal
        var modal = document.getElementById('myModal');

        // Get the image and insert it inside the modal - use its "alt" text as a caption
        var img = document.getElementById('Image1');
        var modalImg = document.getElementById("img01");
        img.onclick = function () {
            modal.style.display = "block";
            modalImg.src = this.src;

        }

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }
</script>
    </body>
</html>
