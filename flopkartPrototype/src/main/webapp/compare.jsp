<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<!DOCTYPE html>
<html>
<!-- Use this page as a template to create new pages-->
<head>
	<%@include file="metaContent.jsp" %>
	<title>Compare items</title>
</head>
<body>
    <%@include file="header.jsp" %>
	<div class="well">
		<div class="search-result-container ">
			<div class="sidebar-widget wow fadeInUp"
				style="visibility: hidden; animation-name: none;">
				<div class="row">
					<div class="widget-header"
						style="margin-bottom: 10px; margin-left: 15px;">
						<h3 class="widget-title" style="text-align: center; color: blue;">
							<B>COMPARE ITEMS</B>
						</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3 sidebar"></div>
					<div class="col-sm-4 sidebar">
						<h4 class="widget-title">
							<B>CATEGORY<label style="color: red; padding-left: 3px;">
									*</label></B>
						</h4>
					</div>

					<div class="col-sm-3 sidebar" id="sub-cat-head">
						<h4 class="widget-title">
							<B>SUB-CATEGORY<label style="color: red; padding-left: 3px;">
									*</label></B>
						</h4>
					</div>
					<div class="col-md-2 sidebar"></div>
				</div>
				<br/>
				<div class="row">
					<div class="col-md-3 sidebar"></div>
					<div class="col-sm-4 sidebar" id="cat-content"></div>

					<div class="col-sm-3 sidebar" id="sub-cat-content"></div>
					<div class="col-md-2 sidebar"></div>
				</div>
				<div class="row">
					<div class="col-sm-3 sidebar"></div>
					<div class="col-sm-4 sidebar" id="listing1-head">
						<h4 class="widget-title">
							<B>ITEM 1<label style="color: red; padding-left: 3px;">
									*</label></B>
						</h4>
					</div>

					<div class="col-sm-3 sidebar" id="listing2-head">
						<h4 class="widget-title">
							<B>ITEM 2<label style="color: red; padding-left: 3px;">
									*</label></B>
						</h4>
					</div>

					<div class="col-md-2 sidebar"></div>
				</div>			
				<div class="row">
					<div class="col-md-3 sidebar"></div>
					<div class="col-sm-4 sidebar" id="listing1"></div>

					<div class="col-sm-3 sidebar" id="listing2"></div>
					<div class="col-md-2 sidebar"></div>
				</div>
				<br/>
				<div class="row">
					<div class="col-md-6 sidebar"></div>
					<div class="col-md-2 sidebar">
						<button id="compare" class="btn btn-primary" onclick="compare()">Compare</button>
					</div>
					<div class="col-md-4 sidebar"></div>
				</div>
			</div>
		</div>
		
		<table id="compareTable" class="table table-striped">
			<thead>
				<tr>
					<th></th>
					<th id="firstitem"></th>
			        <th id="seconditem"></th>
				</tr>
	   	   </thead>
	   	   <tbody>
	   	   		<tr>
	   	   			<td></td>
	   	   			<td id="image1"></td>
			        <td id="image2"></td>
	   	   		</tr>
	   	   		<tr>
	   	   			<td>Description</td>
	   	   			<td id="desc1"></td>
			        <td id="desc2"></td>
	   	   		</tr>
	   	   		<tr>
	   	   			<td>Marked price</td>
	   	   			<td id="mp1"></td>
			        <td id="mp2"></td>
	   	   		</tr>
	   	   		<tr>
	   	   			<td>Discount</td>
	   	   			<td id="discount1"></td>
			        <td id="discount2"></td>
	   	   		</tr>
	   	   		<tr>
	   	   			<td>Discounted price</td>
	   	   			<td id="dp1"></td>
			        <td id="dp2"></td>
	   	   		</tr>
	   	   		<tr>
	   	   			<td>Colour</td>
	   	   			<td id="colour1"></td>
			        <td id="colour2"></td>
	   	   		</tr>
	   	   		<tr>
	   	   			<td>Brand</td>
	   	   			<td id="brand1"></td>
			        <td id="brand2"></td>
	   	   		</tr>
	   	   </tbody>
		</table>
	</div>

	<%@include file="footer.jsp" %>
