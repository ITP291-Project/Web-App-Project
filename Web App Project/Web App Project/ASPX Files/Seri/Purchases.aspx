<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Purchases.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.Purchases" %>
<asp:Content ID="PurchasesHead" ContentPlaceHolderID="head" runat="server">
    <link href="RewardsStyle.css" rel="Stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="PurchasesBody" ContentPlaceHolderID="body" runat="server">
    <div class="jumbotron hiddenJumbo" style="height:150px">
        <h1 runat="server" id="WelcomeHeading">Your Purchases</h1>
    </div>
    <div class="align-center">
        <div class="CheckoutBorder">
            <asp:GridView ID="CheckoutGrid" CssClass="CheckoutGrid" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="10" CellSpacing="50">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Voucher Name" />
                    <asp:BoundField DataField="Cost" HeaderText="Item Cost" />
                    <asp:BoundField DataField="Amount" HeaderText="Quantity" />
                    <asp:BoundField DataField="Date" HeaderText="Purchase Date" />
                    <asp:BoundField DataField="VoucherCode" HeaderText="Voucher Code" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <div class="align-center" style="margin: 20px;">
        <div id="CurrentCart" runat="server">

        </div>
        <asp:Button CssClass="Dashbtn btn-skin" ID="ReturnBtn" runat="server" Text="Return to Vouchers" ForeColor="Black" Height="80px" Width="240px" OnClick="ReturnBtn_Click"/>
    </div>
</asp:Content>

<asp:Content ID="PurchasesFooter" ContentPlaceHolderID="footer" runat="server">
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
