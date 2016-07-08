<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.login" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <head>
        <!--<script src='https://www.google.com/recaptcha/api.js?onload=reCaptchaCallback&render=explicit'></script>>-->
    </head>
    <div class="container">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">
            <div class="registrationform">
                <form role="form " action="" method="POST">
                    <!--onsubmit="check_if_capcha_is_filled"-->
                    <h1 class="text-left">Log in to your Dashboard!</h1>

                    <!-- asking for email input-->
                    <div class="form-group">
                        <label for="email"></label>
                        <!-- <input type="email" class="form-control" id="email" name="email" placeholder="email" required> -->
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="350px" TextMode="Email" required="required"></asp:TextBox>
                        <!--placing icon using a span element-->
                        <span class="icon fa fa-envelope-o fa-fw"></span>

                    </div>

                    <div class="form-group">
                        <label for="password"></label>
                        <!-- <input type="password" class="form-control" id="password" name="password" placeholder="password" required> -->
                        <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Width="350px" TextMode="Password" required="required"></asp:TextBox>
                        <span class="icon fa fa-key fa-fw"></span>
                        <br />
                        <br />
                        
                        </div>
                        <!-- data-callback="capcha_filled" data-expired-callback="capcha_expired"-->
                        <div class="g-recaptcha" data-sitekey="6LfDciITAAAAADVnhLVRo-teYVKzy6JCRX2xfcwV" required="required"></div>

                    </div>

                    <div class="form-group text-left">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BorderColor="Black" ForeColor="Black" />
                        <a href="enterEmail.aspx" data-target="#pwdModal" data-toggle="modal">Forget password?</a>
                    </div>

                </form>
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
                                                <input class="form-control input-lg" placeholder="E-mail Address" name="email" type="email">
                                            </div>
                                            <input class="btn btn-lg btn-danger btn-block" value="Send My Password" type="submit">
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
