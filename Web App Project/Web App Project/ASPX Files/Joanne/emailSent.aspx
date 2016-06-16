<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="emailSent.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.confirmEmailaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <head>
        <title>Email Link Sent</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <h2 style="margin-left: 200px">Email Link Sent.</h2>
        <h4 style="margin-left: 200px; color: white">Please check your email. </h4>
    </body>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
    <footer class="footerDash">
  <div class="footer-top section-tb">
      <div class="row">
        <div class="footer-col col-md-4">
          <h5>Our Office Location</h5>
          <p>Upper Serangoon Avenue 3</p>
            <p>Singapore 123456</p>
          <p>Copyright © 2015 Joanne Volunteering Inc. All Rights Reserved.</p>
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
</footer>
</asp:Content>
