<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Shopping Cart | Flopkart.com </title>
</head>
<body>	
    <%@include file="header.jsp" %>
		
<div class="body-content outer-top-xs" id="cartBody">
		<div class="row">
			<div style="margin-left: 50px" class="col-md-8 col-sm-12 shopping-cart">
				<div class="shopping-cart-table">
	<div class="table-responsive">
		<input type="number" id="noOfItems" hidden="hidden">
		<table class="table" id="myTable">
			<thead>
				<tr>
					<th class="cart-quantity item" colspan="7" style="text-align: left; font-size: 16px" id="cartQuant"></th>
				</tr>
			</thead><!-- /thead -->
			<tbody id="content">
				
			</tbody><!-- /tbody -->
			<tfoot>
				<tr>
					<td colspan="7">

						<form action="buyNow.jsp">
						<div class="shopping-cart-btn">
							<span class="">
						<input type='number' id='listingid' name='listingid' value='0' hidden='hidden'>
						<input type='number' id='dealid' name='dealid' value='0' hidden='hidden'>
								<button type="button" id="continueShopping_btn"
									class="btn btn-primary" onclick='document.location.href="index.jsp"'
									style="text-align: center; margin-left: 180px; background-color: #fff; box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, .1); color: #212121; font-size: 15px; font-weight: 800; height: 50px; width: 300px;">
									<i class="fa fa-chevron-left"></i> CONTINUE SHOPPING
								</button>
								<button type="submit" id="placeOrder_btn"
									class="btn btn-primary pull-right outer-right-xs btn-block"
									style="text-align: center; font-size: 15px; font-weight: 800; height: 50px; width: 300px; background-color: #F26419">PLACE
									ORDER</button>
							</span>
						</div>
						</form>
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
					<div class="price" style="text-align: left; font-size: 14px">Price <span class="pull-right"><i class="fa fa-rupee-sign"></i><span style="font-weight: normal" id="totalPrice" ></span></span></div>
					<div class="delivery-charges" style="text-align: left; font-size: 14px">Delivery Charges<span class="pull-right"><i class="fa fa-rupee-sign"></i><span id="deliveryCharges"></span></span></div>
				</td>
			</tr>
			<tr class="lined">
				<td>
					<div class="amount-payable" style="text-align: left;font-size: 14px">Amount Payable <span class="pull-right"><i class="fa fa-rupee-sign"></i><span id="amount-payable"></span></span></div>
				</td>
			</tr>
			<tr>
				<td>
					<input type="number" id="actualcarttotal" hidden="hidden">
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
 
 <div class="body-content outer-top-xs" id="emptyCart" style="text-align: center; padding: 30px 0 36px 0;">
 	<img src="./images/emptyCart.png" style="height: 162px;">
 	<span style="display: block; font-size: 18px; margin-top: 24px;">Your Shopping Cart is empty</span>
 </div>
 
 

    <%@include file="footer.jsp" %>
     

</body>
<script>
$(document).ready(function(){
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
	$("#cartBody").hide();
	$("#emptyCart").show();
	getCartItems();
});

function quantup(i){
	var value = parseFloat(document.getElementById("quantity"+i).value);
	var onecost = parseFloat(document.getElementById("oneCost"+i).value);
	var oneactual = parseFloat(document.getElementById("oneActualCost"+i).value);
	var price = parseFloat(document.getElementById("price"+i).innerHTML);
	var origprice = parseFloat(document.getElementById("originalPrice"+i).innerHTML);
	var totalprice = parseFloat($("#totalPrice").text());
	var actualtotal = parseFloat($("#actualcarttotal").val()); 
	totalprice -= price;
	actualtotal -= origprice;
	var maxquantity = parseFloat(document.getElementById("maxquantity"+i).value); 
	value++;
	if(value>maxquantity){
		swal("Sorry, you cannot buy more than "+maxquantity+" of this item!");
		return;
	}
	document.getElementById("quantity"+i).value = value;
	updateQuant(i);
	onecost *= value;
	oneactual *= value;
	document.getElementById("price"+i).innerHTML = onecost;
	document.getElementById("originalPrice"+i).innerHTML = oneactual;
	totalprice += onecost;
	actualtotal += oneactual;
	var savings = actualtotal - totalprice;
	$("#totalPrice").text(totalprice.toFixed(2));
	$("#actualcarttotal").val(actualtotal.toFixed(2));
	textChange();
	$("#amount-payable").text(parseFloat($("#totalPrice").text())+parseFloat($("#deliveryCharges").text()));
	$("#savings").text(savings.toFixed(2));
}

