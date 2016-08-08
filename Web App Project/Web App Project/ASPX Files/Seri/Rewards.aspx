<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rewards.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.Rewards" %>

<asp:Content ID="RewardsBody" ContentPlaceHolderID="body" runat="server">
    <link href="RewardsStyle.css" rel="Stylesheet" type="text/css" />
    <div class="jumbotron hiddenJumbo" >
        <h1 runat="server" id="WelcomeHeading">Welcome, Please Login</h1>
        <h3 runat="server" id="UsersPoints"/>
    </div>
    <div class="UsePoints Center">
        <h2 class="align-center">Claim your Points!</h2>
        <img src="Images/ChoicesImage.png" class="Center" style="background-color:transparent" />
        <asp:Button CssClass="Dashbtn btn-skin" style="float:left" ID="ClaimBtn" runat="server" Text="Claim Vouchers" ForeColor="Black" Height="100px" Width="300px" OnClick="ShowChooseVouchers" />
        <asp:Button CssClass="Dashbtn btn-skin" style="float:right" ID="WithdrawBtn" runat="server" Text="Withdraw to Paypal" ForeColor="Black" Height="100px" Width="300px" OnClick="ShowPaypalWithdraw" />
        <div style="text-align:center;">
            <asp:Button CssClass="Dashbtn btn-skin" style="margin-top: 20px" ID="HistoryBtn" runat="server" Text="View Voucher History" ForeColor="Black" Height="100px" Width="300px" OnClick="ViewVoucherHistory" />
        </div>
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
