<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller Registration</title>
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
</head>
<style>
.py-5 {
	padding-top: 4.5rem !important;
	padding-bottom: 4.5rem !important;
}

.card-body {
	flex: 1 1 auto;
	padding: 1.25rem;
}

.card {
	position: relative;
	color: #212529;
	display: flex;
	flex-direction: column;
	width: 50rem; word-wrap : break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 0.25rem;
	margin-bottom: 15px;
	word-wrap: break-word;
}

.container {
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

.nav {
	position: relative;
	flex-wrap: wrap;
	align-items: left;
	justify-content: space-between;
}

.text-white {
	color: #fff !important;
}

.align-self-left {
	align-self: left !important;
}

.col-md-6 {
	position: relative;
	width: 100%;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 50px;
	flex: 0 0 50%;
	max-width: 50%;
}

.logo {
	height: initial;
	width: 163px;
	padding-bottom: 20px;
	padding-left: 20px;
	margin-left: 20px;
	margin-top: 20px;
}

.row {
	display: flex;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.text-center {
	text-align: center !important;
}

.block {
	padding-left: 8rem;
	padding-top: 3rem;
}

.display-3 {
	font-size: 40px;
	font-weight: 300;
	line-height: 1.2;
	font-family: sans-serif;
}

.lead {
	font-size: 2rem;
	font-weight: 300;
	font-family: sans-serif;
}

.form-control {
	font-family: sans-serif;
}

.form-group {
	margin-bottom: 1rem;
	font-family: sans-serif;
}

.p-5 {
	padding: 3rem !important;
}

.pb-3 {
	padding-bottom: 1.5rem !important;
	line-height: 0;
}

label {
	font-weight: normal;
}
</style>
<body style="background: url(&quot;./images/sellerHub/Signup-screen-BG.jpg&quot;) no-repeat;
  background-size: 100%;">
	<header>
		<nav class="nav navbar-default" style="background-color:#027cd5">
			<a href='sellerHub.jsp'><img class="logo" src="./images/sellerHub/seller-hub-logo.png"></a>
		</nav>
	</header>
	
	<div class="py-5" >
    	<div class="container">
      		<div class="row">
        		<div class="align-self-left col-md-6 text-white">
        		<div class="block">
          			<h2 class="text-md-left display-3">Grow your business.<br/>
          														   Sell on Flipkart.</h2>
          			<p class="lead">Give a kickstart to your business. Register now. <br/>It's quick and easy.</p>
        		</div></div>
        		<div class="col-md-6" id="book">
          			<div class="card">
            			<div class="card-body p-5">
              				<h3 class="pb-3">Create your Account</h3>
              				<p>All details are mandatory</p>
							<form action="#">
								<div class="form-group">
									<label>First Name</label> <input class="form-control" id="f_name"
										placeholder="Enter first name" required>
								</div>
								<div class="form-group">
									<label>Last Name</label> <input class="form-control" id="l_name"
										placeholder="Enter last name" required>
								</div>
								<div class="form-group">
									<label>Email ID</label> <input type="email" id="email" placeholder="Enter email" class="form-control" required>
									<div id="warning_email_new" style="color: #f2575b; position: relative; left: 10px;
										margin: 7px 0 0;">This is not a valid Email</div>
								</div>
								<div class="form-group">
									<label>Password</label> <input type="password" id="pass_txt" class="form-control"
										placeholder="Minimum 4 characters" required>
								</div>
								<div class="form-group">
									<label>Mobile Number</label> <input type="number" id="phone" class="form-control"
										maxlength="10" placeholder="Enter mobile number" required>
									<div id="warning_phone_new" style="color: #f2575b; position: relative; left: 10px;
									 margin: 7px 0 0;">This is not a valid mobile number</div>
								</div>
								<p style="font-size: small;">If you have read and agree to the Terms and Conditions, please continue</p>
								<div align="right"><button class="btn btn-primary" type="submit" onclick="signup('<%=request.getContextPath()%>');">Continue</button></div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
  	</div>
  </body>
  
<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script>
<script src="./bootstrapFiles/js/bootstrap.min.js"></script>
<script src="./bootstrapFiles/js/bootstrap-hover-dropdown.min.js"></script>
<script src="./bootstrapFiles/js/owl.carousel.min.js"></script>
<script src="./bootstrapFiles/js/echo.min.js"></script>
<script src="./bootstrapFiles/js/jquery.easing-1.3.min.js"></script>
<script src="./bootstrapFiles/js/bootstrap-slider.min.js"></script>
<script src="./bootstrapFiles/js/jquery.rateit.min.js"></script>
<script src="./bootstrapFiles/js/bootstrap-select.min.js"></script>
<script src="./bootstrapFiles/js/wow.min.js"></script>
<script src="./bootstrapFiles/js/scripts.js"></script>
<script src="./customJavascripts/cookies.js"></script>
<script>
$(document).ready(function(){
	<%if(request.getParameter("emailid")!=null){ %>
  	 	$("#email").val("<%=request.getParameter("emailid")%>");
	<% } %>
	<%if(request.getParameter("phoneno")!=null){ %>
	 	$("#phone").val("<%=request.getParameter("phoneno")%>");
	<% } %>
	$("#warning_email_new").hide();
	$("#warning_phone_new").hide();
});
	
function signupformToJSON() {
	var fname = $("#f_name").val();
	var lname = $("#l_name").val();
	var email = $("#email").val();
	var password = $("#pass_txt").val();
	var phone = $("#phone").val();
	var userType = "seller";

	var flipkart_user = JSON.stringify({
		"firstName" : fname,
		"lastName" : lname,
		"phone" : phone,
		"email" : email,
		"password" : password,
		"userType" : userType
	});
	return flipkart_user;
}

function signup(ctxPath) {
	var email = $("#email").val();
	var phone = $("#phone").val();
	if (!phone.match(/^[0-9]{10}$/)) {
		$("#warning_phone_new").show();
		$("#phone").css("border-color","#f2575b");
		if (!email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
			$("#warning_email_new").show();
			$("#email").css("border-color","#f2575b");
			return false;
		}
		return false;
	}
	else {
		$("#warning_phone_new").hide();
	}
    if (!email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
		$("#warning_email_new").show();
		$("#email").css("border-color","#f2575b");
		if (!phone.match(/^[0-9]{10}$/)) {
			$("#warning_phone_new").show();
			$("#phone").css("border-color","#f2575b");
			return false;
		}
		return false;
	}
    else {
    	$("#warning_email_new").hide();
    }
    var fname = $("#f_name").val();
	$.ajax({
		type : 'POST',
		contentType : 'application/json',
		url : ctxPath + "/webapi/users/create",
		dataType : "json", // data type of response
		data : signupformToJSON(),
		success : renderDetails(fname,ctxPath),
		error : function(){
			//alert("NOOOO");
		}
	});
}

function renderDetails(fname,ctxpath){
	console.log("Successfully registered seller");
	//console.log(fname);
	var ctxPath = "<%=request.getContextPath()%>";
	
	console.log(ctxPath);
	var path = ctxPath + "/webapi/users/getfirstname/"+fname;
	console.log(path);
	$.ajax({
			type:'GET',
			contentType:'application/json',
			url: path,//+fname,
			datatype:"json",
			success: function(response) {
						console.log(response.firstName);
					},
			error: function() {
					console.log("err in renderDeails");
					}
	});
	
	console.log("after ajax call");
	window.location.href="sellerHub.jsp";
}
</script>
</html>