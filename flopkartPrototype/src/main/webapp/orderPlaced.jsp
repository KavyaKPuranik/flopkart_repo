<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Placed</title>
<%@include file="metaContent.jsp" %>
<%@include file="header.jsp" %>
</head>
<body>
<div id="content"></div>

<%@include file="footer.jsp" %>
</body>
<script>
$(document).ready(function(){
	var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
	fetch_orders(ctxPath);
});
function fetch_orders(ctxPath) 
{	
	 var user = getCookie("user_details");
     var userid = JSON.parse(user).id;
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/orders/user/"+userid,
		dataType : "json", // data type of response
		success : function(result){
			var data="<table><tr><th>Shipping Address</th><th>Status</th><th>Order Date</th><th>Total Amount</th></tr>";
            for(var res in result){
               data+="<tr><td>"+res.shippingAddress+"</td>";
               data+="<td>"+res.status+"</td>";
               data+="<td>"+res.orderDate+"</td>";
               data+="<td>"+res.totalAmount+"</td></tr>";
            }
            data += "</table>";
            $("#content").html(data);
    	},
    	error:function() {
        	alert("error occurred");
    	}
	});
}
</script>
</html>