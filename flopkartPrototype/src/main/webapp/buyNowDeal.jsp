<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <style>
    .progress-class
    {
    	color:green;
    	text-align:center;
    }
    </style> 
	<%@include file="metaContent.jsp" %>
	<title>Place Order</title>
</head>
<body>
    <%@include file="header.jsp" %>
     
   <div class="body-content">
	<div class="container">
		<div class="checkout-box ">
			<div class="row" style="margin-top:20px">
				<div class="col-md-8">
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
						<div  id="login_panel" class="login-class panel panel-default checkout-step-01" >
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse1" data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
						          <span>1</span>Login
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
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
						
											<button type="button" class="btn-upper btn btn-primary checkout-page-button checkout-continue " onclick="return buynowsignup();">Continue</button>
										</div>
										<!-- guest-login -->
						
										<!-- already-registered-login -->
										<div class="col-md-6 col-sm-6 already-registered-login">
											<h4 class="checkout-subtitle">Already registered?</h4>
											<p class="text title-tag-line">Please log in below:</p>
											  <button type="button" class="btn-upper btn btn-primary checkout-page-button" onclick="return buynowvalidation();">Login</button>
										</div>	
									<!-- already-registered-login -->		
					
								</div>			
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-01  -->
						
						
						<!-- checkout-step-02  -->
						<div id="address_panel" class="panel panel-default checkout-step-02">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse2" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo">
						          <span>2</span>Shipping Address
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
							<div id="collapseTwo" class="panel-collapse collapse">
						
								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">		
									
						      <div class="panel-body">
							      <textarea rows="4" style="width:100%" id="shipAddress" required>
	                              </textarea>
	                              <div class="row">
		                              <div class="col-md-3"><button type="button"  
		                              class="btn btn-primary" onclick="orderSummary()">Next</button></div>
		                              
		                              <div class="col-md-3 pull-right" style="margin-top:5px;color:red" 
		                              id="addrWarning" hidden="hidden">Please enter address</div>	
		                          </div>
							  </div>
								</div>			
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-02  -->
						
						
						<!-- checkout-step-03  -->
						<div id="summary_panel" class="panel panel-default checkout-step-03">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse3" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseThree">
						          <span>3</span>Order Summary
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
							<div id="collapseThree" class="panel-collapse collapse">
						
								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">
									                                                                 
								  <div class="table-responsive">          
									  <table id="order_table" class="table">
									  <thead>
								    	<tr align="center">
								    		<th>Item Name</th>
								    		<th>Quantity</th>
								    		<th>Marked Price</th>
								    		<th>Discount</th>
								    		<th>Discounted Price</th>
								    		<th style="color:green">Seller Name</th>
										</tr>
								    	</thead>
								    	<tbody id="orderSummary_body">
								    	<tr>
								    		<th colspan="2">Total Price:</th>
								    		<td id="calc" colspan="2">
								    			<input hidden="hidden" type="number" id='total-text' value='0' >
								    			<span><span id='total-span'></span>&nbsp;-&nbsp;<span id='min-span'></span></span>
								    			<input hidden="hidden" type="number" id='minimum' >
								    		</td>
	
	
								    		<th id="total_th">0</th>
								    	</tr>
								    	</tbody>
								    </table>
							    </div>                      
							   
	                              <div class="row">
		                            <div class="col-md-3">
		                              <button id="confirmOrder" type="button" class="btn btn-success" style='margin:0px 10px 10px 10px'
		                              onclick="return insertOrders()">Confirm Order</button>
									</div>
		                            <div class="col-md-3 pull-right" style="margin-top:5px;color:red" 
		                              id="orderWarning" hidden="hidden">Please Confirm the order</div>	
		                          </div>
                            </div>					
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-03  -->
						
						
						<!-- checkout-step-04  -->
						<div id="payment_panel" class="panel panel-default checkout-step-04">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse4" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseFour">
						          <span>4</span>Payment Options
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
							<div id="collapseFour" class="panel-collapse collapse">
						
								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row" style="margin-top:10px">
									
      <div class="col-md-3 sidebar"> 
        <div class="sidebar-module-container">
          <div class="sidebar-filter"> 
        <!-- /.side-menu -->  
        <div class="side-menu outer-bottom-xs">
			<div class="sidebar-widget">
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a onclick='flopkartBank()'>Flopkart Bank</a>
<!--                   <input type="radio" name="paymenttype" value="flopkartBank" checked> -->
                  </h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu --> 
          </div>
          <!-- /.sidebar-filter --> 
        </div>
        <!-- /.sidebar-module-container --> 
      </div>
      			<div class="col-md-9">
      			<div class="row">
			      <div class="col-md-6 sidebar"> 
			      		<label>Account Number</label>
		              <input type="number" class="form-control input-lg"  name="accountno" id="accountno" required>
		          </div>
			      <div class="col-md-6 sidebar"> 
			      		<label>Pin</label>
		              <input type="password" maxlength="4" class="form-control input-lg"  name="pin"  id="pin" required>
		          	</div>
		         </div>
      			<div class="row">
		               <div style="margin-top:5px;margin-left:15px;color:red" hidden="hidden"
		                              id="accWarning">Please enter account no. and pin</div>	
		         </div>
		                          </div>
  				<input type="submit" class="btn btn-primary" value="Proceed to pay" id="proceed"
  									onclick="proceedToPay()">
									</div>
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-04  -->
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
									<ul id="orderProgress" class="nav nav-checkout-progress list-unstyled">
										<li><a href="#" class="progress-class"><b>Order In Progress</b></a></li>
										<li hidden="hidden" id="arrow_order" ><a href="#" class="progress-class glyphicon glyphicon-arrow-down"></a></li>
										<li hidden="hidden" id="orderStatus"><a href="#" class="orderPlaced progress-class"><b>Order Placed</b></a></li>
										<li><a href="#" hidden="hidden" id="arrow" class="progress-class glyphicon glyphicon-arrow-down"></a></li>
										<li><a href="#" hidden="hidden" id="payStatus" class="progress-class"><b id="paymentStatus"></b></a></li>
									</ul>		
								</div>
							</div>
						</div>
					</div> 
					<!-- checkout-progress-sidebar -->				
				</div>
			</div>
		</div>
	</div>
     
     </div>
  
     
    <%@include file="footer.jsp" %>
     
