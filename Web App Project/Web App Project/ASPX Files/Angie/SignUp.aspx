<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Angie.SignUp" %>
<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <style type="text/css">
        /*
        .containerSignUp {
            width: 900px;
            height: 1200px;
            padding: 5px 5px 5px 5px;
            background-color: #ffffff;
            border-radius: 10px;
            -moz-box-shadow: 0 0 15px 1px #bbb;
            -webkit-box-shadow: 0 0 15px 1px #bbb;
            box-shadow: 0 0 15px 1px #bbb;
        
    */

        p {
            color: white;
        }

        .radiobuttonlist1 {
            color: white;
        }

        .selection {
            color: black;
        }

        .textbox {
            height: 25px;
            width: 275px;
            border: 1px solid #B9BDC1;
            color: #797979;
            -moz-box-shadow: 0 2px 4px #bbb inset;
            -webkit-box-shadow: 0 2px 4px #BBB inset;
            box-shadow: 0 2px 4px #BBB inset;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
        }

            .textbox:focus {
                background-color: #E7E8E7;
                outline: 0;
            }

            .ddlistcolor {
                color: black;
            }
    </style>

    </style>
    -->
    <head>
        <title>Join us today!</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" />

        <!-- Custom CSS -->
        <link href="css/the-big-picture.css" rel="stylesheet">
        <link href="css/font-icon.css" rel="stylesheet" type="text/css" />
        <link href="css/jquery.fancybox.css" rel="stylesheet" type="text/css" />
        <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
        <link href="css/main.css" rel="stylesheet" type="text/css" />
        <link href="css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="css/animate.min.css" rel="stylesheet" type="text/css" />


        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.easing.min.js" type="text/javascript"></script>
        <script src="js/jquery.flexslider-min.js"></script>
        <script src="js/jquery.fancybox.pack.js"></script>
        <script src="js/wow.js" type="text/javascript"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/modernizr.js"></script>
        <script src="js/main.js"></script>

        <!-- ============ Recaptcha Script ======== -->
        <script src='https://www.google.com/recaptcha/api.js'></script>

    </head>

    <body>
        <!--
        <div class="containerSignUp">
            -->

        <div class="heading-contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-offset-2">

                        <div class="section-heading">
                            <div class="wow bounceInDown" data-wow-delay="0.4s">
                                <h2 style="color: white;">Interested to volunteer yet?</h2>
                            </div>
                            <p style="color: white;" class="wow lightSpeedIn" data-wow-delay="0.3s">
                                There's no age limit for volunteering, the only thing you need is an empathetic heart. Join us today
                                a difference in someone's life. Let us know more about you, because we care for you as a big volunteering family.
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div class="form-wrapper marginbot-50">

                <p>
                    <asp:Label ID="lblRecordStatus" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </p>

                <p>
                    <asp:Label ID="Label1" runat="server" Text="Label">First Name:</asp:Label>
                    <br />
                    <asp:TextBox ID="firstName" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="firstName" runat="server" />
                </p>

                <p>
                    <asp:Label ID="Label2" runat="server" Text="Label">Last Name:</asp:Label>
                    <br />
                    <asp:TextBox ID="lastName" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="firstName" runat="server" />
                </p>

                <p>
                    <asp:Label ID="Label3" runat="server" Text="Label">Gender:</asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Female" Value="Female" class="radiobuttoncolor">Female</asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male" class="radiobuttoncolor">Male</asp:ListItem>

                    </asp:RadioButtonList>
                </p>

                <p>
                    <asp:Label ID="Label4" runat="server" Text="Label">NRIC:</asp:Label>
                    <br />
                    <asp:TextBox ID="nricInput" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="nricInput" runat="server" />
                    <asp:RegularExpressionValidator runat="server" ValidationExpression="^(S\d{7}[a-zA-Z])$" ControlToValidate="nricInput" ErrorMessage="Invalid NRIC Format"></asp:RegularExpressionValidator>

                </p>
                <p>
                    <asp:Label ID="Label5" runat="server" Text="Label">Birthdate:</asp:Label>
                    <br />
                    <asp:TextBox ID="bDateInput" runat="server" ForeColor="Black" Enabled="false" CssClass="textbox"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Select Date" OnClick="Button2_Click" />
                    <asp:Calendar ID="birthDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="birthDate_SelectionChanged" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </p>

                <p>
                    <asp:Label ID="Label6" runat="server" Text="Label">Email:</asp:Label>
                    <br />
                    <asp:TextBox ID="emailInput" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailInput" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Label ID="Label7" runat="server" Text="Label">Password:</asp:Label>
                    <br />
                    <asp:TextBox ID="password" runat="server" ForeColor="Black" TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="passwordReq"
                        runat="server"
                        ControlToValidate="password"
                        ErrorMessage="Password must contain: Minimum 8 and Maximum 30 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character!"
                        SetFocusOnError="True" Display="Dynamic"
                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,30}" />
                </p>
                <p>
                    <asp:Label ID="Label8" runat="server" Text="Label">Re-type Password:</asp:Label>
                    <br />
                    <asp:TextBox ID="cfmPassword" runat="server" ForeColor="Black" TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="confirmPasswordReq"
                        runat="server"
                        ControlToValidate="cfmPassword"
                        ErrorMessage="Password confirmation is required!"
                        SetFocusOnError="True"
                        Display="Dynamic" />

                    <asp:CompareValidator ID="comparePasswords"
                        runat="server"
                        ControlToCompare="password"
                        ControlToValidate="cfmPassword"
                        ErrorMessage="Your passwords do not match up!"
                        Display="Dynamic" />
                </p>

                <p>
                    <asp:Label ID="Label9" runat="server" Text="Label">Mobile number:</asp:Label>
                    <br />
                    <asp:TextBox ID="telephone" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="telephone" ID="RegularExpressionValidator2" ValidationExpression="^[0-9]{8,8}$" runat="server" ErrorMessage="Please enter a valid phone number (e.g. 91234567)."></asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Label ID="Label10" runat="server" Text="Label">Occupation:</asp:Label>
                    <br />
                    <asp:TextBox ID="job" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                </p>

                <p>
                    <asp:Label ID="Label11" runat="server" Text="Label">Mailing Address:</asp:Label>
                    <br />
                    <asp:TextBox ID="addr" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                </p>

                <p>
                    <asp:Label ID="Label12" runat="server" Text="Label">Salutation:</asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True" class="selection">Select Salutation</asp:ListItem>
                        <asp:ListItem Value="Mr" class="selection">Mr.</asp:ListItem>
                        <asp:ListItem Value="Ms" class="selection">Ms.</asp:ListItem>
                        <asp:ListItem Value="Miss" class="selection">Miss</asp:ListItem>
                        <asp:ListItem Value="Mdm" class="selection">Mdm.</asp:ListItem>
                        <asp:ListItem Value="Mrs" class="selection">Mrs.</asp:ListItem>
                        <asp:ListItem Value="Dr" class="selection">Dr.</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="Label13" runat="server" Text="Language:"></asp:Label>
                    <br />
                    <asp:TextBox ID="lang" runat="server" ForeColor="Black" CssClass="textbox"></asp:TextBox>
                </p>

                <div class="g-recaptcha" data-sitekey="6LfDciITAAAAADVnhLVRo-teYVKzy6JCRX2xfcwV" style="text-align: center;"></div>
                <cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server" PublicKey="6LfDciITAAAAADVnhLVRo-teYVKzy6JCRX2xfcwV" PrivateKey="6LfDciITAAAAACzqw5RmfWvVuKkThWwNX2DVLEi1" />

                <p>
                    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </p>

            </div>
        </div>
        <!-- </div> -->


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
