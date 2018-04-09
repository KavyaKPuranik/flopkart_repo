<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Flopkart Offer Zone</title>
</head>
<style>
.box {
  transition: box-shadow .3s;
  width: 250px;
  height: 300px;
  background: #fff;
  float: left;
  margin-bottom: 10px;
  margin-top: 10px;
}
.box:hover {
  box-shadow: 0 0 11px rgba(33,33,33,.2); 
}
</style>
<body>
    <%@include file="header.jsp" %>

<div class="body-content outer-top-xs" style="padding-right: 20px; ">
  <div class="container" style="margin-left: 10px; width: 100%">
    <div class="row">
      <div class="col-md-2 sidebar"> 
        <!-- ================================== TOP NAVIGATION ================================== -->
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="headOfferZone"></div>
          <div style="border-bottom: solid 1px rgba(0, 0, 0, .05); padding: 8px 10px 10px 30px;">
          <div style="display: inline-block; font-size: 20px; font-weight: bold; font-family: Arial, sans-serif; color: #000; 
            line-height: 32px; ">
             <i style="color:#157ed2; width: 15px; height: 15px; vertical-align: middle;
    			margin-right: 9px;" class="fas fa-tags"></i>
    			 Offer Zone
    	  </div></div>
          <nav class="yamm megamenu-horizontal">
            <ul id="sidebarCat" class="nav">
              <li><a style='color:black' href="offerZone.jsp">Deals of the day</a></li><!-- /.menu-item -->
            </ul>
          </nav><!-- /.nav --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu -->
        
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div style="border-bottom: solid 1px rgba(0, 0, 0, .05); padding-left: 8px; padding-bottom: 10px; padding-top:10px">
          <div style="display: inline-block; font-size: 20px; font-weight: bold; font-family: Arial, sans-serif; color: #000; 
            line-height: 32px; ">
    			Hot Combo Deals
    	  </div></div>
          <nav class="yamm megamenu-horizontal">
            <ul id="sidebarDeal" class="nav">
            </ul>
          </nav><!-- /.nav --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!--  /side menu 2 --> 
        <!-- ================================== TOP NAVIGATION : END ================================== -->
   	  </div> <!-- col-md-2 -->
	 
	  <div class="col-md-10">
	  	<div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
			<div class="row">
				<div style="border-bottom: 1px solid rgba(0, 0, 0, .1);">
					<h2 style="margin-top:0; margin-left: 20px; font-size: 22px; font-family: Roboto, Arial, sans-serif; line-height: 32px; display: inline-block; font-weight: 500;">Deals</h2>
					<img src="./images/offerZone/timer.svg" height="24" width="24" style="position: relative; display: inline-block; margin-right: 8px; 
					margin-left: 20px;"/>
					<p id="timer" style="position: relative; display: inline-block; margin-right: 8px; 
					font-size: 16px; color: #7f7f7f;padding-top: 7px;"></p>
				</div>
				
				<input type="number" id="dealid" hidden="hidden">
				<input type="number" id="listingid" hidden="hidden">
				<input type="text" id="listingname" hidden="hidden">
				<input type="text" id="imgurl" hidden="hidden">
				
				<div id="category-product" class="category-product">
				</div> <!-- category-product -->
              </div> <!-- row -->
           </div> <!-- tab-content category-list -->
          </div>  <!-- search-result-container -->
      </div> <!-- col-md-9 -->
     </div> <!-- row -->
   </div> <!-- container -->
  </div> <!-- body-content outer-top-xs -->
  
  
<%@include file="footer.jsp" %>
     
</body>
<script>
$(document).ready(function(){
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
	var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 30);
    } 
	fetchCateg(ctxPath);
	fetchDeals(ctxPath);
	getListingDet(ctxPath);
})

// Update the count down every 1 second
var x = setInterval(function() {
	
	//Set the date we're counting down to
	var countDownDate = new Date("Apr 30, 2018 23:59:59").getTime();
	
    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for hours, minutes and seconds
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    if(hours.toString().length<2){
    	hours = "0"+hours;  
    }
    if(minutes.toString().length<2){
    	minutes = "0"+minutes;  
    }
    if(seconds.toString().length<2){
    	seconds = "0"+seconds;  
    }
    
    // Output the result in an element with id="demo"
    document.getElementById("timer").innerHTML = hours + " : "
    + minutes + " : " + seconds + " Left";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("timer").innerHTML = "EXPIRED";
    }
}, 1000);

function fetchCateg(ctxPath) 
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/categories",
		dataType : "json", // data type of response
		success :
			function(data)
			{
				categorySideMenu(data,ctxPath);
			},
    	error:
    		function() 
    		{
        	//alert("error occurred");
    		}
	});
}
	
