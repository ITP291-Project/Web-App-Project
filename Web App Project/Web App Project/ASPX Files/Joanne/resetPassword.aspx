<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.forgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">   
    

<head>
    <title>Forgot Password?</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <asp:Button ID="fake" Visible="false" runat="server" />
    <div class="align-center">
        <h1>Reset Password</h1>
        <h3>Reset your password</h3>
    </div>
    <div class="reset">
        <p class="label">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" Width="500px" style="color: black" type="password" required="required"></asp:TextBox>
        </p>
        <p class="label">
            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" Width="500px" style="color: black" type="password" required="required"></asp:TextBox>
            <asp:CompareValidator runat="server" id="cmpPassword" controltovalidate="TextBox2" controltocompare="TextBox3" operator="Equal" type="String" errormessage="Both Passwords must be the same" />
            <br />
        </p>
        <p class="label">
            <asp:Button ID="Button1" runat="server" style="color:black" Text="Reset" OnClick="Button1_Click" />
        </p>
    </div>
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
