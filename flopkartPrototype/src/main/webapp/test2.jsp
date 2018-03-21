<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Buy Now</title>
<%@include file="metaContent.jsp" %>
<%@include file="header.jsp" %>
</head>
<body>

<div class="body-content">
	<div class="container">
		<div class="checkout-box ">
			<div class="row">
				<div class="col-md-8">
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
						<div id="login_panel" class="panel panel-default checkout-step-01">

						<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
						          <span>1</span>Login
						        </a>
						     </h4>
					    </div>
	    <!-- panel-heading -->
	
		<div id="collapseOne" class="panel-collapse collapse in">
	
			<!-- panel-body  -->
		    <div class="panel-body">
				<div class="row">		
	
					<!-- guest-login -->			
					<div class="col-md-6 col-sm-6 guest-login">
					
						<h4 class="checkout-subtitle">Register or Login</h4>
						<h4 class="checkout-subtitle outer-top-vs">Register and save time</h4>
						<p class="text title-tag-line ">Register with us for future convenience:</p>
						
						<ul class="text instruction inner-bottom-30">
							<li class="save-time-reg">- Fast and easy check out</li>
							<li>- Easy access to your order history and status</li>
						</ul>
	
						<button type="submit" class="btn-upper btn btn-primary checkout-page-button checkout-continue " onclick="buynowsignup();">Continue</button>
					</div>
					<!-- guest-login -->
	
					<!-- already-registered-login -->
					<div class="col-md-6 col-sm-6 already-registered-login">
						<h4 class="checkout-subtitle">Already registered?</h4>
						<p class="text title-tag-line">Please log in below:</p>
						  <button type="submit" class="btn-upper btn btn-primary checkout-page-button" onclick="buynowvalidation();">Login</button>
					</div>	
				<!-- already-registered-login -->		

			</div>			
		</div>
		<!-- panel-body  -->

	</div><!-- row -->
</div>
<!-- checkout-step-01  -->
					  
						<!-- checkout-step-02  -->
					  	<div class="panel panel-default checkout-step-03">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" id="collapse2" data-parent="#accordion" href="#collapseThree">
						       		<span>2</span>Shipping Address
						        </a>
						      </h4>
						    </div>
						    <div id="collapseThree" class="panel-collapse collapse">
						      <div class="panel-body">
						      <textarea rows="4" style="width:100%" id="shipAddress" required>
                              </textarea>
                              <br/>
                              <button type="submit" class="btn btn-primary" onclick="orderSummary()">Next</button>
						      </div>
						    </div>
					  	</div>
					  	<!-- checkout-step-02  -->

						<!-- checkout-step-03  -->
					    <div class="panel panel-default checkout-step-04">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed"  id="collapse3" data-parent="#accordion" href="#collapseFour">
						        	<span>3</span>Order Summary
						        </a>
						      </h4>
						    </div>
						    <div id="collapseFour" class="panel-collapse collapse">
							    <div class="panel-body">                                                                                 
								  <div class="table-responsive">          
								  <table class="table">
								  <thead>
							    	<tr>
							    		<th>Item Name</th>
							    		<th>Quantity</th>
							    		<th>Marked Price</th>
							    		<th>Discount</th>
							    		<th>Discounted Price</th>
								    
									</tr>
							    	</thead>
							    	<tbody>
							    	<tr>
							    	<% int quant = Integer.parseInt(request.getParameter("quant"));%>
							    	<% int listingamount = Integer.parseInt(request.getParameter("listingamount"));%>

							    	<% int discount=Integer.parseInt(request.getParameter("discounted"));%>
							    	<% int price=Integer.parseInt(request.getParameter("priced"));%>
							    		<td><%=request.getParameter("listingname") %></td>
							    		<td><%=quant%></td>
							    		<td><%=price%></td>
							    		<td><%=discount%> %</td>
							    		<td><%=listingamount%></td>
							    	</tr>
							    	<tr>
							    		<th colspan="4">Total Price:</th>
							    		<% int total = quant * listingamount;%>



							    		<th><%=total %></th>
							    	</tr>
							    	</tbody>
							    </table></div>


							   <div class="seller-info" id="seller-info" style='color:green; font-size:15px'>
							   <% String sname=request.getParameter("sellername");%>
							   Seller Name: <%=sname %>
							   </div>                              <br/>
                              <button type="submit" class="btn btn-primary" onclick="paymentOption()">Next</button>

							    </div>
					    	</div>
						</div>
						<!-- checkout-step-03  -->

						<!-- checkout-step-04  -->
					  	<div class="panel panel-default checkout-step-05">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" id="collapse4" data-parent="#accordion" href="#collapseFive">
						        	<span>4</span>Payment Option
						        </a>
						      </h4>
						    </div>
						    <div id="collapseFive" class="panel-collapse collapse">
						      <div class="panel-body">
						      <div class="radio">
								  <label><input  type="radio" name="payment" disabled>Cash on delivery</label>
								</div>
								<div class="radio">
								  <label><input checked="checked" type="radio" name="payment">Flopkart Bank</label>
								</div>
						      <button type="submit" class="btn btn-primary" onclick="insertOrder();">Submit</button>
						      </div>
						    </div>
					    </div>
					    <!-- checkout-step-04  -->

					</div><!-- /.checkout-steps -->
				</div>
				<div class="col-md-4">
					<!-- checkout-progress-sidebar -->
