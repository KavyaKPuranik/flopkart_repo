<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
    <%@ page import="com.iiitb.ooadvoid.CreateProperties" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Seller Hub</title>
		
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/css/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/css/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/rateit.css">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/css/font-awesome.css">
<link rel="stylesheet" href="./bootstrapFiles/fontawesome-all.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(1).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(2).css" rel="stylesheet" type="text/css">
<style>

.custom-file-upload {
	border: 1px solid #ccc;
	display: inline-block;
	padding: 6px 12px;
	cursor: pointer;
}
.dropdwn{
  background-color: transparent;
  border-color: #fff;
  border-style: solid;
  border-top: none;
  text-color: red;
  padding: 6px 12px; 
  border-right: none;
  border-left: none;
}
.dp .tooltiptext {
	visibility: hidden;
	background-color: black;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 3px 0;
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
	overflow:visible;
}

.dp:hover .tooltiptext {
    visibility: visible;
}
</style>
</head>

<body>
<!-- ============================================== HEADER ============================================== -->

<header class="header-style-1"> 
  
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        	<div class="cnt-account">
				<ul class="list-unstyled">
						<li><a href="underConstruct.html"><i class="fa fa-bell" ></i> Notification</a></li>
						<li><a href="sellerHub.jsp" onclick="logout()"><i class="fa fa-check"></i> Logout</a></li>
					</ul>
		 </div>
        <!-- /.cnt-account -->
        
        <div class="clearfix"></div>
      </div>
      <!-- /.header-top-inner --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.header-top --> 
  <!-- ============================================== TOP MENU : END ============================================== -->
  <div class="main-header">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-2 logo-holder"> 
          <!-- ============================================================= LOGO ============================================================= -->
          <div class="logo"> <a href="index.jsp"> <img  height="50px" src="./images/sellerHub/seller-hub-logo.png" alt=""> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= LOGO : END ============================================================= --> 
          </div>
        <div class="col-xs-12 col-sm-12 col-md-8 top-search-holder">
        </div>
        <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row"> 
        </div>
      </div>
      <!-- /.row --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.main-header --> 
  
  <!-- ============================================== NAVBAR ============================================== -->
  <div class="header-nav animate-dropdown">
    <div class="container">
      <div class="yamm navbar navbar-default" role="navigation">
        <div class="navbar-header">
       <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> 
       <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div class="nav-bg-class">
          <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
            <div class="nav-outer">
              <ul class="nav navbar-nav">
                <li class="active dropdown yamm-fw"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Welcome</a> </li>
                <li class="active dropdown yamm-fw"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Listings</a> </li>
            		<li class="dropdown"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">ORDERS</a>
                  <ul class="dropdown-menu pages">
                    <li>
                      <div class="yamm-content">
                        <div class="row">
                          <div class="col-xs-12 col-menu">
                            <ul class="links">
                              <li><a href="#">ACTIVE ORDERS</a></li>
                              <li><a href="#">COMPLETED ORDERS</a></li>
                              <li><a href="#">CANCELLED ORDERS</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="active dropdown yamm-fw"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Advertising</a> </li>
                <li class="active dropdown yamm-fw"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Returns</a> </li>
              </ul>
              <!-- /.navbar-nav -->
              <div class="clearfix"></div>
            </div>
            <!-- /.nav-outer --> 
          </div>
          <!-- /.navbar-collapse --> 
          
        </div>
        <!-- /.nav-bg-class --> 
      </div>
      <!-- /.navbar-default --> 
    </div>
    <!-- /.container-class --> 
    
  </div>
  <!-- /.header-nav --> 
  <!-- ============================================== NAVBAR : END ============================================== --> 
  
</header>
  <%if (request.getParameter("id") != null) { 
		String x = request.getParameter("id");
		out.println("Successful "+ x );
 	 } %>
		