</body>
<script>
$(document).ready(function()
{ 
	var ctxPath = "<%=request.getContextPath()%>";
		headerFunctions(ctxPath);
		var user = getCookie("user_details");
		if (user != "") {
			setCookie("user_details", user, 30);
		}

		$('#sub-cat-content').hide();
		$('#sub-cat-head').hide();
		$("#listing1").hide();
		$("#listing2").hide();
		$("#listing1-head").hide();
		$("#listing2-head").hide();
		$("#compareTable").hide();
		$("#compare").hide();
		fetchCat();

		$("#cat-content").on("change", function() {
			var period = this.value;
			if (period == "0")
				return; // please select - possibly you want something else here
			$('#sub-cat-content').show();
			$('#sub-cat-head').show();
			var catId1 = getSelectedText('catId');
			$('#catname1').val(catId1);
			DispSubCat();
		});

		$("#sub-cat-content").on("change", function() {
			$("#listing1").show();
			$("#listing1-head").show();
			DispListing1();
		});
		
		$("#listing1").on("change", function(){
			$("#listing2").show();
			$("#listing2-head").show();
			DispListing2();
		});
		
		$("#listing2").on("change", function(){
			$("#compare").show();
		});
	});

	function fetchCat() {
		var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/categories",
		dataType : "json", // data type of response
		success : function(result){
			var data="<select id='catId' style=\" background-color:white; font-size:20px;\">"+"<option value=' "+0+" '>Select a category</option>";
            for(var i in result){
               data+="<option value='"+result[i].id+"'>"+result[i].categoryName+"</option>";
            }
            data += "</select>";
            $('#cat-content').html(data);
    	},
    	error:function() {
        	//swal("error occurred");
    	}
	});
}

function getSelectedText(elementId) {
    var elt = document.getElementById(elementId);

    if (elt.selectedIndex == -1)
        return null;

    return elt.options[elt.selectedIndex].text;
}
	
function DispSubCat()
{
	var ctxPath = "<%=request.getContextPath()%>";
	if($("#catId").val()==0)
	{
	    swal("Select a Category");
	}
	else
	{
		var categoryId = $("#catId").val();
		$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/subcategories/category/"+categoryId,
			dataType : "json", // data type of response
			success : function(result){
				var data="<select id='subcatId'  name ='subcatId' style=\" background-color:white; font-size:20px;\">"+"<option value=' "+0+" '>Select a sub-category</option>";
		        for(var i in result){
		        		data+="<option value='"+result[i].id+"'>"+result[i].subcategoryName+"</option>";
	            }
		        data += "</select>";
	            $('#sub-cat-content').html(data);
	    		},
		    	error:function(data,status) {
		      
		    	}
		});
	}
}

function DispListing1(){
	var ctxPath = "<%=request.getContextPath()%>";
	if($("#subcatId").val()==0)
	{
	    swal("Select a Subcategory");
	}
	else
	{
		var subcategoryId = $("#subcatId").val();
		$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/listings/subcategory/"+subcategoryId,
			dataType : "json", // data type of response
			success : function(result){
				var data="<select id='listId1' style=\" background-color:white; font-size:20px;\">"+"<option value=' "+0+" '>Select an item</option>";
		        for(var i in result){
		        		data+="<option value='"+result[i].id+"'>"+result[i].listingName+"</option>";
	            }
		        data += "</select>";
	            $('#listing1').html(data);
	    		},
		    	error:function(data,status) {
		      
		    	}
		});
	}
}

function DispListing2(){
	var ctxPath = "<%=request.getContextPath()%>";
	if($("#subcatId").val()==0)
	{
	    swal("Select a Subcategory");
	}
	else if($("#listId1").val()==0)
	{
	    swal("Select first item");
	}
	else
	{
		var subcategoryId = $("#subcatId").val();
		var list1 = $("#listId1").val();
		$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/listings/subcategory/"+subcategoryId,
			dataType : "json", // data type of response
			success : function(result){
				var data="<select id='listId2' style=\" background-color:white; font-size:20px;\">"+"<option value=' "+0+" '>Select an item</option>";
		        for(var i in result){
		        		if(list1 == result[i].id){
		        			continue;
		        		}
		        		data+="<option value='"+result[i].id+"'>"+result[i].listingName+"</option>";
	            }
		        data += "</select>";
	            $('#listing2').html(data);
	    		},
		    	error:function(data,status) {
		      
		    	}
		});
	}
}

function compare(){
	$("#compareTable").show();
	getDetails(1);
	getDetails(2);
}

function getDetails(i){
	 $("#firstitem").text(getSelectedText('listId1'));
     $("#seconditem").text(getSelectedText('listId2'));
	var ctxPath = "<%=request.getContextPath()%>";
	<% AccessProperties ap = new AccessProperties(); %>
    var imgServerURL = "<%=ap.getImageServerURL() %>";
	var listid = $("#listId"+i).val();
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/listings/"+listid,
				dataType : "json", // data type of response
				success : function(listingJson){
						$("#image"+i).html("<a href='item.jsp?id="+listingJson.id+"'><img src='"+imgServerURL+listingJson.imgUrl+"' style='display: block; object-fit: contain; width: 150px; height: 150px;'></a>")
		    			$("#mp"+i).html("<i class='fa fa-rupee-sign'></i> "+listingJson.price);
						$("#discount"+i).text(listingJson.discount+"%");
						$("#dp"+i).html("<i class='fa fa-rupee-sign'></i> "+ (listingJson.price - (listingJson.discount*listingJson.price/100)));
						$("#colour"+i).text(listingJson.colour);
						$("#desc"+i).text(listingJson.description);
						$("#brand"+i).text(listingJson.brand);
					},
			    	error:function(data,status) {
			      
			    	}
			});
}
</script>	
</html>