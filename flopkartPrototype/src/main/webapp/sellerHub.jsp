<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell online on Flopkart!</title>
    <link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
    <link rel="stylesheet" href="./bootstrapFiles/css/styles.css">
    <link rel="stylesheet" href="./bootstrapFiles/css/Pretty-Registration-Form.css">
</head>

<body>
    <header><a href="#"><img src="./images/sellerHub/seller-hub-logo.png" id="flipkartsellerhub" class="flipkartsellerhub"></a>
        <form class="form-inline bootstrap-form-with-validation" action="#">
            <div class="form-group">
                <label class="control-label sr-only" for="email-input">Email </label>
                <input class="form-control" type="email" placeholder="Email" id="email-input" required>
            </div>
            <div class="form-group">
                <label class="control-label sr-only" for="password-input">Password </label>
                <input class="form-control" type="password" placeholder="Password" id="password-input" required>
            </div>
            <input class="btn btn-default" type="submit" onclick="return sellerLogin();" value="Login"/>
        </form>
        
    <div class="container-fluid">
        
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav">
                <li class="active" role="presentation"><a href="index.jsp">HOME</a></li>
                <li role="presentation"><a href="underConstruct.html">SELL SMART</a></li>
                <li role="presentation"><a href="underConstruct.html">PRICING</a></li>
                <li role="presentation"><a href="underConstruct.html">FAQ</a></li>
                <li role="presentation"><a href="underConstruct.html">BENEFITS</a></li>
                <li role="presentation"><a href="index.jsp">Flopkart.com</a></li>
            </ul>
        </div>
    </div>
 </header>
 <div id="banner" class="banner container-full">
 	<div class="container">
 		<div class="row">
 			<div class="col-md-8 banner-desc"></div>
 			<div class="col-md-4">
 				<div class="form-login animated bounceIn">
 					<h4>Register Today</h4>
		   			 <form method="post" action="sellerRegistration.jsp">
			        	<div>
				        	<input name="emailid" id="emailid" type="email" placeholder="Email Id" required>
				        	<div id="warning_email_new" style="color: #b21221; font-size: 13px; margin: 0; display: inline-block;
						    max-width: 100%; margin-bottom: 5px; font-weight: 700;">Please enter a valid email address</div>
			        	</div>
				        <div style="padding-top:15px">
				        	<input name="phoneno" id="phoneno" type="text" placeholder="Phone No" required>
				        	<div id="warning_phone_new" style="color: #b21221; font-size: 13px; margin: 0; display: inline-block;
							    max-width: 100%; margin-bottom: 5px; font-weight: 700;">Please enter a valid phone number</div>
				        </div>
				        <div style="padding-top:15px">
				            <button id="registerNow" value="Start Selling" type="submit" class="startselling">Start Selling</button>
				        </div>
			        </form>
				</div>
		    </div>
		  </div>
		</div>
	</div>
    <div class="splitlayout container">
    <h1>Grow your business with the leader in Indian e-commerce</h1></div>
	<div class="row">
		<div class="col-md-4">
			<div style="left: 0; height: 100%; position: relative; -webkit-backface-visibility: hidden;
	    		z-index: 100; background: #fff;">
	    		<div style="max-width: 80%; margin: 0 auto; padding: 1em 0 0;">
	    			<div class="chapter-img animated">
						<img src="./images/sellerHub/search.PNG" id="search" 
						  style="float: left; padding:4px; width: 120px; height: 114.8px; border-radius: 40%"/>
					</div>
					<div style="padding-top: 0; font-family: Open Sans; color: #005286; text-align: center;
	    				position: relative; top: 15px;">
						<h3 style="font-family: bebasneue; font-size: 3em; letter-spacing: 1px;
						 margin-bottom: 0; margin-top: 5px; font-weight: 600">10 CRORE</h3>
						<p style="margin-left: 5px; font-size: 13px; font-weight: 300; margin-bottom: 0; margin: 0 0 10px;">
							customers looking to buy your products</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div style="left: 0; height: 100%; position: relative; -webkit-backface-visibility: hidden;
	    		z-index: 100; background: #fff;">
	    		<div style="max-width: 80%; margin: 0 auto; padding: 1em 0 0;">
	    			<div class="chapter-img animated">
						<img src="./images/sellerHub/handshake.PNG" id="handshake" class="handshake"
						style="float: left; padding:5px; width: 130px; height: 114.8px; border-radius: 50%" />
					</div>
					<div style="padding-top: 0; font-family: Open Sans; color: #005286; text-align: center;
	    				position: relative; top: 15px;">
						<h3 style="font-family: bebasneue; font-size: 3em; letter-spacing: 1px;
						 margin-bottom: 0; margin-top: 5px; font-weight: 600">1,00,000+</h3>
						<p style="margin-left: 5px; font-size: 13px; font-weight: 300; margin-bottom: 0; margin: 0 0 10px;">
							business growing rapidly with us</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div style="left: 0; height: 100%; position: relative; -webkit-backface-visibility: hidden;
	    		z-index: 100; background: #fff;">
	    		<div style="max-width: 80%; margin: 0 auto; padding: 1em 0 0;">
	    			<div class="chapter-img animated">
						<img src="./images/sellerHub/money.PNG" id="money" class="money"
						style="float: left; padding:4px; width: 110px; height: 114.8px; border-radius: 36%" />
					</div>
					<div style="padding-top: 0; font-family: Open Sans; color: #005286; text-align: center;
	    				position: relative; top: 15px;">
						<h3 style="font-family: bebasneue; font-size: 3em; letter-spacing: 1px;
						 margin-bottom: 0; margin-top: 5px; font-weight: 600">7-15 DAYS</h3>
						<p style="margin-left: 5px; font-size: 13px; font-weight: 300; margin-bottom: 0; margin: 0 0 10px;">
							to process your payments</p>
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
	$("#warning_email_new").hide();
	$("#warning_phone_new").hide();
	
});

