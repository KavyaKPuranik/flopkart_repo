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
  <%if (request.getParameter("id") != null) { 
		String x = request.getParameter("id");
		out.println("Successful "+ x );
 	 } %>
		
<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
     	<%@include file="sidebarSeller.jsp" %>
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->

	<form id="insert_data" action="SellerUploadServlet" method="post"  enctype="multipart/form-data"> 
        <div class="search-result-container ">
           <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="row">
	              <div class="widget-header" style="margin-bottom:10px; margin-left:15px;">
	                <h3 class="widget-title"  style="color:#FF0000;"><B>ADD AN ITEM</B></h3>
	              </div>
              </div>
		     <div class="row">
		      	<div class="col-sm-5 sidebar"> 
	              <h4 class="widget-title"><B>CATEGORY<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>
	            
		      	<div class="col-sm-5 sidebar" id ="sub-cat-head"> 
	              <h4 class="widget-title"><B>SUB-CATEGORY<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>
	            <div class="col-md-2 sidebar"> </div>
	        </div>         
		    <div class="row">
		        <div class="col-sm-5 sidebar" id ="cat-content" >  
	            </div>
	            
		        <div class="col-sm-5 sidebar" id ="sub-cat-content">
	            </div>
	            <div class="col-md-2 sidebar"> </div>
	        </div>
              <!-- /.sidebar-widget-body --> 
          </div>
            
          
        
      </div>
       <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>ITEM ID<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="itemid" id="itemid" required>
		          </div>
		         </div> 
        		</div>
      	</div>
  
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	              <div class= "row">
	             	 <div class="col-md-5 sidebar"> 
			            <div class="widget-header">
		                		<h4 class="widget-title"><B>ITEM NAME<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              	</div>
			         </div>
			         <div class="col-md-5 sidebar"> 
			              <div class="widget-header">
		                		<h4 class="widget-title"><B>ITEM IMAGE<label style="color:red; padding-left:3px;">  *</label></B></h4>
		              	  </div>
			         </div>
		          </div>
		          
				  <div class="row">
				     <div class="col-md-5 sidebar"> 
			              <input type="text" class="form-control input-lg" id="listingname" name="listingname"  required>
			         </div>
			         <div class="col-md-5 sidebar"> 
			            <input type="file"
								id="item_img" name="item_img" accept=".jpg, .jpeg, .png, .JPG, .PNG, .JPEG" required/>
					<!-- 	<input type="submit" value="Set item image"/>  -->
						
			         </div>
			      </div>
            </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col --> 
      
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>BRAND<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="brand" id="brand" 
		              autocomplete="name" required>
		          </div>
		         </div> 
        		</div>
      	</div>
      	
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>QUANTITY<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="number" class="form-control input-lg"  name="qty" id="qty" 
		              autocomplete="name" required>
		              <input type="text" id="cnt" name="cnt" hidden="hidden"/>
		          </div>
		         </div> 
        		</div>
      	</div>
      	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>PRICE<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="price" id="price" 
		              autocomplete="name" required >
		          </div>
		         </div> 
        		</div>
      	</div>
       	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>DISCOUNT % <label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="number" class="form-control input-lg"  name="dis" id="dis" value="0"  max="99"
		              autocomplete="name" required>
		          </div>
		         </div> 
        		</div>
      	</div>
   
      	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>COLOR<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
			        <select  id  = "clr" name="clr"  style="margin:20px;background-color: white; font-size: 19px;" required>
			      	   <option value="Black">Black</option>
					   <option value="Blue">Blue</option>
					   <option value="Green">Green</option>
					   <option value="Brown">Brown</option>
					   <option value="Magenta">Magenta</option>
					   <option value="White">White</option>
					   <option value="Peach">Peach</option>
					   <option value="Red">Red</option>
					   <option value="Orange">Orange</option>
					   <option value="Grey">Grey</option>
					   <option value="Cyan">Cyan</option>
					   <option value="Gold">Gold</option>
					   <option value="Transparent">Transparent</option>
					</select>
