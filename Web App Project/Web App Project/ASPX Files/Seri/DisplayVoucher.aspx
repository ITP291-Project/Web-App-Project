<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayVoucher.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.DisplayVoucher" %>

<asp:Content ID="RewardsBody" ContentPlaceHolderID="body" runat="server">
    <link href="RewardsStyle.css" rel="Stylesheet" type="text/css" />
    <div class="jumbotron hiddenJumbo">
        <h1>Voucher Details</h1>
    </div>
    <div class="UsePoints align-center Center">
        <h2 runat="server" id="VoucherName" class="align-center">Voucher</h2>
        <h4 runat="server" id="VoucherCost" class="align-center">Cost</h4>
        <img runat="server" id="VoucherImage" src="Images/BookStoreVoucher.png" style="background-color:transparent;" />
        <h3>Terms and Conditions</h3>
        <ul style="text-align:left;list-style-type:circle; color: white;display:inline-block; margin:auto;">
            <li id="ValidAt" runat="server">Valid at all book stores</li>
            <li>Voucher is in Singapore currency & is not exchangeable for cash or refund</li>
            <li>Any unused balance will be forfeited</li>
            <li>Voucher cannot be replaced if lost, torn or damaged</li>
            <li>Voucher will be deemed void if tampered with or if the serial number is defaced</li>
        </ul>
    </div>
    <div class="align-center" style="margin: 20px;">
        <asp:Button CssClass="Dashbtn btn-skin" ID="ReturnBtn" runat="server" Text="Return to Vouchers" ForeColor="Black" Height="80px" Width="240px" OnClick="ReturnBtn_Click"/>
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