<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar"> 
        <div class="sidebar-module-container">
          <div class="sidebar-filter"> 
            <!-- ============================================== IMAGE============================================== -->
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <h5 class="section-title">Hello <label id="sellername" name="sellername" /></label></h5>
              <div class="widget-header">
                <h4 class="widget-title" id="userID"></h4>
              </div>
              
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== IMAGE: END ============================================== --> 
            
            
            <!-- ============================================== Other TAGS ============================================== -->
          <!----------- Account------------->
          <div class="side-menu animate-dropdown outer-bottom-xs" style="margin-top:30px;">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Account Settings</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="underConstruct.html">Profile Information</a></h5></li>
                  <li><h5><a href="underConstruct.html">Manage Addresses</a></h5></li>
                  <li><h5><a href="underConstruct.html">Notification Preferences</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        
            
             
           
        
            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
            <form id="logout_form" action="./sellerHub.jsp">
              <input type="submit" class="head btn-link" style="color:black;font-weight:bold" value="LOGOUT" onclick="logout();"></input>
            </form>
            </div>
            
            <!-- ============================================== Other: END ============================================== -->

          </div>
          <!-- /.sidebar-filter --> 
        </div>
        <!-- /.sidebar-module-container --> 
      </div>
      <!-- /.sidebar -->
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
	              <h4 class="widget-title"><B>CATEGORY</B></h4>
	            </div>
	            
		      	<div class="col-sm-5 sidebar" id ="sub-cat-head"> 
	              <h4 class="widget-title"><B>SUB-CATEGORY</B></h4>
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
	              <div class= "row">
	             	 <div class="col-md-5 sidebar"> 
			            <div class="widget-header">
		                		<h4 class="widget-title"><B>ITEM NAME</B></h4>
		              	</div>
			         </div>
			         <div class="col-md-5 sidebar"> 
			              <div class="widget-header">
		                		<h4 class="widget-title"><B>ITEM IMAGE</B></h4>
		              	  </div>
			         </div>
		          </div>
		          
				  <div class="row">
				     <div class="col-md-5 sidebar"> 
			              <input type="text" class="form-control input-lg" id="listingname" name="listingname"  >
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
	                <h4 class="widget-title"><B>BRAND</B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="brand" id="brand" 
		              autocomplete="name" >
		          </div>
		         </div> 
        		</div>
      	</div>
      	
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>QUANTITY</B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="number" class="form-control input-lg"  name="qty" id="qty" 
		              autocomplete="name" >
		              <input type="text" id="cnt" name="cnt" hidden="hidden"/>
		          </div>
		         </div> 
        		</div>
      	</div>
      	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>PRICE</B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="price" id="price" 
		              autocomplete="name" >
		          </div>
		         </div> 
        		</div>
      	</div>
       	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>DISCOUNT %</B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="number" class="form-control input-lg"  name="dis" id="dis" value="0"  max="99"
		              autocomplete="name" >
		          </div>
		         </div> 
        		</div>
      	</div>
   
      	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>COLOR</B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="text" class="form-control input-lg"  name="clr" id="clr" 
		              autocomplete="name" >
		          </div>
		         </div> 
        		</div>
      	</div>
      	 <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>MANUFACTURING DATE</B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="date" class="form-control input-lg"  name="mfd" id="mfd" 
		              autocomplete="name" >
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
						 <div class="row" id="TextBoxDiv1" style="margin-bottom:8px;">
							      <div class="col-md-5 sidebar"> 
						              <input type="text" class="form-control input-lg"  name="key1" id="key1" >
						          </div>
						          <div class="col-md-2 sidebar" style="margin-top:10px; ">
						          	<label ><b>:</b></label>
						          </div>
						          <div class="col-md-5 sidebar"> 
						              <input type="text" class="form-control input-lg"  name="val1" id="val1" >
						          </div> 
					         </div > 
					</div>
					<div class="row" style="text-align:center;">
						 <div class="col-md-2 sidebar"></div>
					     <div class="col-md-8 sidebar"> 
					     	<input type="button" style="font-size:14px;color: white; 
   							padding: 4px 20px; background-color:#e7e7e7; color: black;" value="ADD" id="ADD">
					     </div>
					   <!--  <div class="col-md-4 sidebar"> 
					     	<input type="button" style="font-size:14px;color: white; 
   							padding: 4px 20px; background-color:#e7e7e7; color: black;" value="DELETE" id="DEL1">
					     </div> --> 
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
		var counter = 2;
		var c = 1;
		$('#cnt').val(c);
		$('#sub-cat-content').hide();
		$('#sub-cat-head').hide();
		fetch();
		
		$("#cat-content").on("change",function() {
		    var period = this.value;
		    if (period=="0") return; // please select - possibly you want something else here

		    $('#sub-cat-content').show();
		    $('#sub-cat-head').show();
		    DispSubCat();
		 });

		$('#ADD').click(function(){
			var row1 = '<div class="row"  id="TextBoxDiv'+counter+'" style="margin-bottom:8px;">'+
				'<div class="col-md-5 sidebar"> '+
				'<input type="text" class="form-control input-lg"  name="key'+counter+'" id="key'+counter+'" >'+
				'</div>'+
				'<div class="col-md-2 sidebar" style="margin-top:10px; ">'+
				'<label ><b>:</b></label>'+
				'</div>'+
				'<div class="col-md-5 sidebar"> '+
				' <input type="text" class="form-control input-lg"  name="val'+counter+'" id="val'+counter+'" >'+
				'</div> '+
				'</div > ';
			
			$('#ADD').data('row1',row1);
			
			$('#TextBoxesGroup1').append($(this).data('row1'));
			counter++;
			//add_detail(c);
			c++;
			$('#cnt').val(c);
			
			
		});
		
		
		$('#DEL1').click(function(){
			counter--;
			  $('#TextBoxesGroup1 .row').eq(  $('#TextBoxesGroup1 .row').length-1 ).remove();
		});
		
	})
 function checkCookie() 
{
    var result = getCookie("seller_details");
    var user = JSON.parse(result);
    document.getElementById("sellername").innerText = user.firstName;

   // alert(user.id);
    if (user != "") 
    {
		setCookie("seller_details", user, 10);
		sellerId(user);
    } 
    else 
    {
    	logout();
    }
} 



function resetCookie() 
{
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 10);
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