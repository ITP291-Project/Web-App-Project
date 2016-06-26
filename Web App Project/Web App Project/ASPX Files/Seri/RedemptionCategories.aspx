<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RedemptionCategories.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.RedemptionCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Gray" BorderStyle="Ridge" Font-Bold="True" Font-Size="Medium" Height="62px" OnClick="Button1_Click" Text="BACK" Width="132px" />
        <br />
    </p>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server" BackColor="Black" BorderColor="#663300" BorderStyle="Ridge" BorderWidth="15px" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="425px" style="text-align: center">
        <br />
        &nbsp;Retail Therapy
        <br />
        &nbsp;Dining Indulgences
        <br />
        &nbsp;Family &amp; Kids
        <br />
        &nbsp;Travel &amp; Leisure
        <br />
        &nbsp;Health &amp; Wellness
        <br />
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
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
