﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bossDash.aspx.cs" Inherits="Web_App_Project.bossDash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <asp:Button ID="Button1" runat="server" Text="Approved Reports" ForeColor="Black" Height="109px" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Pending Reports" ForeColor="Black" Height="108px" />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Rejected Reports" ForeColor="Black" Height="105px" />
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Text="New Applicants" ForeColor="Black" Height="105px" />
                <br />
                <br />
                <asp:Button ID="Button5" runat="server" Text="Volunteer Roster" ForeColor="Black" Height="102px" />
                <br />
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
<div class="container">

    <div class="row">
        <div class="col-lg-8 col-md-offset-2">
           
        
				
            </div><br /><br />
			<div class="text-center">
					<p class="lead"><i class="fa fa-phone"></i> Call me maybe</p>
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
</asp:Content>