</body>
<script>
var deduct = false;
$(document).ready(function()
{

	$("#arrow_order").hide();
	$("#orderStatus").hide();
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);    
	show_Welcome();
	fetchCombo();
})


function fetchCombo()
{
	var ctxPath = "<%=request.getContextPath()%>";
    var comboid = "<%=request.getParameter("comboid")%>";
	$.ajax(
	{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/listingDeals/combo/"+comboid,
				success : function(combo_json)
				{
					$('#minimum').val(Number.MAX_VALUE);
					for(i = 0; i< combo_json.length; i++)
					{
						dispOrders(combo_json[i],i);
					}
				},
				error: function(err) 
				{
					swal(JSON.stringify(err));
				}
		});
}

function dispOrders(combo_json,i)
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/listings/"+combo_json.listingid,
				success : function(listing_json)
				{
					if(listing_json.quantity>0)
					{
							var actualPrice = listing_json.price - (listing_json.discount*listing_json.price/100);
							$.ajax(
							{
								type : 'GET',
								contentType : 'application/json',
								url : ctxPath + "/webapi/users/"+listing_json.sellerid,
								success : function(seller_json)
								{
									var total = parseInt($("#total-text").val());
									var min = $("#minimum").val();
									var newQuant = listing_json.quantity - 1;
									var table_data =  	"<tr id='"+i+"' style='text-align: left'>"+
							    	"	<td>"+listing_json.listingName+
							    	"<input type='number' id='listingid"+i+"' value='"+listing_json.id+"' hidden='hidden'>"+
							    	"<input type='text' id='itemid"+i+"' value='"+listing_json.itemId+"' hidden='hidden'>"+
							    	"<input type='number' id='new_quant"+i+"' value='"+newQuant+"' hidden='hidden'>"+
							    	"<input type='number' id='comboid"+i+"'  value='"+combo_json.id+"' hidden='hidden'>"+
							    	"</td>"+
							    	"	<td id='quant"+i+"'>"+1+"</td>"+
							    	"	<td>"+listing_json.price+"</td>"+
							    	"	<td>"+listing_json.discount+"%</td>"+
							    	"	<td id='price"+i+"' class='classPrice'>"+actualPrice+"</td>"+
							    	"	<td class='pull-right' style='text-align: right;color:green'>"+
							    	seller_json.firstName+" "+seller_json.lastName+"</td>"+
							    	"</tr>";
							    	$("#orderSummary_body").prepend(table_data);
							    	total = total + (actualPrice);
							    	$("#total-text").val(total);
							    	min = Math.min(min,actualPrice);
							    	$("#minimum").val(min);
							    	$("#min-span").html(min);
							    	$("#total-span").html(total);
							    	$("#total_th").html(total-min);
								},
								error: function(err) 
								{
									swal(JSON.stringify(err));
								}
							});
					}
					else
					{
						swal("Sorry for the inconvinence","Cannot place the Deal as one of the items in the deal is out of stock.");
						document.location.href="index.jsp";
					}
				},
				error: function(err) 
				{
					swal(JSON.stringify(err));
				}
		});
}

function buynowvalidation() 
{
	$('#loginModal').modal('toggle');
    checkCookie();
    show_Welcome();
}

