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
      <%@include file="sidebarSeller.jsp"%>
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->
	 <div class="search-result-container"  style="text-align:center;border-color:#ddd">
	  <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none; ">
	        
		<div style="height:500px;">
		  <div class="search-result-container"  style="text-align:center;">
             <div class="widget-header" style="padding-top:40px">
	           
	           		<button style="font-size:18px ;border-color:#777 ;border-radius: 2px; color:#000; padding:15px 50px; background-color: #ffdb4d;" onClick="window.location='sellerItemInsert.jsp';">
					 ADD ITEMS
					 </button>
	            </div>   
        		
      	</div>
      	
      	 <div class="search-result-container"  style="text-align:center;">
               <div class="widget-header" style="padding-top:60px">
	            
	           		<button style="font-size:18px ;border-color:#777 ;border-radius: 2px; color:#000; padding:15px 50px; background-color: #ffdb4d;" onClick="window.location='sellerViewItem.jsp';">
					 VIEW ITEMS
					 </button>
	            </div>   
        		
      	</div>
      	
       	<div class="search-result-container"  style="text-align:center;">
               <div class="widget-header" style="padding-top:60px">
	            
	           		<button style="font-size:18px ;border-color:#777 ;border-radius: 2px; color:#000; padding:15px 50px; background-color: #ffdb4d;" onClick="window.location='sellerViewOrder.jsp';">
					 VIEW ACTIVE ORDERS
					 </button>
	            </div>   
        		
      	</div>
      	<div class="search-result-container"  style="text-align:center;">
               <div class="widget-header" style="padding-top:60px">
	            
	           		<button style="font-size:18px ;border-color:#777 ;border-radius: 2px; color:#000; padding:15px 50px; background-color: #ffdb4d;" onClick="window.location='listingDeal.jsp';">
					 ADD DEAL TO LISTING
					 </button>
	            </div>   
        		
      	</div>
	      </div>
	   </div>
        </div>
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
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

<script>
$(document).ready(function(){
	 	checkCookie();
	 	 var ctxPath = "<%=request.getContextPath()%>";
});

function checkCookie() 
{
    var result = getCookie("seller_details");
    //alert(result)
    if (result != "") 
    {	
    		var user = JSON.parse(result);
		setCookie("seller_details", result, 10);
		document.getElementById("sellername").innerText = user.firstName;
	
    } 
    else 
    {	alert("Login failed. Try again.");
      	window.location = "sellerHub.jsp";
    		logout();
    }
} 

function logout()
{
	deleteCookie("seller_details");
}
	</script>		
</body>
</html>