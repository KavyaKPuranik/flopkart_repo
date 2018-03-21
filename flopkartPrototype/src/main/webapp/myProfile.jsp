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
        <!-- ========================================== SECTION – HERO ========================================= -->

		
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
                <div class="widget-header">
                		<h4 class="widget-title"><B>PERSONAL INFORMATION</B></h4>
                		<div id="edit_name"><a> edit </a></div>
                </div>
	              
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="firstName" id="firstName" required disabled
		              autocomplete="name" value="Flipkart">
		               <span class="warning" id="warning_fname"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Please enter
									First Name</b>
							</span>
		          </div>
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="lastName"  id="lastName" required disabled 
		              autocomplete="name" value="Flipkart">
		              <span class="warning" id="warning_lname"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Please enter
									Last Name</b>
							</span>
		          </div>
		        </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
        </div>   
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>EMAIL ADDRESS</B></h4>
              </div>
	              
		    <div class="row">
		      <div class="col-md-5 sidebar"> 
	              
	            </div>
		      <div class="col-md-5 sidebar"> 
	              <div id="edit_pswd"><a data-toggle="modal" data-target="#changeModal"> Change Password </a>
	              
	              </div>
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
              </div>
	              
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="ip_phone" id="ip_phone" required disabled 
              autocomplete="name" value="Flipkart">
            </div>
         </div>
         <div class="row">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>PERMANENT ADDRESS</B></h4>
              </div>
	              <div id="edit_addr"><a> edit </a></div>
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <textarea disabled style="background-color: #eee; font-size: 17px;padding:10px; border-radius: 6px; border-color: #bbb;" rows="8" cols="33" name="addr" id="addr"  ></textarea>
            </div>
         </div>
        
         
         <div class="search-result-container " style="padding-bottom:25px;">
	      	 <div class="row">
	      		 <div class="col-md-12 sidebar"> </div>
	    	  	 </div>
	    	</div>
        <div class="search-result-container ">
        
         
	       <div id="change1" class="row">
	      	   <div class="col-md-4 sidebar"> </div>
		       <div  class="col-md-4 sidebar" > 
	              
	            <form id="logout_form2" action="./index.jsp">
		            <input type="submit" class="head btn-link" style="font-size:18px ;border-color:#777 ;border-radius: 2px; color:#000;padding:5px; background-color: #ffdb4d;  " 
		             value="UPDATE" onclick="changeinfo('<%=request.getContextPath()%>');"></input>
	            </form>
	            
	           </div>
	           <div class="col-md-4 sidebar"> </div>
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
              </div>
	              
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
        
  
      <!-- /.col -->             
      
		    </div>
		
		
      
    </div>
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
</div>
<!-- /.body-content --> 
</div>
<div class="modal" id="changeModal"  role="dialog" align="center">
			<div class="modal-dialog" >

				<!-- Modal content-->
				<div class="row" style="display: table; width:730px ; padding-top:50px;">
				<div id="show1">	
					<div class="col-sm-5"
						style="background-color: #2455f4; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">
						
						<div class="row" style="margin-top: 10px;">
							<h5 class="modal-title" align="left"
								style="font-family:sans-serif;padding-top:10px; color: white;">
								<b>Your new password must</b>
							</h5>
						<div class="row" style=" padding-left:15px;">
							<h5 class="modal-title" align="left"
								style="font-family: sans-serif; padding-top: 10px; color: white; ">
								* Be at least 4 characters in length</h5>
							<h5 class="modal-title" align="left"
								style="font-family: sans-serif;  padding-top: 10px;color: white; ">
								* Not be same as your current password</h5>
							<h5 class="modal-title" align="left"
								style="font-family: sans-serif;  padding-top: 10px;color: white; ">
								* Not contain common passwords</h5>
						</div>
						</div>
						<div class="row"
							style="padding-top: 100px; padding-bottom: 30px;">
							<img src="./images/login_img_1.png" align="middle"
								align="bottom" width="200px" />
						</div>
					</div>
					<div class="col-sm-6"
						style="background-color: #ffffff; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">

						<div class="row"
							style="padding-top: 15px; padding-bottom: 15px;"></div>
	
			<!-- =====================================SIGNUP-MODAL =========================================-->	
			<div id="chng">					
					<div class="floating-div"
								style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
								<span class='blocking-span'> <input type="password"
									id="pass_txt1" name="pass_txt1" class="inputText" required />
									<span class="floating-label"><b>Type Current Password</b></span>
								</span> <span class="warning" id="warning_pass_new1"
									style="align: left; padding-left: 0px; color: red; font-size: 80%"
									class="pull-left"> <b>Enter password</b>
								</span> 
								<span class="warning" id="warning_pass_new4"
										style="align: left; padding-left: 0px; color: red; font-size: 80%"
										class="pull-left"> <b>Invalid Current Password</b>
								</span> 
								
				    </div>	
				    
				    <div class="floating-div"
								style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
								<span class='blocking-span'> <input type="password"
									id="pass_txt2" name="pass_txt2" class="inputText" required />
									<span class="floating-label"><b>Type New Password</b></span>
								</span> <span class="warning" id="warning_pass_new2"
									style="align: left; padding-left: 0px; color: red; font-size: 80%"
									class="pull-left"> <b>Enter password</b>
								</span> 
				    </div>	
				    
				    
					<div class="floating-div"
									style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
									<span class='blocking-span'> <input type="password"
										id="pass_txt3" name="pass_txt3" class="inputText" required />
										<span class="floating-label"><b>Retype New Password</b></span>
									</span> <span class="warning" id="warning_pass_new3"
										style="align: left; padding-left: 0px; color: red; font-size: 80%"
										class="pull-left"> <b>Enter password</b>
									</span> 
									<span class="warning" id="warning_pass_new5"
										style="align: left; padding-left: 0px; color: red; font-size: 80%"
										class="pull-left"> <b>Passwords Mismatch</b>
									</span> 
					</div>	
				
				
				<div class="row" 
								style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
								<button type="button" id="login_btn"
									class="btn btn-primary btn-lg btn-block"
									style="border-radius: 0px; background-color: #F26419; border-width: 0mm"
									value="Login"  onclick="changepswd('<%=request.getContextPath()%>');">UPDATE PASSWORD</button>
				</div>
				
			</div>
		</div>
			</div>
			
				
			<div class="col-sm-1">
					<button type="button" class="close" data-dismiss="modal">x</button>
			</div>
			
			</div>
		</div>
