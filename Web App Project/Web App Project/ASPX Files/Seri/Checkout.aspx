<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.Checkout" %>
<asp:Content ID="CheckoutHead" ContentPlaceHolderID="head" runat="server">
    <link href="RewardsStyle.css" rel="Stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="CheckoutBody" ContentPlaceHolderID="body" runat="server">
    <div class="jumbotron hiddenJumbo" style="height:200px">
        <h1 runat="server" id="WelcomeHeading">Checkout</h1>
        <div class="CurrentCart" runat="server">
            <h4 class="CartHeading" id="CurrentItems" runat="server">Items in Cart: 0</h4>
            <h4 class="CartHeading" id="CurrentCost" runat="server">Total Cart Cost: 0 Points</h4>
            <h4 class="CartHeading" id="CurrentBalance" runat="server">Current Balance: 0 Points</h4>
        </div>
    </div>
    <div class="align-center">
        <div class="CheckoutBorder">
            <h2>Items in Cart</h2>
            <asp:GridView ID="CheckoutGrid" CssClass="CheckoutGrid" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="10" CellSpacing="50" OnRowEditing="CheckoutGrid_RowEditing" OnRowCancelingEdit="CheckoutGrid_RowCancelingEdit" OnRowUpdating="CheckoutGrid_RowUpdating" OnRowDeleting="CheckoutGrid_RowDeleting">
                <Columns>
                    <asp:BoundField ReadOnly="true" DataField="ItemName" HeaderText="Voucher Name" />
                    <asp:BoundField SortExpression="Number" DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField ReadOnly="true" DataField="ItemCost" HeaderText="Item Cost" />
                    <asp:BoundField ReadOnly="true" DataField="TotalCost" HeaderText="Total Cost" />
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <div class="align-center" style="margin: 20px;">
        <div id="CurrentCart" runat="server">

        </div>
        <asp:Button CssClass="Dashbtn btn-skin" ID="ReturnBtn" runat="server" Text="Return to Vouchers" ForeColor="Black" Height="80px" Width="240px" OnClick="ReturnBtn_Click"/>
        <asp:Button CssClass="Dashbtn btn-skin" ID="CheckoutBtn" runat="server" Text="Checkout" ForeColor="Black" Height="80px" Width="240px" OnClick="CheckoutBtn_Click" OnClientClick="return false;"/>
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
