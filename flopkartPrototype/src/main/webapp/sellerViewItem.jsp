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
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->
	      
		 <div class=col-sm-12 id="listingDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
         </div>
      </div>
	 
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
</div>
<!-- /.body-content --> 
</div>


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
 		//headerFunctions(ctxPath);		
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
    {	alert("Login failed. Try again.");
      	window.location = "sellerHub.jsp";
    		logout();
    }
}

	function loadListings(){
		$('#listing').empty();
	    	var ctxPath = "<%=request.getContextPath()%>";
	<%--     	var subcategoryid = "<%=request.getParameter("id")%>"; --%>
	   var sellerid = $("#sellerid").val();
	   
	    	
		        $.ajax(
		        		{
		        			type : 'GET',
		        			contentType : 'application/json',
		        			url : ctxPath + "/webapi/listings/seller/"+sellerid,
		        			async : false,
		        			dataType : "json", // data type of response
		        			success : function(result){
		        				for (var i in result){
		        				
							$.ajax(
		        						{
		        							type : 'GET',
		        							contentType : 'application/json',
		        							url : ctxPath + "/webapi/listings/"+result[i].id,
		        							dataType : "json", // data type of response
		        							success : displayListings,
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
	
		function getDeals(result){
			var ctxPath = "<%=request.getContextPath()%>";
			
           	alert(data1)
           	return data1;
		}
		
		function displayListings(result)
		{
			var ctxPath = "<%=request.getContextPath()%>";
		    <% AccessProperties ap = new AccessProperties(); %>
		    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
		    var ActualPrice = Math.round(result.price);
			result["ActualPrice"]=ActualPrice;
			var listingid = result.id;
			var data = "";
           	$.ajax({
           		type : 'GET',
           		contentType : 'application/json',
           		url : ctxPath + "/webapi/listingDeals/listing/"+listingid,
           		dataType : "json", // data type of response
           		success : function(res){
        			data+="<div class = 'row' style = 'font-size:15px; text-align:left; padding-left:20px;' ><div class='col-sm-4' style = 'font-size:15px; text-align:left; padding-top: 40px ; padding-left:40px;'>"+
           			" <div style='width: 260px;height: 250px;'>"+
           			"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
           			imgServerURL+result.imgUrl+"' alt=''></div></div>"+
           		    "<div class='col-sm-8'style ='font-size:15px; text-align:left; padding-top: 70px ; padding-left:60px;' ><div style = 'font-size:15px;'>Item Name :  "+result.listingName+"</div>"+
           		    "<div style = 'font-size:15px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>Discount :  "+
           		    result.discount+"% off</div><br/>"+
           		    "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
           		    "<i class='fa fa-inr' style='font-size:15px'></i>Actual Price :  "+result.ActualPrice+"</div>"+
           		    "<div style = 'font-size:15px;'>Quantity :  "+result.quantity+"</div>"+
           		    "<span style='display:inline-flex;font-size:15px;color:red'>Deal: &nbsp; <div id='dealid_"+listingid+"'>";
           		 	data += "</div></span></div></div>";
     	       		$('#listing').append(data);
           		 	if(res!=null){
           		    	for(var j=0; j<res.length; j++) {
           		    		getDealname(ctxPath,listingid,res[j].dealid);
           				}
           			}
           		},
           		error : function() {
           			alert("error")
           		}
           	 });
		}
		
		function getDealname(ctxPath,listingid,dealid){
			$.ajax({
           		type : 'GET',
           		contentType : 'application/json',
           		url : ctxPath + "/webapi/deals/"+dealid,
           		dataType : "json", // data type of response
           		success: function(deal){
           			document.getElementById("dealid_"+listingid).innerHTML = deal.dealname;	
           		},
           		error: function(){
           			
           		}
           	});
		}
		
		
	    
	   
// 	    function load(result)
// 	    {
<%-- 		    <% AccessProperties ap1 = new AccessProperties(); %> --%>
<%-- 		    var imgServerURL = "<%=ap1.getImageServerURL() %>";  --%>
// 	    	for (i=0;i<result.length;i++)
// 	    		{
// 	    		var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
// 	    		result[i]["ActualPrice"]=ActualPrice;
// 	    		if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val())
// 	    			continue;
// 	    		var data="";
// 	    		data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result[i].id+
// 	    		"'> <div style='width: 260px;height: 250px;'>"+
// 	    		"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
// 	    		imgServerURL+result[i].imgUrl+"' alt=''></div>"+
// 	            "<div style = 'font-size:15px; text-align:center'>"+result[i].listingName+"</div>"+
// 	            "<div style = 'font-size:10px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>"+
// 	            result[i].discount+"% off</div><br/>"+
// 	            "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
// 	            "<i class='fa fa-inr' style='font-size:15px'></i>"+result[i].ActualPrice+"</div>"+
// 	           	"<del style = 'font-size:10px; text-align:left; font-family:verdana; color:grey;margin-right:10px;display:inline-block'>"+
// 	           	"<i class='fa fa-inr' style='font-size:10px'></i>"+result[i].price+"</del>"+
// 	           	"</div>";
// 		       	$('#listing').append(data);
// 	    	};
// 	    };

	    function starJson(listing)
	    {
	    	var review = JSON.stringify({
	    		"id" : 1,
	    	    "listingId" : listing.id,
	    	    "userId" : 1
	    	});
	    	return review;
	    }
	    
	    function logout()
	    {
	    	deleteCookie("seller_details");
	    }
	  
	    
	</script>		
</body>
</html>