function quantdown(i){
	var value = parseFloat(document.getElementById("quantity"+i).value);
	var onecost = parseInt(document.getElementById("oneCost"+i).value);
	var oneactual = parseFloat(document.getElementById("oneActualCost"+i).value);
	var price = parseFloat(document.getElementById("price"+i).innerHTML);
	var origprice = parseFloat(document.getElementById("originalPrice"+i).innerHTML);
	var totalprice = parseFloat($("#totalPrice").text());
	var actualtotal = parseFloat($("#actualcarttotal").val()); 
	totalprice -= price;
	actualtotal -= origprice;
	if(value>1){
		value--;
		document.getElementById("quantity"+i).value = value;
		updateQuant(i);
		onecost *= value;
		oneactual *= value;
		document.getElementById("price"+i).innerHTML = onecost;
		document.getElementById("originalPrice"+i).innerHTML = oneactual;
		totalprice += onecost;
		actualtotal += oneactual;
		var savings = actualtotal - totalprice;
		$("#totalPrice").text(totalprice.toFixed(2));
		$("#actualcarttotal").val(actualtotal.toFixed(2));
		textChange();
		$("#amount-payable").text(parseFloat($("#totalPrice").text())+parseFloat($("#deliveryCharges").text()));
		$("#savings").text(savings.toFixed(2));
	}
}

//if total cart amount is more than 1000, delivery charge becomes 0
function textChange(){
    var value = $("#totalPrice").text();
    if(parseFloat(value)>=1000) {
    	$("#deliveryCharges").text("0");
    }
    else if(parseFloat(value)<1000) {
    	$("#deliveryCharges").text("50");
    }
}

function getCartItems(){
	var ctxPath = "<%=request.getContextPath()%>";
	var user = getCookie("user_details");
	user = JSON.parse(user);
	var userId = user.id;
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/cart/user/"+userId,
		dataType : "json", // data type of response
		success : function(cartItems){
			if(cartItems!="") {
            	renderCartItem(cartItems);
			}
    	},
    	error:function() {
        	swal("error occurred");
    	}
	});
}

function renderCartItem(cartItems){
	var ctxPath = "<%=request.getContextPath()%>";
	<%AccessProperties ap = new AccessProperties();%>
	var imgServerURL = "<%=ap.getImageServerURL()%>";
	for(var i in cartItems){
		var itemID = cartItems[i].itemId;
		$.ajax(
				{
					type : 'GET',
					async: false,
					contentType : 'application/json',
					url : ctxPath + "/webapi/listings/item/"+itemID,
					dataType : "json", // data type of response
					success : function(item){
						var amount = item.price - (item.discount*item.price/100);
						var data = "<tr>";
			            data += "<td class='cart-image'>"+
						"<a class='entry-thumbnail' href='item.jsp?id="+item.id+"'>"+
					    "<img src='"+imgServerURL+item.imgUrl+"'>"+
					"</a>"+"<input type='number' id='cartId"+i+"' hidden='hidden' value='"+cartItems[i].id+"'>"+
				"</td>"+
				"<td class='cart-product-name-info'>"+
					"<h4 class='cart-product-description'>"+"<a href='item.jsp?id="+item.id+"'>"+item.listingName+"</a>"+"</h4>"+
					"<div class='row'>"+
						"<div class='col-sm-4'>"+
							"<div class='rating rateit-small'>"+"</div>"+
						"</div>"+
						"<div class='col-sm-8'>"+
							//ratings
						"</div>"+
					"</div>"+"<!-- /.row -->"+
					"<div class='cart-product-info'>"+
					"COLOR: "+item.colour+"<br/>"+"Seller id: "+item.sellerid+
					"<input type='number' id='dealId"+i+"' hidden='hidden'>"+
					"<div id='dealName"+i+"'></div>"+
					"</div>"+
				"</td>"+
				"<td class='cart-product-quantity'>"+
					"<div class='quant-input' id='quant-input"+i+"'>"+
			                "<div class='arrows'>"+
			                  "<div id='quant-up"+i+"' class='arrow plus gradient' onclick='quantup("+i+")'>"+"<span >"+"<i class='icon fa fa-sort-asc'>"+"</i>"+"</span>"+"</div>"+
			                  "<div id='quant-down"+i+"' class='arrow minus gradient' onclick='quantdown("+i+")'>"+"<span >"+"<i class='icon fa fa-sort-desc'>"+"</i>"+"</span>"+"</div>"+
			                "</div>"+
			                "<input type='number' id='quantity"+i+"' min='1' value='"+cartItems[i].quantity+"' onchange='updateQuant("+i+")'>"+
		              "</div>"+
		              "<div style='color:red; font-size:13px' id='outofstock"+i+"' hidden='hidden'>Out of Stock</div>"+
		              "<input type='number' id='maxquantity"+i+"' hidden='hidden' value='"+item.quantity+"'>"+
	            "</td>"+
				"<td class='cart-product-grand-total'><div id='pricing"+i+"'>"+"<input type='number' id='oneCost"+i+"' hidden='hidden' value='"+amount+"'>"+"<input type='number' id='oneActualCost"+i+"' hidden='hidden' value='"+item.price+"'>"+
				"<span>"+"<i class='fa fa-rupee-sign'>"+"</i>"+ "<span id='price"+i+"'>"+amount+ "</span>"+  "</span>"+"<span>"+"&nbsp; <del>"+  "<i class='fa fa-rupee-sign'>"+"</i>"+ "<span id='originalPrice"+i+"'>"+item.price+"</span>"+"</del>"+"</span>"+"</div></td>"
			    data += "<td><a style='color:black' href='#' onclick='deleteRow(this,"+i+")'><i class='fa fa-trash'></i></a></td>"        
				data += "</tr>";
	            $("#cartQuant").text("MY CART ("+(parseFloat(i)+1)+")");
	            $("#noOfItems").val(parseFloat(i)+1);
	            $("#content").append(data);
	            getDealDetails(item.id, i);
			  },
			  error:function() {
			  	swal("error occurred");
			  }
		 });
	}
	$("#emptyCart").hide();
	$("#cartBody").show();
	calculate();
}

