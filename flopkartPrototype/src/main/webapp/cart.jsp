<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart | Flopkart.com </title>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/css/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/css/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/rateit.css">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/css/font-awesome.css">
<link rel="stylesheet" href="./bootstrapFiles/fontawesome-all.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(1).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(2).css" rel="stylesheet" type="text/css">
<style>
.dotted { border-bottom: 1px dashed #DCDCDC; }
.lined { border-bottom: 1px solid #DCDCDC; }
input {
	display: block;
	border: none;
	border-bottom: 1px solid #ccc;
	width: 100%
}

.floating-div {
	position: relative; /*  make label relate to div  */
	padding-top: 5%; /*  make space for label      */
}

.floating-label {
	position: absolute;
	pointer-events: none;
	top: 20%;
	color: #878787;
}

input:focus ~ .floating-label {
	transition: 0.2s ease all;
	top: -5%;
	font-size: 70%;
}

input:valid ~ .floating-label {
	transition: 0.2s ease all;
	top: -5%;
	font-size: 70%;
}
</style>
</head>
<body>
 <!-- ============================================== HEADER ============================================== -->

	<header class="header-style-1">
		<!-- ============================================== Login Modal ============================================== -->

		<div class="modal" id="loginModal" role="dialog" align="center">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="row" style="display: table;">
					<div class="col-sm-5"
						style="background-color: #2455f4; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">
						<div class="row">
							<h2 class="modal-title" align="left"
								style="font-family: sans-serif; color: white;">
								<b>Login</b>
							</h2>
							<h4 class="modal-title" align="left"
								style="font-family: sans-serif; color: white; line-height: 1.5">
								Get access to your Orders, Wishlist and Recommendations</h4>
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
<!--//////////// begin changing code -->		
			<div id="signup">					
						<div class="floating-div"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
							<span class='blocking-span'> <input type="text"
								id="f_name" name="f_name" class="inputText"
								required /> <span style="align: left"
								class="floating-label pull-left"><b>Enter
										First Name</b></span>
							</span> <span class="warning" id="warning_fname"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Please enter
									First Name</b>
							</span>
						</div>
						
						<div class="floating-div"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
							<span class='blocking-span'> <input type="text"
								id="l_name" name="l_name" class="inputText"
								required /> <span style="align: left"
								class="floating-label pull-left"><b>Enter
										Last Name</b></span>
							</span> <span class="warning" id="warning_lname"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Please enter Last Name</b>
							</span> 
						</div>
						
						<div class="floating-div"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
							<span class='blocking-span'> <input type="text"
								id="phone" name="phone" class="inputText"
								required /> <span style="align: left"
								class="floating-label pull-left"><b>Enter
										Mobile number</b></span>
							</span> <span class="warning" id="warning_phone_new"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Please enter valid Mobile number</b>
							</span>
							
						</div>
						<div class="floating-div"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
							<span class='blocking-span'> <input type="text"
								id="email" name="phone" class="email"
								required /> <span style="align: left"
								class="floating-label pull-left"><b>Enter
										Email ID</b></span>
							</span> <span class="warning" id="warning_email_new"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Please enter valid email</b>
							</span>
							
						</div>
						
			
			<div class="floating-div"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
							<span class='blocking-span'> <input type="password"
								id="pass_txt" name="pass_txt" class="inputText" required />
								<span class="floating-label"><b>Set Password</b></span>
							</span> <span class="warning" id="warning_pass_new"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Enter password</b>
							</span> 
			</div>	
			
			
			<div class="row"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
							<button type="button" id="login_btn"
								class="btn btn-primary btn-lg btn-block"
								style="border-radius: 0px; background-color: #F26419; border-width: 0mm"
								value="Login" onclick="signup();">SIGN UP</button>
			</div>
	
			<div class="row"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
							<button type="button" id=""
								class="btn btn-primary btn-lg btn-block"
								style="border-radius: 0px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); color: #2455f4; background-color: white; border-width: 0mm"
								onclick="show_old();">Existing User? Login</button>
						</div>	
						
		</div>
<!--//////////// end changing code -->
		<div id ="old">
						<div class="floating-div"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
							<span class='blocking-span'> <input type="text"
								id="email_phone" name="email_phone" class="inputText"
								required /> <span style="align: left"
								class="floating-label pull-left"><b>Enter
										Email/Mobile number</b></span>
							</span> <span class="warning" id="warning_email"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Please enter valid Email
									ID/Mobile number</b>
							</span> <span class="warning" id="warning_register"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Email ID/Mobile number not
									registered</b>
							</span>
						</div>

						<div class="floating-div"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
							<span class='blocking-span'> <input type="password"
								id="pass_text" name="pass_text" class="inputText" required />
								<span class="floating-label"><b>Enter Password</b></span>
							</span> <span class="warning" id="warning_pass"
								style="align: left; padding-left: 0px; color: red; font-size: 80%"
								class="pull-left"> <b>Invalid password</b>
							</span> <a> <span style="text-align: right">Forgot?</span>
							</a>
						</div>
						
						
						<div class="row"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
							<button type="button" id="login_btn"
								class="btn btn-primary btn-lg btn-block"
								style="border-radius: 0px; background-color: #F26419; border-width: 0mm"
								value="Login" onclick="validate();">Login</button>
						</div>
						<div class="row"
							style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
							<button type="button" id=""
								class="btn btn-primary btn-lg btn-block"
								style="border-radius: 0px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); color: #2455f4; background-color: white; border-width: 0mm"
								onclick="show_signup();">New to Flopkart? Sign up</button>
						</div>
		</div>
		
				
					</div>
					<div class="col-sm-1">
						<button type="button" class="close" data-dismiss="modal">x</button>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================== END Login Modal ============================================== -->

		<div class="main-header">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-2 logo-holder">
						<!-- ============================================================= LOGO ============================================================= -->
						<div class="logo">
							<a href="index.jsp"> <img height="50px"
								src="./images/flopkartLogo.jpg" alt="">
							</a>
						</div>
						<!-- /.logo -->
						<!-- ============================================================= LOGO : END ============================================================= -->
					</div>
					<!-- /.logo-holder -->

					<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
						<!-- /.contact-row -->
						<!-- ============================================================= SEARCH AREA ============================================================= -->
						<div class="search-area">
							<form>
								<div class="control-group">
									<div class="row">
										<div class="col-md-10">
											<input class="search-field"
												placeholder="Search for products, brands and more" />
										</div>
										<div class="col-md-2">
											<a class="search-button" href="underConstruct.html"></a>
										</div>
									</div>
								</div>
							</form>
						</div>
						<!-- /.search-area -->
						<!-- ============================================================= SEARCH AREA : END ============================================================= -->
					</div>
					<!-- /.top-search-holder -->
					
					<div class="col-xs-12 col-sm-12 col-md-4">
					<ul class="horizontal" style="float:right">
						
						<li id="unregistered"><div>
						<!-- ============================================================= LOGIN and SIGNUP ============================================================= -->
							<form id="myProfile" method="post" action="./myProfile.jsp">
								<label id="Login_btn"> <a href="#" style="font-size: 16px; letter-spacing: 0.1px; font-weight: 600;
						 		color: white;" data-toggle="modal" data-target="#loginModal"> Login &amp; Signup</a>
								</label>
							</form></div>
						<!-- ============================================================= LOGIN and SIGNUP END ============================================================= -->
						</li>
						
						<li id="registered"><div>
						<!-- ============================================================= MY ACCOUNT ============================================================= -->
						<div class="dropdown">
								<a href="#" style="font-size: 16px; letter-spacing: 0.1px; font-weight: 600;
						 		color: white;" id="menu1" data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">My Account 
						 		<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
									<li role="presentation"
											style="display: flex; align-items: center; width: 100%;">
											<a href="myProfile.jsp"><i style="color: #157ed2"
												class="fas fa-user-circle"></i> My Profile</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation" style="display: flex; align-items: center; width: 100%;"><a href="underConstruct.html">
									<i style="color: #157ed2" class="fas fa-list"></i> Orders</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation" style="display: flex; align-items: center; width: 100%;"><a href="underConstruct.html">
									<i style="color: #157ed2" class="fas fa-heart"></i> Wishlist</a></li>
								</ul>
							</div>
						</div>
						<!-- ============================================================= MY ACCOUNT END ============================================================= -->
						</li>
						
					</ul>
				</div>
					<!-- col-md-4 -->
			</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->

		</div>
		<!-- /.main-header -->
</header>
		
<div class="body-content outer-top-xs">
		<div class="row">
			<div style="margin-left: 50px" class="col-md-8 col-sm-12 shopping-cart">
				<div class="shopping-cart-table">
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th class="cart-quantity item" colspan="7" style="text-align: left; font-size: 16px">MY CART (1)</th>
				</tr>
			</thead><!-- /thead -->
			<tbody>
				<tr>
					<td class="cart-image">
						<a class="entry-thumbnail" href="item.jsp">
						    <img src="./images/products/p2.jpg" alt="">
						</a>
					</td>
					<td class="cart-product-name-info">
						<h4 class='cart-product-description'><a href="detail.html">Men's Leather Strap Watch</a></h4>
						<div class="row">
							<div class="col-sm-4">
								<div class="rating rateit-small"></div>
							</div>
							<div class="col-sm-8">
								<div class="reviews">
									(06 Reviews)
								</div>
							</div>
						</div><!-- /.row -->
						<div class="cart-product-info">
											<span class="product-color">COLOR:<span>Blue</span></span>
						</div>
					</td>
					<td class="cart-product-quantity">
						<div class="quant-input">
				                <div class="arrows">
				                  <div id="quant-up" class="arrow plus gradient"><span ><i class="icon fa fa-sort-asc"></i></span></div>
				                  <div id="quant-down" class="arrow minus gradient"><span ><i class="icon fa fa-sort-desc"></i></span></div>
				                </div>
				                <input type="number" id="quantity" min="1">
			              </div>
		            </td>
					<td class="cart-product-grand-total"><input type="number" id="oneCost" hidden="hidden" value="300"><input type="number" id="oneActualCost" hidden="hidden" value="450">
					<span><i class="fa fa-rupee-sign"></i> <span id="price">300 </span>  </span><span><del>  <i class="fa fa-rupee-sign"></i> <span id="originalPrice">450</span></del></span></td>
				</tr>
			</tbody><!-- /tbody -->
			<tfoot>
				<tr>
					<td colspan="7">
						<div class="shopping-cart-btn">
							<span class="">
								<button type="button" id="continueShopping_btn"
									class="btn btn-primary"
									style="text-align: center; margin-left: 180px; background-color: #fff; box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, .1); color: #212121; font-size: 15px; font-weight: 800; height: 50px; width: 300px;">
									<i class="fa fa-chevron-left"></i> CONTINUE SHOPPING
								</button>
								<button type="button" id="placeOrder_btn"
									class="btn btn-primary pull-right outer-right-xs btn-block"
									style="text-align: center; font-size: 15px; font-weight: 800; height: 50px; width: 300px; background-color: #F26419">PLACE
									ORDER</button>
							</span>
						</div>
						<!-- /.shopping-cart-btn -->
					</td>
				</tr>
			</tfoot>
		</table><!-- /table -->
		</div>
	</div><!-- /.shopping-cart-table -->
 </div><!-- /.shopping-cart -->
 <div style="margin-left : 30px;" class="col-md-3 col-sm-12">
 <div class="shopping-cart-pricing">
	<table class="table">
		<thead>
			<tr>
				<th class="cart-quantity item" style="text-align: left; font-size: 16px">PRICE DETAILS</th>
			</tr>
			<tr class="dotted">
				<td>
					<div class="price" style="text-align: left; font-size: 14px">Price <span style="padding-left:154px"><i class="fa fa-rupee-sign"></i><span style="font-weight: normal" id="totalPrice" ></span></span></div>
					<div class="delivery-charges" style="text-align: left; font-size: 14px">Delivery Charges<span class="inner-left"><i class="fa fa-rupee-sign"></i><span id="deliveryCharges"></span></span></div>
				</td>
			</tr>
			<tr class="lined">
				<td>
					<div class="amount-payable" style="text-align: left;font-size: 14px">Amount Payable <span class="inner-left-md"><i class="fa fa-rupee-sign"></i><span id="amount-payable"></span></span></div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="savings">Your Total Savings on this order <span><i class="fa fa-rupee-sign"></i> <span id="savings"></span></span></div>
				</td>
			</tr>
			</thead>
		</table><!-- /table -->
	</div><!-- cart-shopping -->
	<div style="margin: 34px 24px 10px 10px; display: inline-block">
		<img src="./images/safePayment_Cart.png"
			style="width: 29px; height: 36px; margin-right: 20px; float: left;"> <span
			style="font-size: 12px; font-weight: 500; line-height: 1.29; color: #878787;">
			Safe and Secure Payments. Easy returns. <br/>100% Authentic products.</span>
	</div>
	</div><!-- /.col-md-3 -->	
	
			</div> <!-- /.row -->
	</div> <!-- body-content outer-top-xs -->
 
 
 
 
 <!-- JavaScripts placed at the end of the document so the pages load faster --> 
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
<script src="./customJavascripts/header.js"></script>
<script>
$(document).ready(function(){
	$("#signup").hide();
	$(".warning").hide();
	checkCookie();	
	$("#f_name").focus(function(){
        $('.warning').hide(); // hide error popup
	});
	$("#l_name").focus(function(){
        $('.warning').hide(); // hide error popup
	});
	$("#phone").focus(function(){
        $('.warning').hide(); // hide error popup
	});
	$("#email").focus(function(){
        $('.warning').hide(); // hide error popup
	});
	$("#pass_txt").focus(function(){
        $('.warning').hide(); // hide error popup
	});	
	
	$("#quantity").val(1);
	$("#totalPrice").text(parseInt($("#price").text()));
	var value = $("#totalPrice").text();
    if(parseInt(value)>=1000) {
    	$("#deliveryCharges").text("0");
    }
    else if(parseInt(value)<1000) {
    	$("#deliveryCharges").text("50");
    }
	$("#amount-payable").text(parseInt($("#totalPrice").text())+parseInt($("#deliveryCharges").text()));
	$("#savings").text(parseInt($("#originalPrice").text())-parseInt($("#price").text()))
});

$("#quant-up").click(function(){
	var value = $("#quantity").val();
	var onecost = $("#oneCost").val();
	var oneactual = $("#oneActualCost").val();
	value++;
	$("#quantity").val(value);
	onecost *= value;
	oneactual *= value;
	$("#price").text(onecost);
	$("#originalPrice").text(oneactual);
	var pricevalue = $("#price").text();
	var origvalue = $("#originalPrice").text();
	$("#originalPrice").text(origvalue);
	$("#totalPrice").text(pricevalue);
	textChange();
	$("#amount-payable").text(parseInt($("#totalPrice").text())+parseInt($("#deliveryCharges").text()));
	$("#savings").text(parseInt($("#originalPrice").text())-parseInt($("#price").text()));
});

$("#quant-down").click(function(){
	var value = $("#quantity").val();
	var onecost = $("#oneCost").val();
	var oneactual = $("#oneActualCost").val();
	if(value>1){
		value--;
		$("#quantity").val(value);
		onecost *= value;
		oneactual *= value;
		$("#price").text(onecost);
		$("#originalPrice").text(oneactual);
		var pricevalue = $("#price").text();
		var origvalue = $("#originalPrice").text();
		$("#originalPrice").text(origvalue);
		$("#totalPrice").text(pricevalue);
		textChange();
		$("#amount-payable").text(parseInt($("#totalPrice").text())+parseInt($("#deliveryCharges").text()));
		$("#savings").text(parseInt($("#originalPrice").text())-parseInt($("#price").text()));
	}
});

//if total cart amount is more than 1000, delivery charge becomes 0
function textChange(){
    var value = $("#totalPrice").text();
    if(parseInt(value)>=1000) {
    	$("#deliveryCharges").text("0");
    }
    else if(parseInt(value)<1000) {
    	$("#deliveryCharges").text("50");
    }
}

function checkCookie() 
{
	var user = getCookie("user_details");
	//alert(user);
    if (user != "") 
    {
    	setCookie("user_details", user, 30);
        showUser(JSON.parse(user));
    } 
    else 
    {
    	showLogin();
		//$('#loginModal').modal('toggle');
    }
}
function showLogin()
{
	$("#registered").hide();
	$("#unregistered").show();
}

function showUser(user)
{
	$("#registered").show();
	$("#unregistered").hide();
}

function show_signup()
{ 
	$("#old").hide();
	$("#signup").show();
}


function show_old()
{ 
	$("#old").show();
	$("#signup").hide();
}

function signup() 
{	
	if (!$("#f_name").val() ){
		$("#warning_fname").show();
		return false;
	}
	if (!$("#l_name").val() ){
		$("#warning_lname").show();
		return false;
	}
	
	var email = $("#email").val();
	var phone = $("#phone").val();
	if ( !phone.match(/^[0-9]{10}$/))
	{
			$("#warning_phone_new").show();
			return false;
	}
	
	if (!$("#email").val() ){
		$("#warning_email_new").show();
		return false;
	}
	else if (!email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
	{
			$("#warning_email_new").show();
			return false;
	}
	
	if (!$("#pass_txt").val() ){
		$("#warning_pass_new").show();
		return false;
	}
	
    var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
	{
		type : 'POST',
		contentType : 'application/json',
		url : ctxPath + "/webapi/users/createCustomer",
		dataType : "json", // data type of response
		data : signupformToJSON(),
		success : renderDetails
	});
}
function signupformToJSON() 
{
	var fname = $("#f_name").val();
	var lname = $("#l_name").val();
	var email = $("#email").val();
	var password = $("#pass_txt").val();
	var phone = $("#phone").val();
	
	
	var flipkart_user = JSON.stringify({
		"firstName":fname,
		"lastName":lname,
		"phone":phone,
    		"email":email,
    		"password":password
    	
    	});
	return flipkart_user;
}

function validate() 
{
	$(".warning").hide();
	var email_phone = $("#email_phone").val();
	var len = email_phone.length;
	if(email_phone.match(/^[0-9]/))
	{
		if (len!=10 || !email_phone.match(/^[0-9]{10}$/))
		{
			$("#warning_email").show();
			return false;
		}
	}
	else if (!email_phone.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
	{
			$("#warning_email").show();
			return false;
	}
	else
		findUser();
}

	//Helper function to serialize all the form fields into a JSON string
	function formToJSON() 
	{
        var email = $("#email_phone").val();
		var password = $("#pass_text").val();
		var flipkart_user = JSON.stringify({
        	"email":email,
        	"password":password
        	});
		return flipkart_user;
	}
	
    function findUser() 
    {
        var ctxPath = "<%=request.getContextPath()%>";
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

function renderDetails(user)
{
	if (user == null)
	{
		$("#warning_register").show();
	}
	else if (user.id === 0)
	{
		$("#warning_pass").show();
	}
	else
	{
		showUser(user);
		setCookie("user_details", JSON.stringify(user), 1);
		$('#loginModal').modal('toggle');
	}

	return false;
}
</script>
</body>
</html>