<!-- 		              <input type="text" class="form-control input-lg"  name="clr" id="clr"  -->
<!-- 		              autocomplete="name"required > -->
		          </div>
		         </div> 
        		</div>
      	</div>
      	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>MANUFACTURING DATE<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="date" class="form-control input-lg"  name="mfd" id="mfd" 
		              autocomplete="name" required >
		          </div>
		         </div> 
        		</div>
      	</div>
      	
      	<div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>DESCRIPTION</B></h4>
	            </div>   
			    <div class="row">
			    	   <div class="col-md-6 sidebar"> 
				      <div class="form-group">
					    <textarea class="form-control rounded-0" name ="desptn" id="desptn" rows="5"></textarea>
				      </div>
				    </div>
		        </div> 
        		</div>
      	</div>
      <!-- /.col --> 
         
       
    <div class="search-result-container" >
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>ADDITIONAL DETAILS</B></h4>
	            </div>   
	            <div class= "row">
	             	 <div class="col-md-5 sidebar"> 
			            <div class="widget-header">
		                		<h4 class="widget-title">Detail Name:</h4>
		              	</div>
			         </div>
			         <div class="col-md-2 sidebar" style="margin-top:10px; ">
					 </div>
			         <div class="col-md-5 sidebar"> 
			              <div class="widget-header">
		                		<h4 class="widget-title">Detail Value:</h4>
		              	  </div>
			         </div>
		          </div>
				   	 <div id='TextBoxesGroup1'>
						<!--  <div class="row" id="TextBoxDiv1" style="margin-bottom:8px;">
							      <div class="col-md-5 sidebar"> 
						              <input type="text" class="form-control input-lg"  name="key1" id="key1" >
						          </div>
						          <div class="col-md-2 sidebar" style="margin-top:10px; ">
						          	<label ><b>:</b></label>
						          </div>
						          <div class="col-md-5 sidebar"> 
						              <input type="text" class="form-control input-lg"  name="val1" id="val1" >
						          </div> 
					         </div >  -->
					</div>
					<div class="row" style="text-align:center;">
						 <div class="col-md-2 sidebar"></div>
					     <div class="col-md-8 sidebar"> 
					     	<input type="button" style="font-size:14px;color: white; 
   							padding: 4px 20px; background-color:#e7e7e7; color: black;" value="ADD" id="ADD">
					     	<input type="button" style="font-size:14px;color: white; 
   							padding: 4px 20px; background-color:#e7e7e7; color: black;" value="DELETE" id="DEL1">
					     </div> 
					      <div class="col-md-2 sidebar"></div>
					</div>
					
					
        		</div>
      	</div>
      
  
      	<div class="search-result-container"  style="text-align:center;">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	            
	           		<input type="submit" style="font-size:18px;color: white;
   							padding: 8px 20px; background-color: #4CAF50;" value="DONE"/>
					<input type="text" id="sellerid" name="sellerid" hidden="hidden"/>
	        
	            </div>   
        		</div>
      	</div>
   </form> 
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
<script>
$(document).ready(function(){
	
 	 	checkCookie();
		var counter = 0;
		$('#cnt').val(counter);
		$('#sub-cat-content').hide();
		$('#sub-cat-head').hide();
		fetch();
		$('#DEL1').hide();
		
		$("#cat-content").on("change",function() {
		    var period = this.value;
		    if (period=="0") return; // please select - possibly you want something else here

		    $('#sub-cat-content').show();
		    $('#sub-cat-head').show();
		    DispSubCat();
		 });

		$('#ADD').click(function(){
			counter++;
			$('#cnt').val(counter);
			var row1 = '<div class="row"  id="TextBoxDiv'+counter+'" style="margin-bottom:8px;">'+
				'<div class="col-md-5 sidebar"> '+
				'<input type="text" class="form-control input-lg"  name="key'+counter+'" id="key'+counter+'" required>'+
				'</div>'+
				'<div class="col-md-2 sidebar" style="margin-top:10px; ">'+
				'<label><b>:</b></label>'+
				'</div>'+
				'<div class="col-md-5 sidebar"> '+
				'<input type="text" class="form-control input-lg"  name="val'+counter+'" id="val'+counter+'" required>'+
				'</div> '+
				'</div > ';
			
			$('#ADD').data('row1',row1);
			
			$('#TextBoxesGroup1').append($(this).data('row1'));
			
			if(counter==0)
				$('#DEL1').hide();
			else
				$('#DEL1').show();
		});
		
		
		$('#DEL1').click(function(){
			counter--;
			$('#cnt').val(counter);
			$('#TextBoxesGroup1 .row').eq(  $('#TextBoxesGroup1 .row').length-1 ).remove();
			if(counter==0)
				$('#DEL1').hide();
		});
		
	})

function checkCookie() 
{
    var result = getCookie("seller_details");
    if (result != "") 
    {	
    	var user = JSON.parse(result);
		setCookie("seller_details", result, 30);
		document.getElementById("sellername").innerText = user.firstName;
		sellerId(user);
	
    } 
    else 
    {	alert("Login failed. Try again.");
      	window.location = "sellerHub.jsp";
    		logout();
    }
}



function resetCookie() 
{
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 30);
		sellerId(JSON.parse(user));
    } 
    else 
    {
    	logout();
    }
}


function sellerId(user)
{	
	
	$('#sellerid').val(user.id);
	//alert(user.id);
	return true;
	
}

function logout()
{
	deleteCookie("seller_details");
}

	function fetch() 
	{
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
	        	//alert("error occurred");
	    	}
		});
	}
	
	function DispSubCat()
	{
		var ctxPath = "<%=request.getContextPath()%>";
		if($("#catId").val()==0)
			{
			    alert("Select A Category");
			}
		else
		{
			$.ajax(
			{
				type : 'POST',
				contentType : 'application/json',
				url : ctxPath + "/webapi/subcategories/categoryId",
				dataType : "json", // data type of response
				data : formToJSON2(),
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

	function formToJSON2()
	{
		var categoryId = $("#catId").val();
		var subcategoryName = "";
		var flopkartSubCat = JSON.stringify({
		    "categoryId" : categoryId,
		    "subcategoryName" : subcategoryName
		});
		return flopkartSubCat;
	}

//-----------------------------------------------------------------------------------

	
</script>
	
	
</body>
</html>