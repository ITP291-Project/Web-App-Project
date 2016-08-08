<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChoiceOfVouchers.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.ChoiceOfVouchers" %>

<asp:Content ID="ChoiceBody" ContentPlaceHolderID="body" runat="server">
    <link href="RewardsStyle.css" rel="Stylesheet" type="text/css" />
    <div class="jumbotron hiddenJumbo" style="height:200px">
        <h1 runat="server" id="WelcomeHeading">Select a Voucher</h1>
        <div id="CurrentCart" class="CurrentCart" runat="server">
            <h4 class="CartHeading" id="CurrentItems" runat="server">Items in Cart: 0</h4>
            <h4 class="CartHeading" id="CurrentCost" runat="server">Total Cart Cost: 0 Points</h4>
            <h4 class="CartHeading" id="CurrentBalance" runat="server">Current Balance: 0 Points</h4>
        </div>
    </div>
    <div class="align-center">
        <asp:DataList CssClass="VoucherList" ID="VouchersDataList" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div class="VoucherDisplay">
                                <h2 runat="server"><%#Eval("voucherName") %></h2>
                                <h4 runat="server"><%#Eval("pointsRequired","Cost: {0} Points") %></h4>
                                <img id="VoucherImage" runat="server" src='<% #Bind("voucherPic","Images/{0}") %>' class="Center" style="background-color:transparent" />
                                <asp:Button CssClass="Dashbtn btn-skin" ID="TermsBtn" runat="server" Text="View Terms" ForeColor="Black" Height="50px" Width="150px" OnClick="TermsBtn_Click"  CommandArgument='<% #Eval("voucherId") %>'/>
                                <asp:Button CssClass="Dashbtn btn-skin" ID="AddBtn" runat="server" Text="Add To Cart" ForeColor="Black" Height="50px" Width="150px" OnClick="AddToCart"  CommandArgument='<% #Eval("voucherId") %>'/>
                            </div>
                        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" SelectCommand="SELECT * FROM [VoucherTypes]">
        </asp:SqlDataSource>
    </div>
    <div class="align-center" style="margin: 20px;">
        <asp:Button CssClass="Dashbtn btn-skin" ID="ReturnBtn" runat="server" Text="Return to Rewards" ForeColor="Black" Height="80px" Width="240px" OnClick="ReturnRewards"/>
        <asp:Button CssClass="Dashbtn btn-skin" ID="CheckoutBtn" runat="server" Text="Checkout" ForeColor="Black" Height="80px" Width="240px" OnClick="GotoCheckout"/>
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