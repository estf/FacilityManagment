<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstudentHome.aspx.cs" Inherits="ProjectFacilityM.Account.EstudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="img/season-change.jpg" type="image/x-icon"/>
    <title></title>

    
	    <link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'/>
	    <!-- <link href='http://fonts.googleapis.com/css?family=Pontano+Sans' rel='stylesheet' type='text/css'>
	    <link href='http://fonts.googleapis.com/css?family=Alegreya+Sans:300,400,500,700' rel='stylesheet' type='text/css'> -->
	    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,500' rel='stylesheet' type='text/css'/>
	    <link href='http://fonts.googleapis.com/css?family=Dosis:300,400,500,600' rel='stylesheet' type='text/css' />
	    
    <link href="../css/animate.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/owl.carousel.css" rel="stylesheet" />
    <link href="../css/owl.theme.css" rel="stylesheet" />
    <link href="../css/owl.transitions.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/main.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300' rel='stylesheet' type='text/css'/>

</head>
<body>
     <section class= "navs">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  				<div class="container-fluid">
    				<!-- Brand and toggle get grouped for better mobile display -->
    				<div class="navbar-header">
      					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
	      				</button>
	      				<%--<a class="navbar-brand logo" href="#">
	      					<span><i class="fa fa-stethoscope"></i></span>
	      					HealthCare
	      				</a>--%>
	    			</div>
		
		    		<!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				    	<ul class="nav navbar-nav navbar-right">
					        <li class="active"><a>Usuario:<asp:Label ID="lblUser" runat="server" Text=""></asp:Label></a></li>
					        <li><a href="Login.aspx" onclick="LogOut()">Cerrar Sesion</a></li>
					       <%-- <li><a href="doctors.html">Doctors</a></li>
					        <li><a href="blog.html">Blog</a></li>
							<li><a href="faq.html">FAQs</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="contact.html">Contact Us</a></li>--%>
				      	</ul>
				    </div><!-- navbar-collapse -->
				</div><!-- container-fluid -->
			</nav>
		</section>

    <section class="gallery-title text-center">
			<div class="gallery-wrapper">
				<div class="container">
					<div class= "row">
						<div>
							<h1 class="headline">Estudiantes </h1>
						</div>
					</div>
					<div class="row">
						<div class="sub-headline">
							<p> Realice todos sus acciones aqui</p>
						</div>
					</div>	
				</div>
			</div>
		</section>
    <section class="gallery-content">
			<div class="container">
				<div class="row port">
	    			<div class="col-md-8 col-md-offset-2 text-center button-group" id="filters">

	    				<button type="button" class="gallery-btn btn-primary btn is-checked" data-filter="*">Hacer reservacion</button>
	    				<button type="button" class="gallery-btn btn-primary btn" data-filter=".care">Ver Horarios</button>
	    				<button type="button" class="gallery-btn btn-primary btn" data-filter=".treatment">Cacelar reservacion</button>
	    				<button type="button" class="gallery-btn btn-primary btn" data-filter=".staff">Ver Reservaciones</button>
	    				<%--<button type="button" class="gallery-btn btn-primary btn" data-filter=".donation">Donation</button>
	    				<button type="button" class="gallery-btn btn-primary btn" data-filter=".pharmacy">Pharmacy</button>--%>

	    			</div>
		    	</div>	<!-- row -->
	    		<div class="row">
	    			<div class="isotope" id="port-items">
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item care" data-category="care">
	    					<img class="img-responsive center-block" src="assets/img/care1.jpg" alt="Image" />
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem ipsum dolor porro non delectus cupiditate a!
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item treatment" data-category="treatment">
	    					<img class="img-responsive center-block" src="assets/img/treatment2.jpg" alt="Image" />
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem ipsum dolor assumenda minima sapiente eius cum 
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item staff" data-category="staff">
	    					<img class="img-responsive center-block" src="assets/img/staff1.jpg" alt="Image" />
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<%--<div class="col-md-4 col-sm-6 col-xs-6 element-item care" data-category="care">
	    					<img class="img-responsive center-block" src="assets/img/care2.jpg" alt="Image" />
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem ipsum dolor sit natus beatae nobis temporibus sint
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item treatment" data-category="treatment">
	    					<img class="img-responsive center-block" src="assets/img/treatment1.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem ipsum aperiam ipsam voluptas ipsum dolor sit quam.
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item staff" data-category="staff">
	    					<img class="img-responsive center-block" src="assets/img/staff2.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem ipsum dolor sit amet, assumenda numquam tempora.
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item care" data-category="care">
	    					<img class="img-responsive center-block" src="assets/img/care3.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										 qui nihil ducimus nobis quidem sed a Sint, dolore.
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item treatment" data-category="treatment">
	    					<img class="img-responsive center-block" src="assets/img/treatment4.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem atque quas laboriosam eaque neque expedita nisi.
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item staff" data-category="staff">
	    					<img class="img-responsive center-block" src="assets/img/staff4.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Lorem ipsum dolor sit ametident, facere, tempore rem 
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item donation" data-category="donation">
	    					<img class="img-responsive center-block" src="assets/img/donation2.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										 repellat dicta. Debitis dignissimos inventore pariatur.
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item pharmacy" data-category="pharmacy">
	    					<img class="img-responsive center-block" src="assets/img/pharmacy1.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										 distnctio atque ipsum illo magnam error perspiciatis ab!
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item staff" data-category="staff">
	    					<img class="img-responsive center-block" src="assets/img/staff3.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Debitis aliquam, cupiditate error nihil iure doloribus. 
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item donation" data-category="donation">
	    					<img class="img-responsive center-block" src="assets/img/donation1.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										poris veniam dolores consequatur, quae dignissimos omnis.
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item pharmacy" data-category="pharmacy">
	    					<img class="img-responsive center-block" src="assets/img/pharmacy2.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										voluptates odit quos, odio fuga in consectetur.
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>
	    				<div class="col-md-4 col-sm-6 col-xs-6 element-item treatment" data-category="treatment">
	    					<img class="img-responsive center-block" src="assets/img/treatment3.jpg" alt="Image">
	    					<div class="item-desc hidden-xs">
								<div class="item-title">
									<h3>Lorem Ipsum</h3>
								</div>
								<div class="item-tags">
									<p>
										Eaque quos, veniam doloribus consectetur cum. Sunt 
									</p>
								</div>
							</div><!-- /.item-desc -->
	    				</div>--%>
	    			</div>	<!-- isotope -->
	    		</div>	<!-- row -->
			</div>
		</section>
    <%--<form id="form1" runat="server">
    
    </form>--%>


    <script src="../js/jquery.min.js"></script>
    <%--<script src="../js/owl.carousel.min.js"></script>--%>
    <script src="../js/isotope.pkgd.min.js"></script>
    <script src="../js/wow.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <%--<script src="../js/jquery.js"></script>--%>
    <script>
        new WOW().init();
		</script>

    
		<script>
		    $(function () {
		        // init Isotope
		        var $container = $('.isotope').isotope
			  	({
			  	    itemSelector: '.element-item',
			  	    layoutMode: 'fitRows'
			  	});


		        // bind filter button click
		        $('#filters').on('click', 'button', function () {
		            var filterValue = $(this).attr('data-filter');
		            // use filterFn if matches value
		            $container.isotope({ filter: filterValue });
		        });

		        // change is-checked class on buttons
		        $('.button-group').each(function (i, buttonGroup) {
		            var $buttonGroup = $(buttonGroup);
		            $buttonGroup.on('click', 'button', function () {
		                $buttonGroup.find('.is-checked').removeClass('is-checked');
		                $(this).addClass('is-checked');
		            });
		        });

		    });
		</script>
		

</body>
</html>
