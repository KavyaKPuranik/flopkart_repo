<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<% AccessProperties ap = new AccessProperties(); %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Welcome to Flopkart</title>
</head>
<body>	
    <%@include file="header.jsp" %>


	<!-- /.breadcrumb -->
	<div class="body-content outer-top-xs">
		<div class="container">
			<div class="row">

				<!-- ============================================== CONTENT ============================================== -->
				<div class="homebanner-holder">
					<!-- ========================================== SECTION – HERO ========================================= -->

					<div id="hero">
						<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
							<div class="item"
								style="background-image: url(./images/cat-banner-1.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Top Clothing Brands</div>
										<div class="big-text fadeInDown-1">Get 50% off!</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>Formal wear, Long kurtas and so many more!</span>
										</div>
										<div class="button-holder fadeInDown-3">
											<a href="offerZone.jsp"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div>
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

							<div class="item"
								style="background-image: url(./images/fashion-banner.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Women Fashion Spring 2018</div>
										<div class="big-text fadeInDown-1">
											<span class="highlight">Buy 3 Get 1 !</span>
										</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>New Spring collection! Floral designs and more!</span>
										</div>
										<div class="button-holder fadeInDown-3">
											<a href="offerZone.jsp"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div>
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

						</div>
						<!-- /.owl-carousel -->
					</div>

					<!-- ========================================= SECTION HERO : END ========================================= -->

					<!-- ============================================== INFO BOXES ============================================== -->
					<div class="info-boxes wow fadeInUp">
						<div class="info-boxes-inner">
							<div class="row">
								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">money back</h4>
											</div>
										</div>
										<h6 class="text">30 Days Money Back Guarantee</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="hidden-md col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">free shipping</h4>
											</div>
										</div>
										<h6 class="text">
											Shipping on orders over <i class="fa fa-rupee-sign"></i>99
										</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">Special Sale</h4>
											</div>
										</div>
										<h6 class="text">
											Extra <i class="fa fa-rupee-sign"></i>5 off on all items
										</h6>
									</div>
								</div>
								<!-- .col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.info-boxes-inner -->

					</div>
					<!-- /.info-boxes -->
					<!-- ============================================== INFO BOXES : END ============================================== -->
					<!-- ============================================== SCROLL TABS ============================================== -->
					<div id="product-tabs-slider"
						class="scroll-tabs outer-top-vs wow fadeInUp">
						<div class="more-info-tab clearfix ">
							<h3 class="new-product-title pull-left">New Products</h3>
							<ul class="nav nav-tabs nav-tab-line pull-right"
								id="new-products-categories">
								<li class="active"><a data-transition-type="backSlide"
									href="#all" onclick="newProductsAll()" data-toggle="tab">All</a></li>
							</ul>
							<!-- /.nav-tabs -->
						</div>
						<div class="tab-content outer-top-xs">
							<div class="tab-pane in active" id="all">
								<div class="product-slider">
									<div id="new-products-all"
										class="owl-carousel home-owl-carousel custom-carousel owl-theme"
										data-item="4">

										<div id="prod0" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg0" href="#"><img id="productImage0" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName0" href="#"></a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
															<span id="discPrice0"></span>
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 
																<span  id="actualPrice0"></span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod1" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg1" href="#"><img id="productImage1" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName1" href="#"></a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
															<span id="discPrice1"></span>
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 
																<span  id="actualPrice1"></span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod2" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg2" href="#"><img id="productImage2" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName2" href="#"></a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
															<span id="discPrice2"></span>
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 
																<span  id="actualPrice2"></span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod3" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg3" href="#"><img id="productImage3" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName3" href="#"></a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
															<span id="discPrice3"></span>
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 
																<span  id="actualPrice3"></span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod4" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg4" href="#"><img id="productImage4" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName4" href="#"></a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
															<span id="discPrice4"></span>
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 
																<span  id="actualPrice4"></span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->
										

										<div id="prod6" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg6" href="#"><img id="productImage6" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName6" href="#"></a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
															<span id="discPrice6"></span>
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 
																<span  id="actualPrice6"></span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div id="prod5" class="item item-carousel" hidden="hidden">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a id="productImg5" href="#"><img id="productImage5" height="250px"></a>
														</div>
														<!-- /.image -->
													</div>
													<!-- /.product-image -->
													<div class="product-info text-center">
														<h3 class="name">
															<a id="productName5" href="#"></a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
															<span id="discPrice5"></span>
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 
																<span  id="actualPrice5"></span>
															</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->
									</div>
									<!-- /.home-owl-carousel -->
								</div>
								<!-- /.product-slider -->
							</div>
							<!-- /.tab-pane -->

						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.scroll-tabs -->
					<!-- ============================================== SCROLL TABS : END ============================================== -->

				</div>
			</div>
		</div>
	</div>
	

    <%@include file="footer.jsp" %>
     

