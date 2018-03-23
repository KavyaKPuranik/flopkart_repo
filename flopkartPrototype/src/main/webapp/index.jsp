<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
											<a href="underConstruct.html"
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
								id="new-products-1">
								<li class="active"><a data-transition-type="backSlide"
									href="#all" data-toggle="tab">All</a></li>
								<li><a data-transition-type="backSlide" href="#smartphone"
									data-toggle="tab">Clothing</a></li>
								<li><a data-transition-type="backSlide" href="#laptop"
									data-toggle="tab">Electronics</a></li>
								<li><a data-transition-type="backSlide" href="#apple"
									data-toggle="tab">Shoes</a></li>
							</ul>
							<!-- /.nav-tabs -->
						</div>
						<div class="tab-content outer-top-xs">
							<div class="tab-pane in active" id="all">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme"
										data-item="4">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="item.jsp"><img height="250px"
																src="./images/products/floralTop.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="item.jsp">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>50.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button data-toggle="tooltip"
																		class="btn btn-primary icon" type="button"
																		title="Add Cart">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a data-toggle="tooltip"
																	class="add-to-cart" href="item.jsp" title="Wishlist">
																		<i class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a data-toggle="tooltip"
																	class="add-to-cart" href="item.jsp" title="Compare">
																		<i class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/boots.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Mountain Snow Boots</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>199.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/redJacket.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Red Jacket</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>239.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/shirt.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Blue collared shirt</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
																49.99 </span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i>80</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/floralTop.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/floralTop.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

							<div class="tab-pane" id="smartphone">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p5.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p6.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p7.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info-->
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p8.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p9.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p10.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

							<div class="tab-pane" id="laptop">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p11.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p12.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p13.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p14.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p15.jpg" alt="image"></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p16.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Apple Iphone 5s 32GB</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

							<div class="tab-pane" id="apple">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p18.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p18.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p17.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p16.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p13.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p14.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Samsung Galaxy S4</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
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
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
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
})
	
</script>
</html>