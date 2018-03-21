<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<!DOCTYPE html>
<!-- saved from url=(0060)http://www.themesground.com/flipmart-demo/HTML/category.jsp -->
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Items</title>
</head>
<style>
.box {
  transition: box-shadow .3s;
  width: 300px;
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
    
    <div class=row id="body">    
    <div class=row id="body" style="margin-top: 10px;margin-left:10px;margin-right:40px">
      <div class="col-sm-2" id="filters" style="margin: 0px 20px 0px 20px;background-color: white;">
<!--       	<div class="slider slider-horizontal" id=""> -->
<!--       		<div class="slider-track"> -->
<!--       			<div class="slider-selection" style="left: 23.3333%; width: 33.3333%;"> -->
<!--       			</div> -->
<!--       			<div class="slider-handle min-slider-handle" style="left: 23.3333%;" tabindex="0"> -->
<!--       			</div> -->
<!--       			<div class="slider-handle max-slider-handle" style="left: 56.6667%;" tabindex="0"> -->
<!--       			</div> -->
<!--       		</div> -->
      		
<!--       <div class="tooltip tooltip-main top" style="left: 40%; margin-left: -35px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">240 : 440</div></div><div class="tooltip tooltip-min top" style="left: 23.3333%; margin-left: -35px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">240</div></div><div class="tooltip tooltip-max top" style="top: -30px; left: 56.6667%; margin-left: -35px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">440</div></div></div> -->
        <div style = 'font-size:30px; text-align:center; font-family:bold'>Filters</div>
        <section>
           <div style = 'font-size:25px; text-align:left; font-family:bold; margin-top:40px'>Price</div>
           <div style = 'font-size:20px; text-align:center; font-family:bold; margin-top:20px'>Minimum</div>
           <div align="center">

            <input type="number" style = 'font-size:20px; text-align:center;' value="0" name="MinPrice" id="MinPrice" >
            
           </div>
              <div style = 'font-size:20px; text-align:center; font-family:bold; margin-top:20px'>Maximum</div>
              <div align="center">
              <input type="number" style = 'font-size:20px; text-align:center;' value="100000" name="MaxPrice" id="MaxPrice" >
           </div>
           <div id="priceError" style="font-size:15px;color:red">Minimum price cannot be larger than maximum price</div>
              <button type="button" id="applyFilter" style="margin:auto;display:block;margin-top:40px" onclick="loadListings()"><b>Apply Filter</b></button>
        </section>
        
      </div>

      <div class=col-sm-9 id="listingDisplay" style="margin: 0px 0px 0px 20px;background-color:white">
            <div class="more-info-tab clearfix ">
            <h4 class="pull-left">Sort By :</h4>
            <ul class="nav nav-tabs nav-tab-line" id="new-products-1">
              <li onclick="SortAsscending('ActualPrice')">
              	<a data-transition-type="backSlide" href="#smartphone" data-toggle="tab">Price -- Low to High</a>
              </li>
              <li onclick="SortDescending('ActualPrice')">
              	<a data-transition-type="backSlide" href="#laptop" data-toggle="tab">Price -- High to low</a>
              </li>
            </ul>
            <!-- /.nav-tabs --> 
          </div>
      </div>
      <div class=col-sm-9 id="listingDisplay" style="margin: 0px 0px 0px 20px;background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
         </div>
      </div>
    </div>
    </div>

    <%@include file="footer.jsp" %>
<script>
$(document).ready(function()
{
	    var ctxPath = "<%=request.getContextPath()%>";
		headerFunctions(ctxPath);		
		$("#priceError").hide();
		loadListings();
})
	
	function loadListings(){
	$('#listing').empty();
    	var ctxPath = "<%=request.getContextPath()%>";
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/webapi/listings/subcategory/"+subcategoryid,
	        			async : false,
	        			dataType : "json", // data type of response
	        			success : function(result){
	        				for (var i in result){
	        					var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
	        					if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val())
	        						continue;
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
	function displayListings(result)
	{
	    <% AccessProperties ap = new AccessProperties(); %>
	    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
		var ActualPrice = Math.round(result.price - (result.discount/100)*result.price);
		result["ActualPrice"]=ActualPrice;
		var data="";
		data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result.id+
		"'> <div style='width: 260px;height: 250px;'>"+
		"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
		imgServerURL+result.imgUrl+"' alt=''></div>"+
        "<div style = 'font-size:15px; text-align:center'>"+result.listingName+"</div>"+
        "<div style = 'font-size:10px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>"+
        result.discount+"% off</div><br/>"+
        "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
        "<i class='fa fa-inr' style='font-size:15px'></i>"+result.ActualPrice+"</div>"+
       	"<del style = 'font-size:10px; text-align:left; font-family:verdana; color:grey;margin-right:10px;display:inline-block'>"+
       	"<i class='fa fa-inr' style='font-size:10px'></i>"+result.price+"</del>"+
       	"</div>";
       	$('#listing').append(data);
	}
	
	
	
    function SortAsscending(prop)
    {
    	$('#listing').empty();
    	var ctxPath = "<%=request.getContextPath()%>";
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/webapi/listings/subcategory/"+subcategoryid,
        			dataType : "json", // data type of response
        			success : function(result){
        				for (i=0;i<result.length;i++)
    					{
    					    var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
    		    		    result[i]["ActualPrice"]=ActualPrice;
    					}
        				result.sort(GetSortOrderAsscending(prop));//Pass the attribute to be sorted on
        				load(result);
        	    	},
        	    	error:function(){
        	    		alert("error occurred");
        	        	
        	    	}
        		});
    }
    function SortDescending(prop)
    {
    	$('#listing').empty();
    	var ctxPath = "<%=request.getContextPath()%>";
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/webapi/listings/subcategory/"+subcategoryid,
        			dataType : "json", // data type of response
        			success : function(result){
        				for (i=0;i<result.length;i++)
        					{
        					var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
        		    		result[i]["ActualPrice"]=ActualPrice;
        					}
        				result.sort(GetSortOrderDescending(prop));//Pass the attribute to be sorted on
        				load(result);
        	    	},
        	    	error:function(){
        	    		alert("error occurred");
        	        	
        	    	}
        		});
    }
    function load(result)
    {
	    <% AccessProperties ap1 = new AccessProperties(); %>
	    var imgServerURL = "<%=ap1.getImageServerURL() %>"; 
    	for (i=0;i<result.length;i++)
    		{
    		var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
    		result[i]["ActualPrice"]=ActualPrice;
    		if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val())
    			continue;
    		var data="";
    		data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result[i].id+
    		"'> <div style='width: 260px;height: 250px;'>"+
    		"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
    		imgServerURL+result[i].imgUrl+"' alt=''></div>"+
            "<div style = 'font-size:15px; text-align:center'>"+result[i].listingName+"</div>"+
            "<div style = 'font-size:10px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>"+
            result[i].discount+"% off</div><br/>"+
            "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
            "<i class='fa fa-inr' style='font-size:15px'></i>"+result[i].ActualPrice+"</div>"+
           	"<del style = 'font-size:10px; text-align:left; font-family:verdana; color:grey;margin-right:10px;display:inline-block'>"+
           	"<i class='fa fa-inr' style='font-size:10px'></i>"+result[i].price+"</del>"+
           	"</div>";
	       	$('#listing').append(data);
    		};
    };

    function starJson(listing)
    {
    	var review = JSON.stringify({
    		"id" : 1,
    	    "listingId" : listing.id,
    	    "userId" : 1
    	});
    	return review;
    }
    
    function GetSortOrderAsscending(prop) { 
        return function(a, b) {  
            if (a[prop] > b[prop]) {  
                return 1;  
            } else if (a[prop] < b[prop]) {  
                return -1;  
            }  
            return 0;  
        }  
    } 
    
    function GetSortOrderDescending(prop) { 
        return function(a, b) {  
            if (a[prop] < b[prop]) {  
                return 1;  
            } else if (a[prop] > b[prop]) {  
                return -1;  
            }  
            return 0;  
        }  
    }  
    
    function AvgStars(listing)
    {
    	var ctxPath = "<%=request.getContextPath()%>";
    	$.ajax(
				{
					type : 'POST',
					contentType : 'application/json',
					url : ctxPath + "/webapi/reviews/listingId",
					dataType : "json", // data type of response
					data : starJson(listing[i]),
					success : function(result){
						var rating;
						var total=0;
						for(i=0;i<result.length;i++)
							{ 
							    total+=result[i].stars;
							}
						if(result.length==0)
							rating=3;
						else
						    rating = total / (result.length);
						listing["rating"]=rating;
			    	},
			    	error:function() {
			    		alert(error);
			    	}
				});
    		alert(JSON.stringify(listing));
    		alert(JSON.stringify(listing));
    }
    
    $("#applyFilter").click(function(){
    	var maxVal = parseInt($("#MaxPrice").val());
    	var minVal = parseInt($("#MinPrice").val());
    	//alert(minVal + " " + maxVal)
    	if(minVal>maxVal){
    		$("#MinPrice").val("0");
    		$("#priceError").show();
    	}
    	else {
    		$("#priceError").hide();
    	}
    });
    
	
		
	</script>

</body>
</html>