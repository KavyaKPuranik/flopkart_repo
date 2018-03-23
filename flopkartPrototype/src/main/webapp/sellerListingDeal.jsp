<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Add deal to listing</title>
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
	  
	  <form id="addDeal" action="#"> 
        <div class="search-result-container ">
           <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="row">
	              <div class="widget-header" style="margin-bottom:10px; margin-left:15px;">
	                <h3 class="widget-title"  style="color:#FF0000;"><B>ADD DEAL TO LISTING</B></h3>
	              </div>
              </div>
		     <div class="row">
		      	<div class="col-sm-5 sidebar"> 
	              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
	              <div id="listing-content"></div>
	            </div>
	            <div class="col-sm-5 sidebar"> 
	              <h4 class="widget-title"><B>DEAL<label style="color:red; padding-left:3px;">  *</label></B></h4>
	              <div id="deal-content"></div>	
	            </div>
	            <div class="col-sm-5 sidebar" id="reqd" style="color:red; margin-left: 170px"> 
					All * fields must be entered.
		     	</div>
	          </div>
	       </div>
	     </div>
	     
	      <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>START DATE<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="date" id="startDate" name="startDate" required/>
		              <div style="color:red;" id="dateErr2">Start date cannot be before today's date</div>
		          </div>
		         </div> 
        		</div>
      	   </div>
      	   
      	   <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>END DATE<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="date" id="endDate" name="endDate" required/>
		              <div style="color:red;" id="dateErr1">End date cannot be before start date</div>
		          </div>
		         </div> 
        		</div>
      	   </div>
	       
	       <div class="search-result-container"  style="text-align:center;">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	           		<input type="submit" id="submitListingDeal" style="font-size:18px;color: white;
   							padding: 8px 20px; background-color: #4CAF50;" value="Add Deal to Listing"/>
	            </div>   
             </div>
      	   </div>
	  </form> 
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
	$("#dateErr1").hide();
	$("#dateErr2").hide();
	$("#reqd").hide();
	fetch();
});

function checkCookie() 
{
    var result = getCookie("seller_details");
    if (result != "") 
    {	
    		var user = JSON.parse(result);
		setCookie("seller_details", result, 30);
		document.getElementById("sellername").innerText = user.firstName;
	
    } 
    else 
    {	//alert("no cookie");
      	window.location = "sellerHub.jsp";
    		logout();
    }
} 

function fetch() 
{
	 var result = getCookie("seller_details");
	 var sellerId;
	 if (result != "") 
	 {	
	    var seller = JSON.parse(result);
	    sellerId = seller.id;
	 }
    var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/listings/seller/"+sellerId,
		dataType : "json", // data type of response
		success : function(result){
			var data="<select id='listingId' style=\" background-color:white; font-size:20px;\" required>"+"<option value=' "+0+" '>Select a listing</option>";
            for(var i in result){
               data+="<option value='"+result[i].id+"'>"+result[i].listingName+"</option>";
            }
            data += "</select>";
            $('#listing-content').html(data);
    	},
    	error:function() {
        	//alert("error occurred");
    	}
	});
	
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/deals",
				dataType : "json", // data type of response
				success : function(result){
					var data="<select id='dealId' style=\" background-color:white; font-size:20px;\" required>"+"<option value=' "+0+" '>Select a deal</option>";
		            for(var i in result){
		               data+="<option value='"+result[i].id+"'>"+result[i].dealname+"</option>";
		            }
		            data += "</select>";
		            $('#deal-content').html(data);
		    	},
		    	error:function() {
		        	//alert("error occurred");
		    	}
			});
}

$("#submitListingDeal").click(function(evt) {
	var val = validate();
	if(val==true){
		var ctxPath = "<%=request.getContextPath()%>";
		$.ajax({
					type : 'POST',
					contentType : 'application/json',
					url : ctxPath + "/webapi/listingDeals/create",
					data : toJSON(),
					dataType : "json", // data type of response
					success : function(){
						//alert("success");
			    	},
			    	error:function(err) {
			        	//alert(JSON.stringify(err));
			    	}
		});	
	}
	else {
		evt.preventDefault(); //prevents the default action
	}
});

function toJSON() 
{
	var dealid = $("#dealId").val();
	var listingid = $("#listingId").val();
	var stDate = $("#startDate").val();
	var enDate = $("#endDate").val();
	var listingDeal = JSON.stringify({
	    "dealid" : dealid,
	    "listingid" : listingid,
	    "startdate" : stDate,
	    "enddate" : enDate
	});
	//alert(listingDeal);
	return listingDeal;
}

function validate(){
	var start = $("#startDate").val();
	var end = $("#endDate").val();
	var dealid = $("#dealId").val();
	var listingid = $("#listingId").val();
	var today = new Date();
	//alert(today+" "+start)
	var bool1 = (end - start < 0);
	var bool2 = (start - today < 0);
	if(bool1==true){ //end < start
		$("#startDate").val("");
		$("#endDate").val("");
		$("#dateErr1").show();
		return false;
	}
	else if(bool2==true){ //start before current date
		$("#startDate").val("");
		$("#endDate").val("");
		$("#dateErr2").show();
		return false;
	}
	else {
		$("#dateErr1").hide();
		$("#dateErr2").hide();
		if(dealid==0 || listingid==0) {
			$("#reqd").show();
			return false;
		}
		return true;
	}
}
</script>		
</body>
</html>