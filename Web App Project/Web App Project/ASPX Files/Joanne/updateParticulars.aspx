﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updateParticulars.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.updateParticulars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <head>
        <title>Update your particulars</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <div class="container">
            <div class="content">
                <h1 style="margin-left: 300px; font-family: Georgia">Update Particulars</h1>

                <p style="margin-left: 360px">
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label2" runat="server" Style="margin-left: -80px" Text="Last Name"></asp:Label>
                </p>
                <p style="margin-left: 360px; width: 725px;">
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="170px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Width="170px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
                        CssClass="text-danger" ErrorMessage="First Name is required." />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2"
                            CssClass="text-danger" ErrorMessage="Last Name is required." />
                </p>
                <p style="margin-left: 360px">
                    <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label>
                </p>
                <p style="margin-left: 360px">
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black" Width="433px" required="required"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox3"
                        CssClass="text-danger" ErrorMessage="Email is required." />
                </p>
                <p style="margin-left: 360px">Mailing Address</p>
                <p style="margin-left: 360px">
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black" Width="433px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4"
                        CssClass="text-danger" ErrorMessage="Address is required." />
                </p>
                <p style="margin-left: 360px">
                    <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                </p>
                <p style="margin-left: 360px">
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black" Width="433px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox5"
                        CssClass="text-danger" ErrorMessage="Phone Number is required." />
                </p>
                <p style="margin-left: 360px">
                    <asp:Label ID="Label5" runat="server" Text="Languages/Dialects Spoken"></asp:Label>
                </p>
                <p style="margin-left: 360px">
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black" Width="433px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox6"
                        CssClass="text-danger" ErrorMessage="Language input is required." />
                </p>
                <p style="margin-left: 360px">
                    <asp:Button ID="Button1" runat="server" Style="color: black" Text="Save" OnClick="Button1_Click" BorderColor="Black" ForeColor="Black" Width="89px" />
                </p>


            </div>
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
