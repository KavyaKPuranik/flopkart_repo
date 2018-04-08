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
	              <div class="col-sm-6 sidebar" id="reqd" style="color:red;"> 
					All * fields must be entered.
		     	</div>
              </div>
              <br/>
		     <div class="row">
	            <div class="col-sm-6 sidebar"> 
	              <h4 class="widget-title"><B>DEAL<label style="color:red; padding-left:3px;">  *</label></B></h4>
	              <div id="deal-content"></div>	
	            </div>
	          </div>
	          <br/>
	          
	          <div id="buy3get1">
	          	<div class="row">
	          		<div id="buy3get1-dealDesc" class="alert alert-warning" style="width: 550px;" ></div>
	          		<input type="number" id="buy3get1-days" hidden="hidden"/>
	          	</div>
	          	<div class="row">
		          	<div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-1"></div>
		            </div>
		        </div>
		        <div class="row">
		            <div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-2"></div>
		            </div>
	            </div>
	            <div class="row">
		            <div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-3"></div>
		            </div>
	            </div>
	            <div class="row">
		            <div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-4"></div>
		            </div>
	            </div>
	          </div>
	          
	          <div class="row" id="buy2get1">
	          	<div class="row">
	          		<div id="buy2get1-dealDesc" class="alert alert-warning" style="width: 550px;"></div>
	          		<input type="number" id="buy2get1-days" hidden="hidden"/>
	          	</div>
	          	<div class="row">
		          	<div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-5"></div>
		            </div>
		        </div>
		        <div class="row">
		            <div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-6"></div>
		            </div>
	            </div>
	            <div class="row">
		            <div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-7"></div>
		            </div>
	            </div>
	          </div>
	          
	          <div class="row" id="buy1get1">
	          <div class="row">
	          		<div id="buy1get1-dealDesc" class="alert alert-warning" style="width: 550px;"></div>
	          		<input type="number" id="buy1get1-days" hidden="hidden"/>
	          	</div>
	          	<div class="row">
		          	<div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-8"></div>
		            </div>
		        </div>
		        <div class="row">
		            <div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-9"></div>
		            </div>
	            </div>
	          </div>
	          
	          <div id="15cashback">
	          	<div class="row">
	          		<div id="15cashback-dealDesc" class="alert alert-warning" style="width: 550px;"></div>
	          		<input type="number" id="15cashback-days" hidden="hidden"/>
	          	</div>
	          	<div class="row">
		          	<div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-10"></div>
		            </div>
		      	</div>
	          </div>
	          
	            
	          <div id="50off">
	          	<div class="row">
	          		<div id="50off-dealDesc" class="alert alert-warning" style="width: 550px;"></div>
	          		<input type="number" id="50off-days" hidden="hidden"/>
	          	</div>
	          	<div class="row">
		          	<div class="col-sm-6 sidebar"> 
		              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              <div id="selectlisting-11"></div>
		            </div>
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
<script src="./bootstrapFiles/js/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
	checkCookie();
	var ctxPath = "<%=request.getContextPath()%>";
	$("#buy3get1").hide();
	$("#buy2get1").hide();
	$("#buy1get1").hide();
	$("#15cashback").hide();
	$("#50off").hide();
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
	var ctxPath = "<%=request.getContextPath()%>";
	
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/deals",
				dataType : "json", // data type of response
				success : function(result){
					var data="<select id='deal' style=\" background-color:white; font-size:20px;\" onchange='displayListingDrops()' required>"+"<option value=' "+0+" '>Select a deal</option>";
		            for(var i in result){
		               data+="<option value='"+result[i].id+"'>"+result[i].dealname+"</option>";
		               var dealname = result[i].dealname.replace(/\s/g,'').toLowerCase();
		               if(dealname==="buy3get1"){
		            	   $("#buy3get1-dealDesc").html(result[i].description+"<br/>"+"Deal will be valid for "+result[i].days+" days starting today");
		            	   $("#buy3get1-days").val(result[i].days);
			           	}
			           	else if(dealname==="buy2get1"){
			           		$("#buy2get1-dealDesc").html(result[i].description+"<br/>"+"Deal will be valid for "+result[i].days+" days starting today");
			           		$("#buy2get1-days").val(result[i].days);
			           	}
			           	else if(dealname==="buy1get1"){	
			           		$("#buy1get1-dealDesc").html(result[i].description+"<br/>"+"Deal will be valid for "+result[i].days+" days starting today");
			           		$("#buy1get1-days").val(result[i].days);
			           	}
			           	else if(dealname==="50%off"){
			           		$("#50off-dealDesc").html(result[i].description+"<br/>"+"Deal will be valid for "+result[i].days+" days starting today");
			           		$("#50off-days").val(result[i].days);
			           	}
			           	else if(dealname==="15%cashback"){
			           		$("#15cashback-dealDesc").html(result[i].description+"<br/>"+"Deal will be valid for "+result[i].days+" days starting today");
			           		$("#15cashback-days").val(result[i].days);
			           	}
		            }
		            data += "</select>";
		            $('#deal-content').html(data);
		    	},
		    	error:function() {
		        	//alert("error occurred");
		    	}
			});
}

function fetchListings(num){
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
		success : function(listings){
			var data="<select id='list"+num+"' style='background-color:white; font-size:20px;' required>"+
				"<option value=' "+0+" '>Select a listing</option>";
            for(var i in listings){
               data+="<option value='"+listings[i].id+"'>"+listings[i].listingName+"</option>";
            }
            data += "</select>"
            document.getElementById("selectlisting-"+num).innerHTML = data;
    	},
    	error:function() {
        	//alert("error occurred");
    	}
	});
}

