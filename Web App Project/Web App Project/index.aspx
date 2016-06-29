<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="preview_dotnet_templates_the_big_picture_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">

    <title>Voices of Singapore - Making our voices heard</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/the-big-picture.css" rel="stylesheet">
    <link href="css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />

    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- ============ Recaptcha Script ======== -->
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>


<body id="hme">
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <a class="navbar-brand" href="#">Voices of Singapore</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="page-scroll" href="#hme">Home</a> </li>
                    <li><a class="page-scroll" href="#services">Services</a> </li>
                    <li><a class="page-scroll" href="#intro">About Us</a> </li>
                    <li><a class="page-scroll" href="#contact">Join Us</a> </li>
                    <li><a class="page-scroll" href="ASPX Files/Joanne/login.aspx">Login</a> </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Login -->
    <!-- Start Carousel Main Slider -->
    <section class="carousel carousel-fade slide home-slider" id="fullslider" data-ride="carousel"
        data-interval="4500" data-pause="false"> 
    <!-- Carousel-Indicators -->
	<ol class="carousel-indicators"> 
		<li data-target="#fullslider" data-slide-to="0" class="active"></li>
		<li data-target="#fullslider" data-slide-to="1" class=""></li>		
        <li data-target="#fullslider" data-slide-to="2" class=""></li>		
        <li data-target="#fullslider" data-slide-to="3" class=""></li>	    	
	</ol>
    <!-- Carousel-Inner -->
	<div class="carousel-inner"> 
		<div class="item active bg1">

<!-- IMAGE SLIDER - FIRST SLIDE -->
         <div class="banner-overlay">
         <!-- Slide - 1 -->
			<div class="container">
				<div class="row">			
					<div class="col-md-6 col-sm-8 col-xs-12 animated notranstion">						
						<br class="hidden-sm hidden-xs"/>
						<div class="wow" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <h1 class="carouselText1 text-left wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="150ms">Voices of Singapore</h1>
						  <p class="wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="200ms">
                             "Alone, we can do so little, together we can do so much."
                          </p>
                            <br/>
                           <div class="text-left buttonleft hidden-xs">
                           <a href="#contact" class="btn btn-lg btn-borderwhite wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="1200ms">Get Started</a> 
                           </div>
                      </div>						
					</div>
                    <div class="col-md-6 col-sm-4 hidden-xs animated">                                      
							<img src="img/slider/Icon_BlueHand_RedHeart.png" alt="" class="slide1-1 wow  fadeInRight"/>
					</div>
				</div>
			</div>
            </div>
            </div><!-- End Slide - 1 -->

<!-- IMAGE SLIDER - SECOND SLIDE -->
		<div class="item bg2">
          <div class="banner-overlay">
         <!-- Slide - 2 -->
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-4 hidden-xs animated">                                      
						<img src="img/slider/hands.png" alt="" class="slide1-2 wow fadeInLeft img-responsive"/>
					</div>
					<div class="col-md-6 col-sm-8 col-xs-12 animated text-right">	
                         <br class="hidden-sm hidden-xs" />					
					    <h3 class="carouselText2 wow fadeInDown" data-wow-duration="600ms" data-wow-delay="100ms">
                         Volunteering is our passion
                        </h3>
                    	<br />
						<div class="car-highlight1 wow fadeInUp text-left" data-wow-duration="300ms" data-wow-delay="0ms">
						 Many organisations to work with
						</div>
						<br/>
						<div class="car-highlight2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="150ms">
						 Flexible schedule
						</div>
						<br/>
						<div class="car-highlight3 wow fadeInUp" data-wow-duration="1800ms" data-wow-delay="300ms">
						 Centralised portal for reports and schedule retrieval
						</div>                       
					</div>
				</div>
			</div>
            </div>
		</div> <!-- End Slide - 2 -->

