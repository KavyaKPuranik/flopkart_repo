<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<%@ page import="com.iiitb.ooadvoid.CreateProperties" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="metaContent.jsp" %>
	<title>My Wishlist</title>
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
      <div class="my-wishlist-page"> 
      	 <div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th colspan="4" style="font-size: 22px; font-weight: 500;
    					font-family: Roboto, Arial, sans-serif">My Wishlist</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="col-md-2"><img src="./images/products/p1.jpg" alt="imga"></td>
					<td class="col-md-7">
						<div class="product-name"><a href="#">Floral Print Buttoned</a></div>
						<div class="rating">
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star non-rate"></i>
							<span class="review">( 06 Reviews )</span>
						</div>
						<div class="price">
							$400.00
							<span style="text-decoration: line-through;">$900.00</span>
						</div>
					</td>
					<td class="col-md-3 close-btn" style="float: right;">
						<div id="removeItem"><i class="fa fa-trash"></i></div>
					</td>
				</tr>
				<tr>
					<td class="col-md-2"><img src="./images/products/p2.jpg" alt="phoro"></td>
					<td class="col-md-7">
						<div class="product-name"><a href="#">Floral Print Buttoned</a></div>
						<div class="rating">
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star rate"></i>
							<i class="fa fa-star non-rate"></i>
							<span class="review">( 06 Reviews )</span>
						</div>
						<div class="price">
							$450.00
							<span style="text-decoration: line-through;">$900.00</span>
						</div>
					</td>
					<td class="col-md-3 close-btn" style="float: right;">
						<div id="removeItem"><i class="fa fa-trash"></i></div>
					</td>
				</tr>
			</tbody>
		</table>
	   </div>
	   </div>
	  </div>
    </div>
  </div>
<%@include file="footer.jsp" %>


<script>
$(document).ready(function() { 
	$("#unregistered").hide();
  var ctxPath = "<%=request.getContextPath()%>"
	headerFunctions(ctxPath);
	checkCookie();	
	$('#myModal').modal('hide');
});

function checkCookie() 
{
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 30);
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
		setCookie("user_details", user, 30);
		diplayUser(JSON.parse(user));
    } 
    else 
    {
    	logout();
    }
}

$("#dp1").hover(function(){
	$("#tooltiptext").show();
    $("#tooltiptext").text($('#userEmail').val()+"\n"+$("#userID").text());
});

function diplayUser(user)
{	
	$('#userID').html(user.firstName+" "+user.lastName);
	$('#userEmail').val(user.email);
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