function calculate(){
	var num = $("#noOfItems").val();
	var savings = 0.0;
	var total = 0.0;
	var actualtotal = 0.0;
	var price, actualprice, quant;
	for(var i=0;i<num;i++){
		price = parseFloat(document.getElementById("price"+i).innerHTML);
		actualprice = parseFloat(document.getElementById("originalPrice"+i).innerHTML);
		quant = parseFloat(document.getElementById("quantity"+i).value);
		maxquant = parseFloat(document.getElementById("maxquantity"+i).value);
		price = price * quant;
		document.getElementById("price"+i).innerHTML = price;
		actualprice = actualprice * quant;
		document.getElementById("originalPrice"+i).innerHTML = actualprice;
		if(maxquant < quant){
			$("#outofstock"+i).show();
			$("#quant-input"+i).hide();
			document.getElementById("price"+i).innerHTML = 0;
			document.getElementById("originalPrice"+i).innerHTML = 0;
			price = 0;
			actualprice = 0;
			$("#pricing"+i).hide();
		}
		total += price;
		actualtotal += actualprice;
		savings += actualprice - price;
	}
	$("#totalPrice").text(total.toFixed(2));
	var value = $("#totalPrice").text();
    if(parseFloat(value)>=1000) {
    	$("#deliveryCharges").text("0");
    }
    else if(parseFloat(value)<1000) {
    	$("#deliveryCharges").text("50");
    }
    $("#actualcarttotal").val(actualtotal.toFixed(2));
	$("#amount-payable").text(parseFloat($("#totalPrice").text())+parseFloat($("#deliveryCharges").text()));
	$("#savings").text(savings);
}

function deleteRow(r, i) {
	var ctxPath = "<%=request.getContextPath()%>";
	swal({
		  title: "Are you sure?",
		  text: "This item will be removed from the cart",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true
		})
		.then((willDelete) => {
		  if (willDelete) {
			var rowno = r.parentNode.parentNode.rowIndex;
			var id = document.getElementById("cartId"+i).value;
			document.getElementById("myTable").deleteRow(rowno);
			$.ajax(
					{
						type : 'DELETE',
						contentType : 'application/json',
						url : ctxPath + "/webapi/cart/delete/"+id,
						success : function(){
							swal("Item removed!", {
							      icon: "success",
							});
							var num = $("#noOfItems").val();
							num--;
							$("#noOfItems").val(num);
							$("#cartQuant").text("MY CART ("+num+")");
						},
						error : function(){
							swal("Could not remove from cart");
						}
				});
		  } else {
		    swal("Your item is safe");
		  }
	   });
}

function updateQuant(i){
	var id = document.getElementById("cartId"+i).value
	var quant = parseFloat(document.getElementById("quantity"+i).value);
	var maxquant = parseFloat(document.getElementById("maxquantity"+i).value); 
	if(quant>maxquant){
		swal("Sorry, you cannot buy more than "+maxquant+" of this item!");
		document.getElementById("quantity"+i).value = 1;
		return;
	}
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax({
		type : 'PUT',
		contentType : 'application/json',
		url :  ctxPath +"/webapi/cart/update/"+id,
		data : JSON.stringify({ "quantity": quant }),
		success : function()
		{
			//do nothing
		},
		error : function()
		{
			swal("Error");		
		}
	});
}

function getDealDetails(listingid, i){
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax({
		type : 'GET',
		async:false,
		url : ctxPath + "/webapi/listingDeals/listing/"+listingid,
		dataType : "json", // data type of response
		success : function(listdeal){
			var jsonDeal = JSON.stringify(listdeal);
			if(jsonDeal !="[]"){
				document.getElementById("dealId"+i).value = listdeal[0].dealid;
				getDealName(listdeal[0].dealid, i);
			}
		},
		error: function(){
			//alert("error occurred"); 
		}
	});
}

function getDealName(dealid, i){
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax({
		type : 'GET',
		async:false,
		url : ctxPath + "/webapi/deals/"+dealid,
		dataType : "json", // data type of response
		success : function(deal){
			document.getElementById("dealName"+i).innerHTML = "DEAL: "+deal.dealname;
		},
		error: function(){
			//alert("error occurred"); 
		}
	});
}
</script>
</body>
</html>