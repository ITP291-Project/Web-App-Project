<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewParticulars.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.viewParticulars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <head>
        <title>Your Particulars</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <div style="text-align: center; margin-left: 200px">
            <h2>Your Particulars</h2>
            <p>&nbsp;</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" SelectCommand="SELECT FName + ' ' + Lname AS Name, Email, Address, TelNo, Occupation, Language FROM Accounts"></asp:SqlDataSource>
                <div style="text-align: left; color: white">
                <asp:Label ID="Label1" Font-Size="20px" runat="server" Text="Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <asp:Label ID="Label2" Font-Size="20px" runat="server" style="color: white" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                &nbsp;<asp:Label ID="Label3" Font-Size="20px" runat="server" style="color: white" Text="Date of Birth"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label4" Font-Size="20px" runat="server" style="color: white" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label5" Font-Size="20px" runat="server" style="color: white" Text="Email Address"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label6" Font-Size="20px" runat="server" style="color: white" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label7" Font-Size="20px" runat="server" style="color: white" Text="Mailing Address"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label8" Font-Size="20px" runat="server" style="color: white" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label9" Font-Size="20px" runat="server" style="color: white" Text="Contact Number"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label10" Font-Size="20px" runat="server" style="color: white" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left; color: white">
                <asp:Label ID="Label13" Font-Size="20px" runat="server" Text="Occupation"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label11" Font-Size="20px" runat="server" style="color: white" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label14" Font-Size="20px" runat="server" style="color: white" Text="Dialects Spoken"></asp:Label>
                &nbsp;&nbsp;&nbsp; 
                </div>
            <asp:Label ID="Label12" Font-Size="20px" runat="server" style="color: white" Text="Label"></asp:Label>
            </p>

            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Style="color: black" Text="Edit Particulars" Width="131px" OnClick="Button1_Click" />
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
