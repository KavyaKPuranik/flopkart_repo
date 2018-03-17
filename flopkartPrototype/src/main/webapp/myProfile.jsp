<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<%@ page import="com.iiitb.ooadvoid.CreateProperties" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="metaContent.jsp" %>
	<title>My Profile</title>
	<style>
	.custom-file-upload 
	{
		border: 1px solid #ccc;
		display: inline-block;
		padding: 6px 12px;
		cursor: pointer;
	}
	.dp .tooltiptext 
	{
		visibility: hidden;
		background-color: black;
		color: #fff;
		text-align: center;
		border-radius: 6px;
		/* Position the tooltip */
		position: absolute;
		z-index: 1;
		overflow:visible;
	}
	.dp:hover .tooltiptext 
	{
	    visibility: visible;
	}
	</style>
	</head>

<body>
<!-- ============================================== HEADER ============================================== -->

<%@include file="header.jsp" %>

<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar"> 
        <div class="sidebar-module-container">
          <div class="sidebar-filter"> 
            <!-- ============================================== IMAGE============================================== -->
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <h5 class="section-title">Hello,</h5>
              <div class="widget-header">
                <h4 class="widget-title" id="userID"></h4>
              </div>
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li>
						<div id="dp" class="dp"><img id="dp1" height="100px"  src="#" >
						<span id="tooltiptext" class="tooltiptext"></span></div>
                  	
					<div id="no_dp">		
					<%if (request.getParameter("imgName") != null) { %>
						<p style="color:red;"><b>Login again to view uploaded dp</b></p>
					 <% } else { %>		
						<form id="update_img" method="post" action="UploadServlet" enctype="multipart/form-data">
						<label for="dpImg" class="custom-file-upload">
						    <img height="50px" width="50px" src="./images/profile-pic-male_icon.svg">   Choose File
						</label>
							<input type="file"  style="display:none"
								id="dpImg" name="dpImg" accept=".jpg, .jpeg, .png, .JPG, .PNG, .JPEG" required/>
							<input type="submit" class="btn btn-warning btn-block" value="Set profile picture"/>
							<input type="text" id="ID" name="ID" hidden="hidden"/>
						</form>
					<% } %>
					</div>
				 </li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== IMAGE: END ============================================== --> 
            
            
            <!-- ============================================== Other TAGS ============================================== -->
          <!----------- Account------------->
            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
              <h5 class="head"><b>MY ORDERS</b></h5>
            </div>
                    <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Account Settings</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="underConstruct.html">Profile Information</a></h5></li>
                  <li><h5><a href="underConstruct.html">Manage Addresses</a></h5></li>
                  <li><h5><a href="underConstruct.html">Notification Preferences</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu -->  
                    <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>My Stuff</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="underConstruct.html">My wishlist</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu --> 
        
            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
            <form id="logout_form" action="./index.jsp">
              <input type="submit" class="head btn-link" style="color:black;font-weight:bold" value="LOGOUT" onclick="logout();"></input>
            </form>
            </div>
            
            <!-- ============================================== Other: END ============================================== -->

          </div>
          <!-- /.sidebar-filter --> 
        </div>
        <!-- /.sidebar-module-container --> 
      </div>
      <!-- /.sidebar -->
      <div class="col-md-9"> 
        <!-- ========================================== SECTION â HERO ========================================= -->

		
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>PERSONAL INFORMATION</B></h4><a> edit </a>
                
              </div>
	              
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="firstName" id="firstName" required disabled
              autocomplete="name" value="Flipkart">
            </div>
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="lastName"  id="lastName" required disabled 
              autocomplete="name" value="Flipkart">
            </div>
         </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
            
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">

         
	              
	    <div id="gender-row" class="row">
	   
	      <div class="col-md-2 sidebar"> 
               Your Gender:
            </div>
	      <div class="col-md-5 sidebar"> 
              <input type="radio" name="gender">
              <label>Male</label>
            </div>
	      <div class="col-md-5 sidebar"> 
              <input type="radio" name="gender">
              <label>Female</label>
            </div>
            </div>
        </div>
        <!-- /.search-result-container --> 
        
      </div>
		
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>EMAIL ADDRESS</B></h4>
              </div>
	              
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <a> edit </a>
            </div>
	      <div class="col-md-5 sidebar"> 
              <a> Change Password </a>
            </div>
         </div>
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="ip_email" id="ip_email" required disabled 
              autocomplete="name" value="Flipkart">
            </div>
         </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col --> 
      
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>MOBILE NUMBER</B></h4>
              </div><a> edit </a>
	              
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="ip_phone" id="ip_phone" required disabled 
              autocomplete="name" value="Flipkart">
            </div>
         </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col --> 
      
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>FAQS</B></h4>
              </div><a> edit </a>
	              
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><b>Question</b></h5></li>
                  <li><h5>Answer</h5></li>
                  <li><h5><b>Question</b></h5></li>
                  <li><h5>Answer</h5></li>
                </ul>
              </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col -->             
      
    </div>
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
</div>
<!-- /.body-content --> 

<%@include file="footer.jsp" %>


<script>
$(document).ready(function() 
{
	$("#unregistered").hide();
  var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
  $("#gender-row").hide();
	checkCookie();	
});

function checkCookie() 
{
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 10);
		diplayUser(JSON.parse(user));
    } 
    else 
    {
    	logout();
    }
}

function resetCookie() 
{
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 10);
		diplayUser(JSON.parse(user));
    } 
    else 
    {
    	logout();
    }
}

$("#dp1").hover(function(){
	$("#tooltiptext").show();
    $("#tooltiptext").text($("#ip_email").val()+"\n"+$("#userID").text());
});

function diplayUser(user)
{
	$('#firstName').val(user.firstName);
	$('#lastName').val(user.lastName);
	$('#ip_email').val(user.email);
	$('#ID').val(user.id);
	$('#ip_phone').val(user.phone);

	$('#userID').html(user.firstName+" "+user.lastName);
<%--     <% CreateProperties cp = new CreateProperties(); %> --%>
    <% AccessProperties ap = new AccessProperties(); %>
    var imgServerURL = "<%=ap.getImageServerURL() %>"; 

	if(!("pic_URL" in user) || user.pic_URL=="")

	{	
		$("#no_dp").show();
		$("#dp").hide();
	}
	else
	{	
        $('#dp1').attr('src',imgServerURL+user.pic_URL);
		$("#dp").show();
		$("#no_dp").hide();
	}
}

function logout()
{
	deleteCookie("user_details");
}

$('#dpImg').change(function()
{
	var i = $(this).prev('label').clone();
	var file = $('#dpImg')[0].files[0].name;
	$(this).prev('label').text(file);
});
</script>
</body></html>