<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewParticulars.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.viewParticulars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <head>
        <title>Your Particulars</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
<div style="text-align: center">
        <h2>Your Particulars</h2>
        <p>&nbsp;</p>
        <p>
            <asp:Label ID="Label1" font-size="20px" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" font-size="20px" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" font-size="20px" runat="server" Text="Date of Birth"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" font-size="20px" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label5" font-size="20px" runat="server" Text="Email Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" font-size="20px" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label7" font-size="20px" runat="server" Text="Mailing Address"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" font-size="20px" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label9" font-size="20px" runat="server" Text="Contact Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" font-size="20px" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label13" font-size="20px" runat="server" Text="Occupation"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" font-size="20px" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label14" font-size="20px" runat="server" Text="Dialects Spoken"></asp:Label>
            &nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label12" font-size="20px" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" style="color: black" Text="Edit Particulars" Width="131px" OnClick="Button1_Click" />
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
