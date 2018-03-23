<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<%@ page import="com.iiitb.ooadvoid.CreateProperties" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Seller Hub</title>
<%@include file="metaContent.jsp" %>
</head>
<body>

<%@include file="headerSeller.jsp" %>		
		
<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <%@include file="sidebarSeller.jsp" %>
      <input type="text" id="sellerid" name="sellerid" hidden="hidden"/>
      <input type="text" id="count" name="count" hidden="hidden"/>
      
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->
	      
		 <div class=col-sm-12 id="listingDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
         </div>
      </div>
	 </div>
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
</div>
<!-- /.body-content --> 


<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap.js"></script>
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
<script src="./customJavascripts/cookies.js"></script>
<script>
$(document).ready(function(){
	
	
 	 	checkCookie();
 	 	var ctxPath = "<%=request.getContextPath()%>";	
 	 	$('#count').val(0);
 		loadListings();
 		
		 
	});
function checkCookie() 
{
    var result = getCookie("seller_details");
    if (result != "") 
    {	
    		var user = JSON.parse(result);
		setCookie("seller_details", result, 30);
		document.getElementById("sellername").innerText = user.firstName;
		$('#sellerid').val(user.id);
		
	
    } 
    else 
    {	alert("no cookie");
      	window.location = "sellerHome.jsp";
    		logout();
    }
}
	function loadListings(){
		$('#listing').empty();
	    	var ctxPath = "<%=request.getContextPath()%>";
	<%--     	var subcategoryid = "<%=request.getParameter("id")%>"; --%>
	   var sellerid = $("#sellerid").val();
	  //	alert(sellerid);
	    	
		        $.ajax(
		        		{
		        			type : 'GET',
		        			contentType : 'application/json',
		        			url : ctxPath + "/webapi/listings/seller/"+sellerid,
		        			dataType : "json", // data type of response
		        			success : function(result1){
		        				for (var i in result1){
		        					//alert("ItemId: "+result1[i].itemId); success
							$.ajax(
									{	
		        							type : 'GET',
		        							contentType : 'application/json',
		        							url : ctxPath + "/webapi/orders/item/"+result1[i].itemId,
		        							dataType : "json", // data type of response
		        							success : function(result){
		        								if(result != ""){
		        									displayListings(result);
		        									
		        								}
		        							},
		        					    		error:function(err) {
			        					    		alert(err);
			        					    	}
		        						});
		        				}
		        	            
		        	    	},
		        	    	error:function(){
		        	    		alert("error occurred");
		        	    	}
		        		});
		}
		function displayListings(result)
		{	
			
		    <% AccessProperties ap = new AccessProperties(); %>
			var data="";
			var i = $("#count").val();
			i++;
			$('#count').val(i);
			data+="<div class = 'row' style = 'margin:5px 50px;border-style: groove;border-width: 7px;font-size:15px; text-align:left; padding-left:70px;' >"+
			"<div class='col-sm-12' style ='font-size:15px; text-align:left; padding:20px;' >"+
			"<h2 style='padding-bottom:20px;'>Ordered Item No: "+i+"</h2>"+
	        "<div style = 'padding-bottom:10px;font-size:15px;'>Item ID :  <b>"+result[0].itemId+"</b></div>"+
	        "<div style = 'padding-bottom:10px;font-size:15px;'>Shipping Address : <b> "+result[0].shippingAddress+"</b></div>"+
	        "<div style = 'padding-bottom:10px;font-size:15px;'>Total Amount : <b> "+result[0].totalAmount+"</b></div>"+
	        "<div style = 'padding-bottom:10px;font-size:15px;'>Quantity : <b> "+result[0].quantity+"</b></div>"+
	        "<div style = 'padding-bottom:10px;font-size:18px;color:green;'>Item Status :  <b>"+result[0].status+"</b></div>"+
	       	"</div></div>";
	       	$('#listing').append(data);
		}
		
		function logout()
		{
			deleteCookie("seller_details");
		}
</script>		
</body>
</html>