function categorySideMenu(result,ctxPath)
{
	for(var i in result)
	{
		var li_node = document.createElement("li");                 // Create a <li> node
		li_node.className="dropdown";
		li_node.setAttribute("id", "li__"+result[i].id);
		li_node.setAttribute("name", result[i].categoryName);
		var dropdownCont = "dropdownCont(this,'"+ctxPath+"')";
		var scrt_var = 10; 
		var onclickContent = "location.href=this.href+'?key='+scrt_var;";
		var data = " <a href='offerZoneSubcategory.jsp' style='color:black' data-hover='dropdown' "+
				 " onmouseover="+dropdownCont+" onmouseout='setTimeout(dropdownBak,2000, this);' "+
		         "class='category-dropdown dropdown-toggle' data-toggle='dropdown' id='"+
		         result[i].id+"'>"+	result[i].categoryName +
				"</a>";
		var data1 = "<ul style='width:80%' class='dropdown-menu mega-menu'>"+
					"<li>"+
						"<div class='yamm-content'>"+
							"<div class='row'>"+
								"<div class='col-menu'>"+
									"<ul class='links list-unstyled' id='ul__"+ result[i].id+"'>"+
					"</ul></div></div></li></ul>";
		document.getElementById("sidebarCat").appendChild(li_node);
		$(li_node).append(data + data1);
	} 

}
	
function dropdownCont(obj,ctxPath)
{
	var categoryid = obj.id;
//	var ctxPath = "http://localhost:8080/flopkartPrototype";
		$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/subcategories/category/"+categoryid,
			dataType : "json", // data type of response
			success : 
				function(data)
				{
					subCategoryDrop(data,categoryid);
				},
	    	error:
	    		function() 
	    		{
	        	//alert("error occurred");
	    		}
		});
 	$(obj).css("color","blue");
 	$('#li__'+obj.id).addClass('open');
}

function subCategoryDrop(result,categoryid)
{
	var data = "";
	if(Object.keys(result).length>0)
	{	
		for(var i in result)
		{
			data = data + "<li> <a href='offerZoneSubcategory.jsp?id="+result[i].id+"'>"
					+result[i].subcategoryName+"</a></li>";
		}
		$('#ul__'+categoryid).html(data);
	}
 
	
	else
		$('#li__'+categoryid).removeClass('open');
		

}

function dropdownBak(obj)
{
 	$(obj).css("color","black");
 	$('#li__'+obj.id).removeClass('open');
// 	$('#ul_'+obj.id).empty();
}

function getListingDet(ctxPath){
	var subcatid = <%=request.getParameter("id")%>;
	$.ajax({
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/listings/subcategory/"+subcatid,
		dataType : "json", // data type of response
		success : function(listings)
			{
				for(var i=0;i<listings.length;i++){
					getDealDet(listings[i],ctxPath);
				}
			},
	   	error: function() 
	   		{
	       	//alert("error occurred");
	   		}
	});
}

function getDealDet(listings,ctxPath){
	var listingid = listings.id;
	var listingname = listings.listingName;
	var imgurl = listings.imgUrl;
	<% AccessProperties ap = new AccessProperties(); %>
    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
	$.ajax({
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/listingDeals/listing/"+listingid,
		dataType : "json", // data type of response
		success : function(listingDeal)
			{
				if(listingDeal!=null){
					var data = "<div class='col-sm-6 col-md-3 box fadeInUp'><div class='products'>"+
		    		"<div class='product'><div class='product-image'><div class='image'><a href='item.jsp?id="+listingDeal[0].listingid+"'>"+
		    		"<img style='display: block; object-fit: contain; width: 250px; height: 250px;' src='"+ (imgServerURL+imgurl) +"' alt=''>"+
		    		"</a></div></div><div class='product-info text-center'>"+
				         "<div style='font-size: 14px; font-weight: 500; margin-top: 15px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;'>"+
				         "<a href='item.jsp?id="+listingDeal[0].listingid+"'>"+listingname+"</a></div>"+
				         "<div style='color: #388e3c; padding-top: 8px; white-space: nowrap; overflow: hidden;"+
				           "text-overflow: ellipsis;' id='demo"+listingDeal[0].listingid+"'>"+"</div></div></div></div></div>"
				    $("#category-product").append(data);
					loadItems(listingDeal[0].listingid,listingDeal[0].dealid,ctxPath);
				}
			},
	   	error: function() 
	   		{
	       	//alert("error occurred");
	   		}
	});
}

function loadItems(listid,dealid,ctxPath){
	//alert(dealid)
	$.ajax({
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/deals/"+dealid,
		dataType : "json", // data type of response
		success : function(deal)
			{
				document.getElementById("demo"+listid).innerHTML = deal.dealname+" ";	
			},
	   	error: function() 
	   		{
	       	//alert("error occurred");
	   		}
	});
}

function fetchDeals(ctxPath) 
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/deals",
		dataType : "json", // data type of response
		success :
			function(deals)
			{
				var data = "";
				for(var i in deals)
				{
					if(deals[i].dealname === "50% off" || deals[i].dealname === "15% cashback")
						continue;
					data += "<li><a href='offerZoneDeal.jsp?id="+deals[i].id+"'>"
							+deals[i].dealname+"</a></li>";
				}
				$("#sidebarDeal").html(data);
			},
    	error:
    		function() 
    		{
        	//alert("error occurred");
    		}
	});
}
</script>
</body>
</html>