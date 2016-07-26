<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifyEmailReset.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.VerifyEmailReset" %>
<%@ Import Namespace="System.Web.Security" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div style="margin-left: 500px; margin-top: 200px">
        <asp:Label ID="Label2" runat="server" style="font-size: 20px; color: white" Text="Enter code that was sent to your email."></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" style="color: black" Width="250px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" style="color:black; border-color: black" Text="Verify" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" style="color:white" Text="Label"></asp:Label>
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