<!-- IMAGE SLIDER - THIRD SLIDE -->

		<div class="item bg3">
          <div class="banner-overlay">
         <!-- Slide - 3 -->
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center animated">      
                    <h1 class="carouselText1 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="150ms">What do you gain?</h1>
                       <ul class="list-unstyled car-mediumtext2">                        
                        <li>
                        <h3 class="car-highlight1 wow fadeInDown" data-wow-duration="1200ms" data-wow-delay="300ms">
                        Knowing that you have made someone's life better
                        </h3>
                        </li>
                        <li>
                        <h3 class="car-highlight2 hidden-xs wow fadeInDown" data-wow-duration="1800ms" data-wow-delay="600ms">
                        Good friends as you bond with your fellow volunteers
                        </h3>
                        </li>                       
                        <li>
                        <h3 class="car-highlight3 wow fadeInDown" data-wow-duration="2400ms" data-wow-delay="900ms">
                        Good karma
                        </h3>
                        </li>
                       </ul>
					</div>					
				</div>
			</div>
            </div>
		</div> <!-- End Slide - 3 -->

<!-- IMAGE SLIDER - FOURTH SLIDE -->

       <div class="item bg4"> <!-- Slide - 4 -->
         <div class="banner-overlay">
          <div class="container">
				<div class="row">
                    <div class="col-md-6 col-sm-4  hidden-xs animated">                                      
						<img src="img/slider/slide1-1.png" alt="" class="slide1-2 wow fadeInLeft img-responsive"/>
					</div>
                    <div class="col-md-6 col-sm-8 col-xs-12 animated">					
						<div class="wow" data-wow-duration="1500ms" data-wow-delay="100ms">
                         <br />
							<h1 class="carouselText1 col-gapall wow zoomIn" data-wow-duration="1500ms" data-wow-delay="500ms">We have a great corperate team!</h1>
							<br />
                            <ul class="list-unstyled car-mediumtext">
                            <li class="wow fadeInRight" data-wow-duration="1500ms" data-wow-delay="100ms"><i class="fa fa-check-square wow fadeInDown" data-wow-duration="1500ms" data-wow-delay="100ms"></i>Our IT team ensures the portal is always up to let you submit reports</li>
                            <li class="wow fadeInRight" data-wow-duration="1500ms" data-wow-delay="500ms"><i class="fa fa-check-square wow fadeInDown" data-wow-duration="1500ms" data-wow-delay="100ms"></i>
                             Our leader is an extremely active volunteer and sometimes helps on site too!
                            </li>
                            <li class="wow fadeInRight" data-wow-duration="1500ms" data-wow-delay="1000ms"><i class="fa fa-check-square wow fadeInDown" data-wow-duration="1500ms" data-wow-delay="100ms"></i>
                             Always your listening ear to your problems!
                            </li>
                            </ul>
                            <br />                         
						</div>						
					</div>		
                </div>
           </div>
           </div>
        </div> <!-- End Slide - 4 -->		 

	</div>
	<!-- End Carousel-Inner -->
    <!-- Carousel - Control -->
	<a class="left carousel-control animated fadeInLeft" href="#fullslider" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
	<a class="right carousel-control animated fadeInRight" href="#fullslider" data-slide="next"><i class="fa fa-chevron-right"></i></a>	
    </section>
    <!--  End Carousel Main Slider  -->

    <!-- services section -->
    <section id="services" class="services service-section">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-6 services"> <span class="icon icon-strategy"></span>
        <div class="services-content">
          <h5>What are we?</h5>
          <p> We are a volunteering group dedicated to helping elderly people be noticed in our fast paced society today.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services"> <span class="icon icon-briefcase"></span>
        <div class="services-content">
          <h5>How do we do it?</h5>
          <p> We have a group of volunteers that will visit old folks to help bring them up to speed on the current affairs happening today.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services"> <span class="icon icon-tools"></span>
        <div class="services-content">
          <h5>Getting started</h5>
          <p> It&#39;s simple! Just click sign up to apply to be a volunteer today!</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services"> <span class="icon icon-genius"></span>
        <div class="services-content">
          <h5>Contact Info</h5>
            <ul style="box-sizing: border-box; margin: 0px 0px 1.625rem; font-variant: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: 0px; padding: 0px; vertical-align: baseline; list-style: none; color: rgb(102, 102, 102); font-family: Lora, georgia, serif; font-size: 18px; font-style: italic; font-weight: 500; letter-spacing: 0.16px; line-height: 28px; background-color: rgb(255, 255, 255);">
                <li style="box-sizing: border-box; border: 0px; margin: 0px 0px 0px 2.5rem; padding: 0px; vertical-align: baseline; line-height: 1.625; list-style-type: disc;"><strong style="box-sizing: border-box; font-weight: bold; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Business Name:</strong>&nbsp;Joanne Volunteering Pte Ltd</li>
                <li style="box-sizing: border-box; border: 0px; margin: 0px 0px 0px 2.5rem; padding: 0px; vertical-align: baseline; line-height: 1.625; list-style-type: disc;"><strong style="box-sizing: border-box; font-weight: bold; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Business Address:</strong>&nbsp;153 Upper Serangoon Avenue, Singapore</li>
                <li style="box-sizing: border-box; border: 0px; margin: 0px 0px 0px 2.5rem; padding: 0px; vertical-align: baseline; line-height: 1.625; list-style-type: disc;"><strong style="box-sizing: border-box; font-weight: bold; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Email:</strong>&nbsp;Joanne@JVolunteering.com</li>
                <li style="box-sizing: border-box; border: 0px; margin: 0px 0px 0px 2.5rem; padding: 0px; vertical-align: baseline; line-height: 1.625; list-style-type: disc;"><strong style="box-sizing: border-box; font-weight: bold; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Tel:</strong>&nbsp;555-777-9999</li>
            </ul>
          <p> &nbsp;</p>
        </div>
      </div>
    </div>
  </div>
