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
 <div class=col-sm-12 id="orderDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div id="orders"></div>
         </div>
      </div>
<%@include file="footer.jsp" %>
</body>
<script>
$(document).ready(function(){
	 var ctxPath = "<%=request.getContextPath()%>";
     headerFunctions(ctxPath);
     myorder(ctxPath);
});
function myorder(ctxPath) 
{	
	 var user = getCookie("user_details");
     var userid = JSON.parse(user).id;
     var j =0;
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/orders/user/"+userid,
		dataType : "json", // data type of response
		success : function(results){
			
			var data="";
			data+="<div class = 'row' style = 'margin:5px 50px;border-style: groove;border-width: 7px;font-size:15px; text-align:left; padding-left:70px;' >"+
			"<div class='col-sm-12' style ='font-size:15px; text-align:left; padding:20px;' >";
            for(var i in results){
        		j++;
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Order number :  <b>"+j+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Item ID :  <b>"+results[i].itemId+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Shipping Address : <b> "+results[i].shippingAddress+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Total Amount : <b> "+results[i].totalAmount+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Quantity : <b> "+results[i].quantity+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Order Date : <b> "+results[i].orderDate+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:18px;color:green;'>Order Status :  <b>"+results[i].status+"</b></br></br></br></div>";
            	   	
            }
            data += "</br></br></div></div>";
           	$('#orders').append(data); 
    	},
    	error:function() {
        	alert("error occurred");
    	}
	});
}
</script>
</html>