function buynowsignup()
{
	$('#loginModal').modal('toggle');
	show_signup();
}

$(window).on('hidden.bs.modal', function() { 
    $('#loginModal').modal('hide');
    show_Welcome();
});

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
    	$("#login_panel").removeClass("login-class");
    	$("#shipAddress").val((JSON.parse(user)).address);
    	showAddress();
    } 
}

function showAddress()
{
	$("#collapse2").removeClass("collapsed");
	$("#collapse2").attr("aria-expanded",true);
	$("#collapseTwo").addClass("in");
	$("#collapseTwo").attr("aria-expanded",true);
	$("#collapseTwo").attr("style","");
}

function hideAddress()
{
	$("#collapse2").addClass("collapsed");
	$("#collapse2").attr("aria-expanded",false);
	$("#collapseTwo").removeClass("in");
	$("#collapseTwo").attr("aria-expanded",false);
	$("#collapseTwo").attr("style","height:0px");
}

function hideOrder()
{
	$("#collapse3").addClass("collapsed");
	$("#collapseThree").removeClass("in");
	$("#collapse2").attr("aria-expanded",false);
	$("#collapseThree").attr("aria-expanded",false);
	$("#collapseThree").attr("style","height:0px");
}

function showOrder()
{
	$("#collapse3").removeClass("collapsed");
	$("#collapseThree").addClass("in");
	$("#collapse2").attr("aria-expanded",true);
	$("#collapseThree").attr("aria-expanded",true);
	$("#collapseThree").attr("style","");
}

function showPayment()
{
	$("#collapse4").removeClass("collapsed");
	$("#collapseFour").addClass("in");
	$("#collapse4").attr("aria-expanded",true);
	$("#collapseFour").attr("aria-expanded",true);
	$("#collapseFour").attr("style","");
}

function hidePayment()
{
	$("#collapse4").addClass("collapsed");
	$("#collapseFour").removeClass("in");
	$("#collapse4").attr("aria-expanded",false);
	$("#collapseFour").attr("aria-expanded",false);
	$("#collapseFour").attr("style","height:0px");
}

function orderSummary()
{
	hideAddress();
	showOrder();
}

function updateQuant(listingid,new_quant)
{ 
	var ctxPath = "<%=request.getContextPath()%>";
	
	$.ajax(
		{
			type : 'PUT',
			contentType : 'application/json',
			url : ctxPath + "/webapi/listings/update/"+listingid,
			data : JSON.stringify({
		        "quantity": new_quant
			}),
			success : function() {
			},
			error: function() {
				swal(JSON.stringify(err));
			}
	});
}

function insertOrders()
{
	if ($(".login-class")[0])
	{
		hideOrder(); 
	    $('#loginModal').modal('show');
	} 
	else 
	{
		var shipAddress = $("#shipAddress").val().trim();
		if(shipAddress=="")
		{
			hideOrder();
			$("#addrWarning").show();
			showAddress();
		}
		else
		{     
				$('#order_table > tbody > tr').each(function(i,row) 
					{
		
						var rowid = row.id;
					        if(rowid!="")
					       	{
					    		var listingid = $("#listingid"+rowid).val();
					    		var new_quant = $("#new_quant"+rowid).val();
					    		insertOrder(listingid,new_quant,parseInt(rowid));
					        	
					        }
					 });
		}
	}
}

function insertOrder(listingid,new_quant,rowid)
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/webapi/orders/create",
			data : order_formToJSON(rowid),
			success : function(data) 
			{
				hideOrder();
				showPayment();
				$("#confirmOrder").prop('disabled', true);
				$("#arrow_order").show();
				$("#orderStatus").show();
			},
			error: function(err) 
			{
				swal(JSON.stringify(err));
			}
	});
}


function order_formToJSON(rowid) 
{
	//alert( $("#itemid"+rowid).val());
	var shipAddress = $("#shipAddress").val().trim();	
	<%Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
	  int orderid = Math.abs((int)timeStamp.getTime());%>
	var orderid = <%=orderid%> + rowid;
    var user = getCookie("user_details");
	var userid = JSON.parse(user).id;
	var TotalAmount = parseInt($("#quant"+rowid).text()) * parseInt($("#price"+rowid).text());
	if(!deduct && $("#minimum").val()==TotalAmount)
	{
		deduct=true;
		TotalAmount=0;
	}
	<%
	Date myDate = new Date();
	String today = new SimpleDateFormat("yyyy-MM-dd").format(myDate);%>
	var flopkartOrder = JSON.stringify({
        "itemId": $("#itemid"+rowid).val(),
        "orderId": orderid,
	    "shippingAddress" : shipAddress,
	    "userId" : userid,
	    "quantity": $("#quant"+rowid).text(),
	    "status" : "Ordered",
	    "totalAmount" : TotalAmount  
	});
	//swal(flopkartOrder);
	return flopkartOrder;
}