</section>
    <!-- services section -->

    <!-- about section -->
    <section id="intro" class="section intro no-padding">
  <div class="container-fluid">
    <div class="row no-gutter">
    </div>
  </div>
</section>
    <!-- about section -->
    <!-- Work -->
    <!-- works -->
    <div id="work" class="works">
        <div class="row">
            <div class="col-sm-5 wowload fadeInLeft">
                <div class="spacer1">
                    <h2>
                        Who are we?</h2>
                    <ul>
                        <li><i class="fa fa-check"></i>We are the Voices of Singapore organisation, working with a few volunteer organisations.</li>
                        <li><i class="fa fa-check"></i>Make volunteering a happier thing to do</li>
                        <li><i class="fa fa-check"></i>Changing people's lives for the better</li>
                        <li><i class="fa fa-check"></i>One-stop place for all-round volunteering services</li>
                        <li><i class="fa fa-check"></i>A platform for convenient report submission</li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-7 wowload fadeInRight">
                <div id="carousel-works" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="img/slider/image1.jpg" class="img-responsive"><a href="#" class="view"><i
                                class="fa fa-external-link"></i> View</a></div>
                        <div class="item">
                            <img src="img/slider/image2.jpg" class="img-responsive"><a href="#" class="view"><i
                                class="fa fa-external-link"></i> View</a></div>
                        <div class="item">
                            <img src="img/slider/image3.jpg" class="img-responsive"><a href="#" class="view"><i
                                class="fa fa-external-link"></i> View</a></div>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-works" role="button" data-slide="prev">
                        <i class="fa fa-3x fa-angle-left"></i></a><a class="right carousel-control" href="#carousel-works"
                            role="button" data-slide="next"><i class="fa fa-3x fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- works -->
    <div id="review" class="section" data-section="services">
        <div class="container">
            <div class="row">
                <div class="col-md-12 section-heading text-center padding-bottom70">
                    <h2>
                        Our Partners
                    </h2>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h3>
                               Our partners are non-profit organisations and they require
                               helping hands from us to make the world a better place. 
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="box">
                        <div class="icon colored-1">
                            <span><img src="img/PGA.jpg" /></span>
                        </div>
                        <!--<h3> Pioneer Generation Ambassador
                        </h3>-->
                        <p>
                           Join us, as an Ambassador to help the Pioneers 
                           understand the Pioneer Generation Package!
                        </p>

                    </div>
                    <div class="box ">
                        <div class="icon colored-4">
                            <span><img src="img/SPCA.jpg"></img></span>
                        </div>
                        <!--<h3>
                            SPCA
                        </h3>-->
                        <p>
                           We rely on a community of passionate volunteers, committed to helping us advocate the animal welfare cause.
                           If you have a passion for animals and would like to help in a tangible way, we want you! 
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box ">
                        <div class="icon colored-2">
                            <span><img src="img/Salvation.jpg"></img><br /></span>
                        </div>
                        <!--<h3>
                            The Salvation Army
                        </h3>-->
                        <p>
                           At The Salvation Army, volunteers play an active role in caring and enriching the lives of the children, 
                           youths, elderly and families we serve. You can support an existing programme, or initiate a project to bless our beneficiaries!
                        </p>
                    </div>
                    <div class="box ">
                        <div class="icon colored-5">
                            <span><!--<img src="img/TOUCH.png"></img>--></span>
                        </div>
                        <!--<h3>
                            TOUCH Home Care
                       </h3>-->
                        <p>
                           TOUCH Home Care (THC) is the first home care agency in Singapore to provide integrated and 
                           holistic home-based services that support the frail and homebound elderly and their caregivers. 
                           At THC, our goal is to help the frail elderly enjoy greater independence and better quality of life at home.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box ">
                        <div class="icon colored-3">
                            <span><img src="img/RenCi.jpg"></img></span>
                        </div>
                        <!--<h3>
                            Ren Ci
                        </h3>-->
                        <p>
                           If you are looking for a volunteer opportunity to serve and care for the elderly, Ren Ci offers 
                           you the platform to complement our delivery of holistic care and experience the feeling of 
                           touching the lives of the seniors through a warm smile, a listening ear or simply ever-ready hands to help.
                        </p>
                    </div>
                    <div class="box ">
                        <div class="icon colored-6">
                            <span><img src="img/RedCross.png"></img></span>
                        </div>
                        <!--<h3>Singapore Red Cross</h3>-->
                        <p>
                           Volunteering is more than helping to improve and impact the lives of the needy. 
                           It is also about bringing some much needed cheer and relief to them. 
                           It is through the time and care of ordinary and altruistic people like you that we can do extraordinary things!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- work section -->
    <section id="works" class="works section no-padding">
  <div class="container-fluid">
    <div class="row no-gutter">
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-1.jpg" class="work-box"> <img src="img/work-1.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-2.jpg" class="work-box"> <img src="img/work-2.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-3.jpg" class="work-box"> <img src="img/work-3.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-4.jpg" class="work-box"> <img src="img/work-4.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-5.jpg" class="work-box"> <img src="img/work-5.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-6.jpg" class="work-box"> <img src="img/work-6.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-7.jpg" class="work-box"> <img src="img/work-7.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-8.jpg" class="work-box"> <img src="img/work-8.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-9.jpg" class="work-box"> <img src="img/work-9.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-10.jpg" class="work-box"> <img src="img/work-10.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-11.jpg" class="work-box"> <img src="img/work-11.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-2 col-md-4 col-sm-4 work"> <a href="img/work-12.jpg" class="work-box"> <img src="img/work-12.jpg" alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
    </div>
  </div>
