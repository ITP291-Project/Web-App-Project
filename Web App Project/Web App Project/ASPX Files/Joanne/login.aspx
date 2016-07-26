﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.login" EnableEventValidation="false" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <style type="text/css">
        .background {
            background-color: grey;
            opacity: 0.8;
            filter: alpha(opacity=80);
            z-index: 1000;
        }

        .popup {
            background-color: lightblue;
            color: black;
            opacity: 1;
            width: 300px;
            height: 200px;
            justify-content: center;
        }
    </style>
    <head>

        <!--<script src='https://www.google/recaptcha/api.js'> </script>-->
    </head>
    <div class="container">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">
            <div class="registrationform">
                <form role="form" action="" method="POST">

                    <!-- add into form above? ^ onsubmit="check_if_capcha_is_filled"-->
                    <h1 class="text-left">Log in to your Dashboard!</h1>

                    <!-- asking for email input-->
                    <div class="form-group">
                        <label for="email"></label>
                        <!-- <input type="email" class="form-control" id="email" name="email" placeholder="email" required> -->
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="350px" TextMode="Email"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
                            CssClass="text-danger" ErrorMessage="The email field is required." />
                        <!--placing icon using a span element-->
                        <span class="icon fa fa-envelope-o fa-fw">
                            <br />
                        </span>
                        <asp:Label ID="Label1" runat="server"></asp:Label>

                    </div>

                    <div class="form-group">
                        <label for="password"></label>
                        <!-- <input type="password" class="form-control" id="password" name="password" placeholder="password" required> -->
                        <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Width="350px" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2" CssClass="text-danger" ErrorMessage="The password field is required." />
                        <span class="icon fa fa-key fa-fw"></span>
                        <br />
                        <br />

                    </div>

                    <asp:Image ID="Image1" runat="server" ImageUrl="~/ASPX Files/Joanne/captcha.aspx" />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Enter the Captcha that you see in the above image."></asp:Label>
                    <br />
                    <!--captcha-->
                    <!--<div class="g-recaptcha" data-sitekey="6LeYqiQTAAAAAAwOrxXM2XeMrUVQbgfF1lmuoAQ8"></div>-->

<%--                    <div class="g-recaptcha" data-sitekey="6LfDciITAAAAADVnhLVRo-teYVKzy6JCRX2xfcwV"></div>
                    <!-- add into above div? ^ data-callback="capcha_filled" data-expired-callback="capcha_expired"-->--%>

                </form>

                <asp:TextBox ID="TextBox21" runat="server" ForeColor="Black" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate ="TextBox21" CssClass="text-danger" ErrorMessage="Please fill in the captcha input." />
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                <ajaxToolkit:ModalPopupExtender runat="server" ID="modal" TargetControlID="btnPopup" BackgroundCssClass="background" PopupControlID="panel" CancelControlID="Button2"></ajaxToolkit:ModalPopupExtender>

                <%--<asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>--%>
                <%-- Button to LOGIN --%>
                <asp:Button ID="btnPopup" runat="server" Text="PopUp" Style="display: none" />
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BorderColor="Black" ForeColor="Black" />
                <%-- POPUP BOX --%>
                
                    <asp:Panel ID="panel" runat="server" CssClass="popup">
                        <asp:UpdatePanel ID="UpdatePanel" runat="server">
                            <ContentTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <div style="position: absolute; margin-bottom: 240px; margin-left: 250px;">
                                 <asp:Button ID="Button2" runat="server" Height="20px" Text="Button" Width="10px" />
                                </div>
                                &nbsp;<br />
                                <asp:Label runat="server" Text="Enter your code:" style="align-content: center" ID="label1a"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" ID="textbox20" Style="color: black; align-content:center"></asp:TextBox>
                                <br />
                                <asp:Label runat="server" Visible="false" ID="label1b" Style="color: black; align-content:center">Wrong Code</asp:Label>
                                <br />
                                <br />
                                <%-- Button to SUBMIT code --%>
                                <div style="color: black">
                                    <asp:Button runat="server" Text="Submit" ID="submit" BorderColor="Black" ForeColor="Black" style="align-content: center" OnClick="submit_click" CausesValidation="false" />
                                    <asp:Button runat="server" Text="Resend Code" ID="resend" BorderColor="Black" ForeColor="Black" style="align-content: center" OnClick="Resend_Click" CausesValidation="false" />
                                </div>
                                <%--<asp:Button runat="server" Text="open" ID="button" OnClick="submit_click" Style="height: 26px" />--%>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>

            </div>

            <div class="form-group text-left">

                <a href="enterEmail.aspx" data-target="#pwdModal" data-toggle="modal" style="color: white">Forget password?</a>
                <br />
                <br />
            </div>

        </div>
    </div>


    <!-- double check what is this-->
    <!--modal-->
    <div id="pwdModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header brick">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        X</button>
                    <h3 class="text-center">Forget password?</h3>
                </div>
                <div class="modal-body">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="text-center">
                                    <p>
                                        If you have forgotten your password you can reset it here.
                                    </p>
                                    <div class="panel-body">
                                        <fieldset>
                                            <div class="form-group">
                                                <input class="form-control input-lg" name="email" type="text" />
                                            </div>
                                            <input class="btn btn-lg btn-danger btn-block" value="Send My Password" type="submit" />
                                        </fieldset>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix">
                </div>

            </div>
        </div>
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