$("#emailid").keyup(function(){
	var email = $("#emailid").val();
	if (!email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
		$("#warning_email_new").show();
		$("#emailid").css("color","red");
		$("#registerNow").attr('disabled','disabled');;
	}
	else {
		$("#warning_email_new").hide();
		$("#emailid").css("color","black");
		$("#registerNow").removeAttr('disabled');
	}
});

$("#phoneno").keyup(function(){
	var phone = $("#phoneno").val();
	if (!phone.match(/^[0-9]{10}$/)) {
		$("#warning_phone_new").show();
		$("#phoneno").css("color","red");
		$("#registerNow").attr('disabled','disabled');
	}
	else {
		$("#warning_phone_new").hide();
		$("#phoneno").css("color","black");
		$("#registerNow").removeAttr('disabled');
	}
});

function formToJSON() 
{
	var email = $("#email-input").val();
	var password = $("#password-input").val();
	var flopkart_user = JSON.stringify({
    	"email":email,
    	"password":password,
    	"userType":"seller"
    	});
//	alert(flopkart_user);
	return flopkart_user;
}

function sellerLogin(){
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax({
		type : 'POST',
		contentType : 'application/json',
		url : ctxPath + "/webapi/users/email",
		data : formToJSON(),
		success : function(result) 
		{
			if(result.id==0)
			{
 				alert("Invalid credentials");
 				window.location.reload(true);
				return false;
			}
			else if(result.userType != "seller")
			{
 				alert("Register as seller first");
 				window.location.reload(true);
				return false;
			}
			setCookie("seller_details",JSON.stringify(result),30);
			
// 			alert(getCookie("seller_details"));
			window.location.href = "sellerhome.jsp";
			return true;
		},
		error : err
	});
}



function err(error) 
{	window.location.reload(true);
	let x = error;
 //	alert(JSON.stringify(error)+" Enter valid login credentials");
	return false;
}


</script>
</html>