</section>
    <!-- work section -->
    <!-- our team section -->
    <section id="teams" class="section teams">
  <div class="container">
    <div class="row"> 
    <div class="col-md-12 section-heading text-center padding-bottom70">
                    <h2>
                        Our Team</h2>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h3>
                                Bootstrap includes HTML and CSS based design templates
                            for typography, forms, buttons, tables, navigation, modals</h3>
                        </div>
                    </div>
                </div>
      <!-- team member 1 -->
      <div class="col-md-4 col-sm-8">
        <div class="person"> <img src="img/team-1.png" alt="" class="img-responsive">
          <div class="person-content">
            <h4>Johnathan Doe</h4>
            <h5 class="role">The Mastermind</h5>
            <p>Bootstrap includes HTML and CSS based design templates
                            for typography, forms, buttons, tables, navigation. </p>
          </div>
          <ul class="social-icons clearfix">
            <li><a href="#"><span class="fa fa-facebook"></span></a></li>
            <li><a href="#"><span class="fa fa-twitter"></span></a></li>
            <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
            <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
            <li><a href="#"><span class="fa fa-dribbble"></span></a></li>
          </ul>
        </div>
      </div>
      <!-- team member 1 --> 
      <!-- team member 2 -->
      <div class="col-md-4 col-sm-8">
        <div class="person"> <img src="img/team-2.png" alt="" class="img-responsive">
          <div class="person-content">
            <h4>Lisa Brown</h4>
            <h5 class="role">Creative head</h5>
            <p>Bootstrap includes HTML and CSS based design templates
                            for typography, forms, buttons, tables, navigation.</p>
          </div>
          <ul class="social-icons clearfix">
            <li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
          </ul>
        </div>
      </div>
      <!-- team member 2 --> 
      <!-- team member 3 -->
      <div class="col-md-4 col-sm-8">
        <div class="person"> <img src="img/team-3.png" alt="" class="img-responsive">
          <div class="person-content">
            <h4>Mike Collins</h4>
            <h5 class="role">Technical lead</h5>
            <p>Bootstrap includes HTML and CSS based design templates
                            for typography, forms, buttons, tables, navigation.</p>
          </div>
          <ul class="social-icons clearfix">
            <li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-linkedin"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
            <li><a href="#" class=""><span class="fa fa-dribbble"></span></a></li>
          </ul>
        </div>
      </div>
      <!-- team member 1 --> 
    </div>
  </div>
