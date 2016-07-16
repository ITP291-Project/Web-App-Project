<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PayPalLogin.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.PayPalLogin" %>

<asp:Content ID="RewardsHead" ContentPlaceHolderID="head" runat="server">
    <link href="RewardsStyle.css" rel="Stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="RewardsBody" ContentPlaceHolderID="body" runat="server">
    <div class="jumbotron hiddenJumbo">
        <h1 id="WelcomeHeading">PayPal Withdraw</h1>
    </div>
    <div class="UsePoints Center align-center">
        <h2 runat="server" id="CurrentPoints"/>
        <h3 runat="server" id="TotalCash"/>
        <img src="Images/PayPalLogo.png" width="600" class="Center" style="background-color:transparent" />
        <asp:Button CssClass="Dashbtn btn-skin" ID="ReturnBtn" runat="server" Text="Return to Rewards" ForeColor="Black" Height="80px" Width="240px" OnClick="ReturnRewards"/>
        <asp:Button CssClass="Dashbtn btn-skin" ID="WithdrawBtn" runat="server" Text="Withdraw To PayPal" ForeColor="Black" Height="80px" Width="240px" onclick="GotoPayPal" OnClientClick="return false;"/>
    </div>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
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
</asp:Content>
