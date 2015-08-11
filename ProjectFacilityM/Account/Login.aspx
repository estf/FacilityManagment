<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectFacilityM.Account.Login" %>

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
					        <li class="active"><a href="#">Home</a></li>
					        <li><a href="services.html">Services</a></li>
					        <li><a href="doctors.html">Doctors</a></li>
					        <li><a href="blog.html">Blog</a></li>
							<li><a href="faq.html">FAQs</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="contact.html">Contact Us</a></li>
				      	</ul>
				    </div><!-- navbar-collapse -->
				</div><!-- container-fluid -->
			</nav>
		</section>
    
    <!-- form of appointment -->
    <div class="contact-content">
    <section class="container" >
    <div class="col-md-4">
   	<div class= "appointment">
							
		                    <div class="header text-center">
		                       
		                       	<a href="#" class="number">
		                       		<i class="fa fa-phone fa-fw"></i>
									Login de usuario
		                       	</a>
		                       
		                    </div>

							<!-- form of appointment -->
							<div class="row">
								<form method="post" action="#" runat="server">
                                     
									<div class= "form">
										<div class="input-group margin-bottom-sm col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
										 	<asp:Label ID="lblUser" runat="server" Text="Usuario" For="Email"></asp:Label>
                                             <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" placeholder="Usuario" />
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." />
										</div>
										<div class="input-group margin-bottom-sm col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
										 	<asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
                                            <asp:TextBox ID="Password" runat="server"  class="form-control" type="text" TextMode="Password" placeholder="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="El campo contraseña es obligatorio." />
                        
                                        <%--     <input class="form-control" type="text" placeholder="Password *" />--%>
										</div>
										
									</div>
									
									<div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
										<asp:Button ID="btnLogin" runat="server" class="btn btn-primary" Text="Entrar" OnClick="LogIn" />
										<%--<input class="btn btn-primary send" type="submit" value="Entrar" />--%>
									</div>
								</form>
							</div>
							<!-- end of form -->
						</div><!-- end of appointment-->
				         <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>	<!-- end of form -->
   </div>
    </section>
    </div>
    
    <script src="../js/jquery.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/isotope.pkgd.min.js"></script>
    <script src="../js/wow.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.js"></script>
    <script>
        new WOW().init();
		</script>
    <script>
        $(document).ready(function () {
            $("#starting-slider").owlCarousel({
                autoPlay: 3000,
                navigation: false, // Show next and prev buttons
                slideSpeed: 700,
                paginationSpeed: 1000,
                singleItem: true
            });
        });
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