function addListDeal(ldJSON){
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax({
		type : 'POST',
		contentType : 'application/json',
		url : ctxPath + "/webapi/listingDeals/create",
		data : ldJSON,
		dataType : "json", // data type of response
		success : function(){
			//alert("success");
    	},
    	error:function(err) {
        	//alert(JSON.stringify(err));
    	}
	});	
	//evt.preventDefault(); //prevents the default action
}

$("#submitListingDeal").click(function() 
{
	var selected = document.getElementById("deal");
	var selectedDeal = selected.options[selected.selectedIndex].text.replace(/\s/g,'').toLowerCase();
	var dealid = document.getElementById("deal").value;
	var days;
	if(selectedDeal==="buy3get1"){
		days = document.getElementById("buy3get1-days").value;
	}
	else if(selectedDeal==="buy2get1"){
		days = document.getElementById("buy2get1-days").value;
   	}
   	else if(selectedDeal==="buy1get1"){	
   		days = document.getElementById("buy1get1-days").value;
   	}
   	else if(selectedDeal==="50%off"){
   		days = document.getElementById("50off-days").value;
   	}
   	else if(selectedDeal==="15%cashback"){
   		days = document.getElementById("15cashback-days").value;
   	}
	var stDate = new Date();
	stDate = new Date(stDate.getTime() - (stDate.getTimezoneOffset() * 60000)).toJSON().slice(0,10);
	var enDate = new Date();
	enDate.setDate(enDate.getDate() + parseInt(days)); 
	enDate = new Date(enDate.getTime() - (enDate.getTimezoneOffset() * 60000)).toJSON().slice(0,10);
	if(selectedDeal==="buy3get1"){
		for(var num=1; num<5; num++){
			var listingid = document.getElementById("list"+num).value;
			var listingDealJSON = JSON.stringify({
			    "dealid" : dealid,
			    "listingid" : listingid,
			    "startdate" : stDate,
			    "enddate" : enDate
			});
			//alert(listingDealJSON);
			addListDeal(listingDealJSON);
		}
	}
	else if(selectedDeal==="buy2get1"){
		for(var num=5; num<8; num++){
			var listingid = document.getElementById("list"+num).value;
			var listingDealJSON = JSON.stringify({
			    "dealid" : dealid,
			    "listingid" : listingid,
			    "startdate" : stDate,
			    "enddate" : enDate
			});
			alert(listingDealJSON);
			addListDeal(listingDealJSON);
		}
	}
	else if(selectedDeal==="b1g1"){
		for(var num=8; num<10; num++){
			var listingid = document.getElementById("list"+num).value;
			var listingDealJSON = JSON.stringify({
			    "dealid" : dealid,
			    "listingid" : listingid,
			    "startdate" : stDate,
			    "enddate" : enDate
			});
			//alert(listingDealJSON);
			addListDeal(listingDealJSON);
		}
	}
	else if(selectedDeal==="15%cashback"){
		var listingid = document.getElementById("list10").value;
		var listingDealJSON = JSON.stringify({
		    "dealid" : dealid,
		    "listingid" : listingid,
		    "startdate" : stDate,
		    "enddate" : enDate
		});
		//alert(listingDealJSON);
		addListDeal(listingDealJSON);
	}
	else if(selectedDeal==="50%off"){
		var listingid = document.getElementById("list11").value;
		var listingDealJSON = JSON.stringify({
		    "dealid" : dealid,
		    "listingid" : listingid,
		    "startdate" : stDate,
		    "enddate" : enDate
		});
		//alert(listingDealJSON);
		addListDeal(listingDealJSON);
		//update discount as 50% for this listing
		var ctxPath = "<%=request.getContextPath()%>";
		$.ajax({
			type : 'PUT',
			contentType : 'application/json',
			url :  ctxPath +"/webapi/listings/update/"+listingid,
			data : JSON.stringify({ "discount": 50 }),
			success : function()
			{
				swal("Deals have been added to the listings successfully!", {
				      icon: "success",
				});
				window.location.reload(true);
			},
			error : function()
			{
				swal("Error");		
			}
		});
	}
	window.location.reload(true);
});

function displayListingDrops(){
	$("#buy3get1").hide();
	$("#buy2get1").hide();
	$("#buy1get1").hide();
	$("#15cashback").hide();
	$("#50off").hide();
	var selected = document.getElementById('deal');
	var selectedDeal = selected.options[selected.selectedIndex].text;
	selectedDeal = selectedDeal.replace(/\s/g,'').toLowerCase();
	if(selectedDeal==="buy3get1"){
		$("#buy3get1").show();
		fetchListings(1);
		fetchListings(2);
		fetchListings(3);
		fetchListings(4);
	}
	else if(selectedDeal==="buy2get1"){
		$("#buy2get1").show();
		fetchListings(5);
		fetchListings(6);
		fetchListings(7);
	}
	else if(selectedDeal==="buy1get1"){	
		$("#buy1get1").show();
		fetchListings(8);
		fetchListings(9);
	}
	else if(selectedDeal==="50%off"){
		$("#50off").show();
		fetchListings(11);
	}
	else if(selectedDeal==="15%cashback"){
		$("#15cashback").show();
		fetchListings(10);
	}
}
</script>		
</body>
</html>