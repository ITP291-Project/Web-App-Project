﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="preview_dotnet_templates_the_big_picture_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="full" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="aspxtemplates">
    <title>Voices of Singapore - Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/the-big-picture.css" rel="stylesheet">
    <link href="css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />

    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>


<body>
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Voices of Singapore</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.aspx">Home</a> </li>
                    <li><a href="index.aspx#products">Products</a> </li>
                    <li><a href="index.aspx#about-us">About Us</a> </li>
                    <li><a href="index.aspx#contact">Contact Us</a> </li>
                    <li>
                        <li class="active"><a class="active" href="login.aspx">Login</a> </li>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <!-- Dash Body -->
    <div id="main">
       <div id="content">SCHEDULE TO BE PLACED HERE</div>
       <div id="right">
           <asp:Button ID="Button1" runat="server" Height="105px" Text="Rewards" Width="265px" />
           <br />
           <br />
           <asp:Button ID="Button2" runat="server" Height="105px" Text="Write New Report" Width="265px" />
        </div>
       <div style="clear:both"></div>
    </div> 
				
    
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js"></script>
    <script src="js/jquery.fancybox.pack.js"></script>
    <script src="js/retina.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/main.js"></script>
    </form>
</body>

<footer class="footer">
  <div class="footer-top section-tb">
    <div class="container">
      <div class="row">
        <div class="footer-col col-md-4">
          <h5>Our Office Location</h5>
          <p>Metro Railway Delhi 10042 India.<br>
            4512 0123 145689 / 9986523471<br>
            123@aspxtemplates.com</p>
          <p>Copyright © 2015 Delhi Inc. All Rights Reserved.<a href="http://www.aspxtemplates.com"> aspxtemplates.com</a></p>
        </div>
        <div class="footer-col col-md-3">
          <h5>Services We Offer</h5>
          <p>
          <ul>
            <li><a href="#">Digital Strategy</a></li>
            <li><a href="#">Websites</a></li>
            <li><a href="#">Videography</a></li>
            <li><a href="#">Social Media</a></li>
            <li><a href="#">User Experience</a></li>
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
  <!-- footer top --> 
  
</footer>
</html>