</body>
<script>
$(document).ready(function(){
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
	scroll(ctxPath);
	newProductsAll() ;
})

	
function scroll(ctxPath) 
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/categories",
		dataType : "json", // data type of response
		success :
			function(categories_json)
			{
			for(var i=0;i<categories_json.length;i++)
				{
					var htmlData = "<li><a data-transition-type='backSlide' onclick='categoryItems("+categories_json[i].id+")'"+
					"data-toggle='tab'>"+categories_json[i].categoryName+"</a></li>"
					$("#new-products-categories").append(htmlData);	
				}
			},
    	error:
    		function() 
    		{
        	//alert("error occurred");
    		}
	});
}

function categoryItems(id)
{
    var ctxPath = "<%=request.getContextPath()%>";
	for(var i=0;i<7;i++)
	{
		$("#prod"+i).hide();
	}
    var max_len = 7;
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/listings/category/"+id,
		dataType : "json", // data type of response
		success :
			function(listings_json)
			{
			    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
			    var len = max_len;
			    if(listings_json.length<len)
			    	len = listings_json.length;
				for(var i=0;i<len;i++)
				{
					var discPrice = listings_json[i].price - (listings_json[i].price*listings_json[i].discount/100);
					$("#productImage"+i).attr("src",imgServerURL+listings_json[i].imgUrl);
					$("#productImg"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productName"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productImage"+i).attr("style",'display: block; object-fit: contain; width: 250px; height: 250px;');
					$("#productName"+i).html(listings_json[i].listingName);
					
					$("#discPrice"+i).html(discPrice);
// 					$("#discPrice"+i).append(" ("+listings_json[i].manufacture_Date+")");
					$("#actualPrice"+i).html(listings_json[i].price);
					$("#prod"+i).show();
				}
				
			},
    	error:
    		function(){}
	});
}

function newProductsAll() 
{
    var ctxPath = "<%=request.getContextPath()%>";
    var max_len = 7;
	for(var i=0;i<max_len;i++)
	{
		$("#prod"+i).hide();
	}
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/listings/date/"+max_len,
		dataType : "json", // data type of response
		success :
			function(listings_json)
			{
			    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
			for(var i=0;i<listings_json.length;i++)
				{
					var discPrice = listings_json[i].price - (listings_json[i].price*listings_json[i].discount/100);
					$("#productImage"+i).attr("src",imgServerURL+listings_json[i].imgUrl);
					$("#productImg"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productName"+i).attr("href","item.jsp?id="+listings_json[i].id);
					$("#productImage"+i).attr("style",'display: block; object-fit: contain; width: 250px; height: 250px;');
					$("#productName"+i).html(listings_json[i].listingName);
					$("#discPrice"+i).html(discPrice);
// 					$("#discPrice"+i).append(" ("+listings_json[i].manufacture_Date+")");
					$("#actualPrice"+i).html(listings_json[i].price);
					$("#prod"+i).show();
				}
			},
    	error:
    		function(){}
	});
}
</script>	
</html>