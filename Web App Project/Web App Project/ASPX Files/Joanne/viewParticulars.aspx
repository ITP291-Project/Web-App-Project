<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewParticulars.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.viewParticulars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <head>
        <title>Your Particulars</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <%--  style="text-align: center; margin-left: 200px" --%>
        <div style="font-family:Georgia">
            <h2 style="margin-left: 500px; font-family:Georgia">Your Particulars</h2>
            <p>&nbsp;</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" SelectCommand="SELECT FName + ' ' + Lname AS Name, Email, Address, TelNo, Occupation, Language FROM Accounts"></asp:SqlDataSource>
                <div style="text-align: left; color: white">
                <asp:Label ID="Label1" style="margin-left: 200px; color: white" Font-Size="30px" runat="server" Text="N A M E"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <asp:Label ID="Label2" Font-Size="20px" runat="server" style="color: white; margin-left:200px" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                &nbsp;<asp:Label ID="Label3" style="margin-left: 200px; color: white" Font-Size="30px" runat="server" Text="D O B"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label4" Font-Size="20px" runat="server" style="color: white; margin-left:200px" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label5" style="margin-left: 200px; color: white" Font-Size="30px" runat="server" Text="E M A I L"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label6" Font-Size="20px" runat="server" style="color: white; margin-left:200px" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label7" style="margin-left: 200px; color: white" Font-Size="30px" runat="server" Text="A D D R E S S"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label8" Font-Size="20px" runat="server" style="color: white; margin-left:200px" Text="Label"></asp:Label>
            </p>
        </div>


        <div style="margin-left: 400px; margin-top: -330px; font-family:Georgia">

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label9" style="margin-left: 400px; color: white" Font-Size="30px" runat="server" Text="M O B I L E N U M B E R"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <asp:Label ID="Label10" Font-Size="20px" runat="server" Style="color: white; margin-left: 400px" Text="Label"></asp:Label>
            </p>

        <p>
                <div style="text-align: left; color: white">
                <asp:Label ID="Label13" style="margin-left: 400px; color: white" Font-Size="30px" runat="server" Text="O C C U P A T I O N"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            <asp:Label ID="Label11" Font-Size="20px" runat="server" style="color: white; margin-left: 400px" Text="Label"></asp:Label>
            </p>

            <p>
                <div style="text-align: left">
                <asp:Label ID="Label14" style="margin-left: 400px; color: white" Font-Size="30px" runat="server" Text="D I A L E C T S"></asp:Label>
                &nbsp;&nbsp;&nbsp; 
                </div>
            <asp:Label ID="Label12" Font-Size="20px" runat="server" style="color: white; margin-left: 400px" Text="Label"></asp:Label>
            </p>

            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="Button1" runat="server" Style="color: black; margin-left: 200px" Text="Edit Particulars" Width="160px" OnClick="Button1_Click" />
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
