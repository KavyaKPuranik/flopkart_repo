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
<!-- ============================================== HEADER ============================================== -->

<header class="header-style-1"> 
  
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        	<div class="cnt-account">
				<ul class="list-unstyled">
<!-- 						<li><a href="underConstruct.html"><i class="fa fa-bell" ></i> Notification</a></li> -->
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
          <div class="logo"> <a href="sellerhome.jsp"> <img  height="50px" src="./images/sellerHub/seller-hub-logo.png" alt=""> </a> </div>
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
  
		<!-- ============================================== NAVBAR ============================================== -->
		<div class="header-nav animate-dropdown" style="background-color:white;color:black">
			<div class="container">
				<div class="yamm navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button data-target="#mc-horizontal-menu-collapse"
							data-toggle="collapse" class="navbar-toggle collapsed"
							type="button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="nav-bg-class">
						<div class="navbar-collapse collapse"
							id="mc-horizontal-menu-collapse">
							<div class="nav-outer">
								<ul class="nav navbar-nav" id="category_dropdown">
									<li class="active dropdown yamm-fw">
										<a href="sellerhome.jsp" style="color:black">Welcome</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="sellerItemInsert.jsp" style="color:black">Add ITEM</a></li>
										
									<li class="active dropdown yamm-fw">
										<a	href="sellerViewItem.jsp" style="color:black">VIEW YOUR ITEMS</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="sellerViewOrder.jsp" style="color:black">VIEW ORDERS</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="sellerListingDeal.jsp" style="color:black">ADD DEAL TO LISTING</a></li>
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