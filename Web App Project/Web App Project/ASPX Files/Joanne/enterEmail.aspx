﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="enterEmail.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.enterEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <head>
        <title>Enter your email
        </title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <div class="align-center">
            <h2>Sent a link to your email to reset your password.</h2>
            <p>
                <asp:Label ID="Label1" runat="server" Style="font-size: 20px; color: white" Text="Enter email: "></asp:Label>
                &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="250px" Style="color: black" type="email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                &nbsp;
            </p>
            <p style="align-content:center; color: white">
            <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>

        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Style="color: black; margin-left: 650px" Text="Email Me!" Width="85px" OnClick="Button1_OnClick" />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server"  style="color: white; margin-left: 500px"></asp:Label>
        </p>
        <p style="margin-left: 500px">
            &nbsp;
        </p>
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