</section>
    <!-- our team section -->
    <!-- Testimonials section -->
    <section id="testimonials" class="section testimonials no-padding">
  <div class="container-fluid">
    <div class="row no-gutter">
      <div class="flexslider">
        <ul class="slides">
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>"Many users already have downloaded Bootstrap from MaxCDN when visiting another site. As a result, it will be loaded from cache when they visit your site, which leads to faster loading time. Also, most CDN's will make sure that once a user requests a file from it, it will be served from the server closest to them, which also leads to faster loading time." </h1>
                <p>Bootstrap includes HTML and CSS based design templates
                            </p>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>"Bootstrap 3 is designed to be responsive to mobile devices. Mobile-first styles are part of the core framework.

To ensure proper rendering and touch zooming, add the following <meta> tag inside the <head> element:" </h1>
                <p>One advantage of using the Bootstrap CDN</p>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>"Bootstrap uses HTML elements and CSS properties that require the HTML5 doctype.

Always include the HTML5 doctype at the beginning of the page, along with the lang attribute and the correct character" </h1>
                <p>Add the HTML5 doctype</p>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>"The following example shows the code for a basic Bootstrap page (with a responsive fixed width container):The following example shows the code for a basic Bootstrap page (with a full width container)" </h1>
                <p>Two Basic Bootstrap Pages</p>
              </blockquote>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
    <!-- Testimonials section -->
    <!-- Get a quote section -->
    <section id="contacts" class="section quote">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 text-center">
      <h3>Looking for a new brand? Let's work together!</h3>
      <a href="#" class="btn btn-large btn-border">Get Quotation</a> </div>
  </div>