function flopkartBank()
{
	
}


function proceedToPay()
{
	if ($(".login-class")[0])
	{
		hidePayment(); 
	    $('#loginModal').modal('show');
	} 
	else 
	{
		var shipAddress = $("#shipAddress").val().trim();
		if(shipAddress=="")
		{
			hidePayment();
			$("#addrWarning").show();
			showAddress();
		}
		else
		{
			if($(".orderPlaced")[0])
			{
				var accountno = $("#accountno").val();
				var pin = $("#pin").val();
				if(accountno=="" || pin=="" || isNaN(pin))
				{
					$("#accWarning").show();
				}
				else
				{
					var ctxPath = "<%=request.getContextPath()%>";
					$.ajax(
						{
							type : 'POST',
							contentType : 'application/json',
							url : ctxPath + "/webapi/accounts/accountno",
							data : JSON.stringify({
								"accountno": accountno,
							    "pin":pin 
							}),
							success : function(data)
							{
								if(!data)
								{
									$("#accWarning").text("No such account");
									$("#accWarning").show();
								}
								else if(!data.id)
								{
									$("#accWarning").text("Wrong pin");
									$("#accWarning").show();
								}
								else
								{
									var TotalAmount =parseInt($("#total_th").text());
									if(parseInt(data.balance)>=parseInt(TotalAmount))
									{
											$("#accWarning").hide();
											deductBalance(data.balance-TotalAmount,data.id);
											addBalanceFlopkart(TotalAmount);
									}
									else
									{
											$("#accWarning").text("Balance Insufficient");
											$("#paymentStatus").text("Tansaction Failed");
											$("#paymentStatus").attr("style","color:red");
											$("#arrow").attr("style","color:red");
											$("#accWarning").show();
											$("#arrow").show();
											$("#paymentStatus").show();
										      
											$('#order_table > tbody > tr').each(function(i,row) 
												{
												var rowid = row.id;
												        if(rowid!="")
												       	{
												    		var listingid = $("#listingid"+rowid).val();
												    		var new_quant = $("#new_quant"+rowid).val();
											 				updateOrder("Failed",parseInt(rowid));
												        }
												 });
									}
								}
							},
							error: function(err) 
							{
								swal(JSON.stringify(err));
							}
					});
				}
			}
			else
			{
				hidePayment();
				$("#orderWarning").show();
				showOrder();
			}
		}
	}
}

function deductBalance(amt,id)
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
		{
			type : 'PUT',
			contentType : 'application/json',
			url : ctxPath + "/webapi/accounts/update/"+id,
			data : JSON.stringify({
				"balance": amt
			}),
			success : function(data)
			{
				$("#paymentStatus").text("Money Paid");
				$("#proceed").prop('disabled', true);
				$("#paymentStatus").attr("style","color:green");
				$("#arrow").attr("style","color:green");
				$("#arrow").show();
				$("#paymentStatus").show();
			      
				$('#order_table > tbody > tr').each(function(i,row) 
					{
					var rowid = row.id;
					        if(rowid!="")
					       	{
					    		var listingid = $("#listingid"+rowid).val();
					    		var new_quant = $("#new_quant"+rowid).val();
				 				updateOrder("Money Paid",parseInt(rowid));
								updateQuant(listingid,new_quant);
					        }
					 });
				swal("Order placed successfully!", {
				      icon: "success",
				});
 				
			},
			error: function(err) 
			{
				swal(JSON.stringify(err));
			}
	});
}


function addBalanceFlopkart(amt)
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/accounts/accountno/1",
				success : function(res)
				{
					var amount = amt + res.balance;
					$.ajax(
						{
							type : 'PUT',
							contentType : 'application/json',
							url : ctxPath + "/webapi/accounts/update/1",
							data : JSON.stringify({
								"balance": amount
							}),
							success : function(data)
							{
							},
							error: function(err) 
							{
								swal(JSON.stringify(err));
							}
					});
				},
				error: function(err) 
				{
					swal(JSON.stringify(err));
				}
		});
}

function updateOrder(status,rowid)
{
	var ctxPath = "<%=request.getContextPath()%>";
	var orderid = <%=orderid%> + rowid;
	$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/orders/order/"+orderid,
			success : function(data)
			{
				//swal(data[0].itemId);
				$.ajax(
						{
							type : 'PUT',
							contentType : 'application/json',
							url : ctxPath + "/webapi/orders/update/"+data[0].id,
							data : JSON.stringify({
								"status": status
							}),
							success : function(data)
							{
								
							},
							error: function(err) 
							{
								swal(JSON.stringify(err));
							}
					});
			},
			error: function(err) 
			{
				swal(JSON.stringify(err));
			}
	});
}


</script>
</html>