<div class="checkout-progress-sidebar ">
	<div class="panel-group">
		<div class="panel panel-default">
			<div class="panel-heading">
		    	<h4 class="unicase-checkout-title">Your Checkout Progress</h4>
		    </div>
		    <div class="">
				<ul class="nav nav-checkout-progress list-unstyled">
					<li><a href="#">Delivery Address</a></li>
					<li><a href="#">Order Summary</a></li>
					<li><a href="#">Payment Options</a></li>
				</ul>		
			</div>
		</div>
	</div>
</div> 
<!-- checkout-progress-sidebar -->				</div>
			</div><!-- /.row -->
		</div><!-- /.checkout-box -->
</div><!-- /.body-content -->
<%@include file="footer.jsp" %>
</body>
<script>
$(document).ready(function(){
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
	show_Welcome();

	document.getElementById("login_btn").onclick = 
		function(l_data) 
		{
			validate(ctxPath);
			window.location.reload(true);
		}
})
function buynowvalidation() 
{
	$('#loginModal').modal('toggle');
    checkCookie();
    show_Welcome();
}



function show_Welcome()
{

    var user = getCookie("user_details");
    if (user != "") 
    {
    	data = "<div class='panel-heading'>"+
		    	"<h4 class='unicase-checkout-title'>"+
			    	"<a data-toggle='collapse' class='collapsed' data-parent='#accordion' href='#collapseOne'>"+
			    		"<span>1</span>Welcome, "+(JSON.parse(user)).firstName+
			    	"</a>"+
		    	"</h4>"+
	    	"</div>"
    	$("#login_panel").html(data);
    	$("#shipAddress").val((JSON.parse(user)).address);
    	$("#collapse2").removeClass("collapsed");
    	$("#collapseThree").addClass("in");
    } 
}

function orderSummary()
{
	$("#collapse2").addClass("collapsed");
	$("#collapseThree").removeClass("in");
	$("#collapse3").removeClass("collapsed");
	$("#collapseFour").addClass("in");
}

function paymentOption()
{
	$("#collapse3").addClass("collapsed");
	$("#collapseFour").removeClass("in");
	$("#collapse4").removeClass("collapsed");
	$("#collapseFive").addClass("in");
}

function buynowsignup()
{
	$('#loginModal').modal('toggle');
	show_signup();
}
function submit_order() 
{
    var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/orders",
		dataType : "json", // data type of response
		success : function(result){
			alert("Order placed successfully");
            },
    	error:function() {
        	alert("error occurred");
    	}
	});
}

function order_formToJSON() 
{
	var shipAddress = $("#shipAddress").val().trim();
	if(shipAddress=="")
	{
		alert("Please enter Address");
		window.location.reload(true);
		return false;
	}
    var user = getCookie("user_details");
	var userid = JSON.parse(user).id;
	var OrderDate = "2018-03-15";
	var Status = "Ordered";
	var TotalAmount =<%=total %>;
	<%session.setAttribute("totalamount","TotalAmount");%>
	var flopkartOrder = JSON.stringify({
	    "shippingAddress" : shipAddress,
	    "userId" : userid,
	    "orderDate" : OrderDate,
	    "status" : Status,
	    "totalAmount" : TotalAmount  
	});
	//alert(flopkartOrder);
	return flopkartOrder;
}

function render(){
	var listingid = '<%=request.getParameter("listingid")%>';
	var quant = '<%=quant%>';
	var price='<%=price%>';
	var discount='<%=discount%>'; 
    var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
			{
				type : 'GET',
				url : ctxPath + "/webapi/items/listing/"+listingid,
				dataType : "json", // data type of response
				success : function(result)
					{
						for(var i=0; i<quant;i++)
						{
							$.ajax(
									{
										type : 'PUT',
										contentType : 'application/json',
										url : ctxPath + "/webapi/items/update/"+result[i].id,
										data : update_item_formtoJSON(),
										dataType : "json", // data type of response
										success : function(data)
											{
											 		alert("success");	
								            },
								    	error:function(err) {
// 								        	alert(JSON.stringify(err));
								    	}
									});	
						}
		            },
		    	error:function(err) {
// 		        	alert("lis"+JSON.stringify(err));
		    	}
			});
	window.location.href="myorder.jsp";
}

function update_item_formtoJSON() 
{
	var flipkart_item = JSON.stringify({
		"status": "Ordered"
    	});
	return flipkart_item;
}

function insertOrder()
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/webapi/orders/create",
			data : order_formToJSON(),
			success : render(),
			error: function() {
				alert(JSON.stringify(err));
			}
	});
}
</script>
</html>