</div>
<%@include file="footer.jsp" %>


<script>
$(document).ready(function() 
{	$("#warning_lname").hide();
	$("#warning_pass_new1").hide();
	$("#warning_pass_new2").hide();
	$("#warning_pass_new3").hide();
	$("#warning_pass_new4").hide();
	$("#warning_pass_new5").hide();
	$("#warning_fname").hide();
	$("#change1").hide();
	$("#unregistered").hide();
	$("#show2").hide();
	
	
	
	$("#pass_txt1").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt2").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt3").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt4").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	$("#pass_txt5").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
  var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
  	$("#gender-row").hide();
  	
	checkCookie();	
	$('#myModal').modal('hide');
	var sm = document.getElementById('edit_name');
	sm.onclick = function() {
		$('#firstName').removeAttr('disabled');
		$('#lastName').removeAttr('disabled');
		$('#change1').show();
	};
	var sm = document.getElementById('edit_addr');
	sm.onclick = function() {
		$('#addr').removeAttr('disabled');
		document.getElementById("addr").style.backgroundColor = "#fff";
		$('#change1').show();
	};
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
	if(user.address != null)
		$("#addr").val(user.address);
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


function changeinfo(ctxPath) 
{	
	if (!$("#firstName").val() )
	{
		$("#warning_fname").show();
		return false;
	}
	if (!$("#lastName").val() )
	{
		$("#warning_lname").show();
		return false;
	}
	var id = $("#ID").val();
	
	$.ajax(
		{
		type : 'PUT',
		contentType : 'application/json',
		url :  ctxPath +"/webapi/users/update/"+id,
		data : updateJSON(),
		success : function()
		{
			deleteCookie("user_details");
			
		},
		error : function()
				{
			deleteCookie("user_details");	
					}
		});
}
function updateJSON() 
{
    
	var fname = $("#firstName").val();
	var lname = $("#lastName").val();
	var addr = $("#addr").val();
	var flopkart_user = JSON.stringify({
				"firstName":fname,
				"lastName":lname,
				"address":addr
				
    });
	
	return flopkart_user;
	
}
	
function renderDet()
{ 
	$("#change1").hide();
	logout();
}


function changepswd(ctxPath) 
{	
	if (!$("#pass_txt1").val() )
	{
		$("#warning_pass_new1").show();
		return false;
	}
	if (!$("#pass_txt2").val() )
	{
		$("#warning_pass_new2").show();
		return false;
	}
	if (!$("#pass_txt3").val() )
	{
		$("#warning_pass_new3").show();
		return false;
	}
	if ($("#pass_txt2").val()  != $("#pass_txt3").val())
	{
		$("#warning_pass_new5").show();
		return false;
	}
	var id = $("#ID").val();
	$("#show1").hide();
	$('#changeModal').modal('hide');
	$.ajax(
		{
		type : 'PUT',
		contentType : 'application/json',
		url :  ctxPath +"/webapi/users/update/"+id,
		data : updatepswdJSON(),
		success : function()
		{
			alert("Password SuccessFully Updated");
			
		},
		error : function()
		{
				alert("Error");		
		}
		});
}
function updatepswdJSON() 
{
    
	var password1 = $("#pass_txt1").val();
 	/* if(password1 == user.password){
		$("#warning_pass_new4").show();
		return false;
	}  */
	var newpswd = $("#pass_txt3").val();
	
	var flopkart_user = JSON.stringify({
				"password":newpswd
				
    });
	
	return flopkart_user;
	
}
function findUser(ctxPath) 
{
	$.ajax(
	{
		type : 'POST',
		contentType : 'application/json',
		url : ctxPath + "/webapi/users/email",
		dataType : "json", // data type of response
		data : formToJSON(),
		success : renderDetails
});
}
	

</script>
</body></html>