</section>
    <!-- Get a quote section -->
    <div class="content-last">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <!-- Heading and para -->
                    <div class="block-heading-two">
                        <h3>
                            <span>Why Choose Us?</span></h3>
                    </div>
                    <p>
                        Bootstrap is completely free to download! Bootstrap Text Bootstrap Tables.... Bootstrap
                        Button Groups Total Control Bootstrap allows you to group a series of buttons together
                        (on a single line) in a button group. group a series of buttons together (on a single
                        line) in a button group.
                        <br>
                        <br>
                        Bootstrap is completely free to download! Bootstrap Text Bootstrap Tables.... Bootstrap
                        Button Groups</p>
                    <p>
                        Bootstrap is completely free to download! Bootstrap Text Bootstrap Tables.... Bootstrap
                        Button Groups Total Control Bootstrap allows you to group a series of buttons together
                        (on a single line) in a button group. group a series of buttons together (on a single
                        line) in a button group.</p>
                </div>
                <div class="col-md-4">
                    <div class="block-heading-two">
                        <h3>
                            <span>Our Solution</span></h3>
                    </div>
                    <!-- Accordion starts -->
                    <div class="panel-group" id="accordion-alt3">
                        <!-- Panel. Use "panel-XXX" class for different colors. Replace "XXX" with color. -->
                        <div class="panel">
                            <!-- Panel heading -->
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseOne-alt3"><i
                                        class="fa fa-angle-right"></i>Accordion Heading Text Item # 1 </a>
                                </h4>
                            </div>
                            <div id="collapseOne-alt3" class="panel-collapse collapse">
                                <!-- Panel body -->
                                <div class="panel-body">
                                    Bootstrap is completely free to download! Bootstrap Text Bootstrap Tables.... Bootstrap
                                    Button Groups Total Control Bootstrap allows you to group a series of buttons together
                                    (on a single line) in a button group. group a series of buttons together (on a single
                                    
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseTwo-alt3"><i
                                        class="fa fa-angle-right"></i>Accordion Heading Text Item # 2 </a>
                                </h4>
                            </div>
                            <div id="collapseTwo-alt3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Bootstrap is completely free to download! Bootstrap Text Bootstrap Tables.... Bootstrap
                                    Button Groups Total Control Bootstrap allows you to group a series of buttons together
                                    (on a single line) in a button group. group a series of buttons together (on a single
                                  
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseThree-alt3"><i
                                        class="fa fa-angle-right"></i>Accordion Heading Text Item # 3 </a>
                                </h4>
                            </div>
                            <div id="collapseThree-alt3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Bootstrap is completely free to download! Bootstrap Text Bootstrap Tables.... Bootstrap
                                    Button Groups Total Control Bootstrap allows you to group a series of buttons together
                                    (on a single line) in a button group. group a series of buttons together (on a single
                                    
                                </div>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseFour-alt3"><i
                                        class="fa fa-angle-right"></i>Accordion Heading Text Item # 4 </a>
                                </h4>
                            </div>
                            <div id="collapseFour-alt3" class="panel-collapse collapse">
                                <div class="panel-body">
                                   Bootstrap is completely free to download! Bootstrap Text Bootstrap Tables.... Bootstrap
                                    Button Groups Total Control Bootstrap allows you to group a series of buttons together
                                    (on a single line) in a button group. group a series of buttons together (on a single
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Accordion ends -->
                </div>
            </div>
        </div>
    </div>
    <!-- Section: contact -->
    <section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-offset-2">
					
					<div class="section-heading">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<h2>Interested to volunteer yet?</h2>
					</div>
					<p class="wow lightSpeedIn" data-wow-delay="0.3s">There's no age limit for volunteering, the only thing you need is an empathetic heart. Join us today
                    a difference in someone's life. Let us know more about you, because we care for you as a big volunteering family. </p>
					</div>
					
				</div>
			</div>
			</div>
		</div>
		<div class="container">

    <div class="row">
        <div class="col-lg-8 col-md-offset-2">
            <div class="form-wrapper marginbot-50">
                <form id="contact-form">
                <div class="row">
    
                       <div class="form-group">
                           <p align="left">First Name</p>
                            <label for="name">
                                First Name</label>
                            <input type="text" class="form-control" id="fName" placeholder="First Name" required="required" />
                        </div>

                        <div class="form-group">
                            <p align="left">Last Name</p>
                            <label for="name">
                                Last Name</label>
                            <input type="text" class="form-control" id="lName" placeholder="Last Name" required="required" />
                        </div>

                         <div class="form-group">
                            <p align="left">Gender</p>
                            <label for="gender">Gender</label>
                            <asp:RadioButtonList ID="rblMeasurementSystem" runat="server">
                                <asp:ListItem Text="Female" Value="Female" />
                                <asp:ListItem Text="Male" Value="Male" />
                            </asp:RadioButtonList>
                        </div>

                         <div class="form-group">
                             <p align="left">NRIC</p>
                            <label for="nric">
                                NRIC</label>
                            <input type="text" class="form-control" id="nric" placeholder="NRIC" required="required" />
                        </div>
                    
                         <div class="form-group">
                             <p align="left">Birthdate (DD-MM-YYYY)</p>
                            <label for="bDay">
                                DD</label>
                            <input type="text" class="form-control" id="bday" placeholder="DD" required="required" />

                             <label for="bMonth">
                                MM</label>
                            <input type="text" class="form-control" id="bmonth" placeholder="MM" required="required" />

                             <label for="bYear">
                                YYYY</label>
                            <input type="text" class="form-control" id="byear" placeholder="YYYY" required="required" />
                        </div>
                            
                       

                        <div class="form-group">
                            <p align="left">E-Mail Address</p>
                            <label for="email">
                                Email Address</label>
                                <input type="email" class="form-control" id="email" placeholder="Email" required="required" />
                        </div>

                        <div class="form-group">
                            <p align="left">Occupation</p>
                            <label for="occupation">
                                Occupation</label>
                            <input type="text" class="form-control" id="occupation" placeholder="Occupation" required="required" />
                        </div>
                        
                        <div class="form-group">
                            <p align="left">Mailing Address</p>
                            <label for="addr1">
                                Mailing Address 1</label>
                            <input type="text" class="form-control" id="mailAddr1" placeholder="Mailing Address 1" required="required" />
                        </div>

                        <div class="form-group">
                            <label for="addr2">
                                Mailing Address 2</label>
                            <input type="text" class="form-control" id="mailAddr2" placeholder="Mailing Address 2" required="required" />
                        </div>

                        <div class="form-group">
                            <p align="left">Salutation</p>
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Salutation</option>
                                <option value="service">Mr.</option>
                                <option value="suggestions">Ms.</option>
                                <option value="product">Miss.</option>
                                <option value="product">Mdm.</option>
                                <option value="product">Mrs.</option>
                                <option value="product">Dr.</option>
                                <option value="product">Miss.</option>
                            </select>
                        </div>
         

                        <div class="g-recaptcha" data-sitekey="6LfDciITAAAAADVnhLVRo-teYVKzy6JCRX2xfcwV" style="text-align: center;"></div>
       
           
                        <button type="submit" class="btn btn-skin btn-block" id="btnContactUs">
                            Sign Up!</button>
       
                </div>
                </form>
				
            </div><br /><br />
			<div class="text-center">
					<p class="lead"><i class="fa fa-phone"></i> Contact Us</p>
                    <p><a href="#">Write a message to us</a></p>
			</div>
        </div>

    </div>	

		</div>
	</section>
    <!-- /Section: contact -->
    <!-- Footer section -->
    <footer class="footer">
  <div class="footer-top section-tb">
    <div class="container">
      <div class="row">
        <div class="footer-col col-md-4">
          <h5>Our Office Location</h5>
          <p>Upper Serangoon Avenue 3</p>
            <p>Singapore 123456</p>
          <p>Copyright © 2015 Joanne Volunteering Inc. All Rights Reserved.</p>
        </div>
        <div class="footer-col col-md-3">
          <h5>Partner Websites</h5>
          <p>
          <ul>
            <li><a href="https://www.pioneers.sg/en-sg/Pages/Home.aspx">Pioneer Generation</a></li>
            <li><a href="http://www.salvationarmy.org/singapore">Salvation Army Singapore</a></li>
            <li><a href="http://www.renci.org.sg/volunteers/">Ren Ci</a></li>
            <li><a href="http://www.spca.org.sg/">Society for the Prevention of Cruelty to Animals, Singapore (SPCA)</a></li>
            <li><a href="http://www.touch.org.sg/our-services/elderly-services/touch-home-care">TOUCH Home Care</a></li>
            <li><a href="https://www.redcross.sg/">Singapore Red Cross</a></li>
          </ul>
          </p>
        </div>
        <div class="footer-col col-md-3">
          <h5>Like us Share us</h5>
          <ul class="footer-share">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
          </ul>
        </div>
         <div class="footer-col col-md-2">
          <h5>Follow</h5>
          <ul class="footer-share">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>
  <!-- footer top --> 
  
    <!-- Footer section -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.easing.min.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js"></script>
    <script src="js/jquery.fancybox.pack.js"></script>
    <script src="js/wow.js" type="text/javascript"></script>
    <script src="js/retina.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
        //WOW Scroll Spy
        var wow = new WOW({
            //disabled for mobile
            mobile: false
        });
        wow.init();
    </script>
    </form>
</body>
</html>