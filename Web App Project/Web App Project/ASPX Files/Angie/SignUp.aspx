<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Angie.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">   

<head>
    <title>Join us today!</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="css/the-big-picture.css" rel="stylesheet">
    <link href="css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="containerSignUp">
         <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">        
            <h3>Join us now!</h3>
       
       
        <p>&nbsp;There's no age limit for volunteering, the only thing you need is an empathetic heart. Join us today
                    a difference in someone's life. Let us know more about you, because we care for you as a big volunteering family.</p>
             
       
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label">First Name:</asp:Label>
        
        
            <asp:TextBox ID="firstName" runat="server" ForeColor="Black"></asp:TextBox>
       
       
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="firstName" runat="server" />
        </p>

        <p>
            <asp:Label ID="Label2" runat="server" Text="Label">Last Name:</asp:Label>
            <asp:TextBox ID="lastName" runat="server" ForeColor="Black"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="firstName" runat="server" />
        </p>
  
        <p>
            <asp:Label ID="Label3" runat="server" Text="Label">Gender:</asp:Label>  
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Text="Female" Value="Female">Female</asp:ListItem>
                <asp:ListItem Text="Male" Value="Male">Male</asp:ListItem>     
            </asp:RadioButtonList>

            <asp:RequiredFieldValidator runat="server" ID="genderRequired" Display="Dynamic"
            ControlToValidate="RadioButtonList1" ErrorMessage="Please select a gender"
            ValidationGroup="signUp">*</asp:RequiredFieldValidator>
        </p>
     
        <p>
            <asp:Label ID="Label4" runat="server" Text="Label">NRIC:</asp:Label>
            &nbsp;&nbsp;
       
            <asp:TextBox ID="nricInput" runat="server" ForeColor="Black"></asp:TextBox>
             <asp:RegularExpressionValidator runat="server" ValidationExpression="^(S\d{7}[a-zA-Z])$" ControlToValidate="nricInput" ErrorMessage="Invalid NRIC Format"></asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="nricInput" runat="server" />
            
        </p>  
        <p>
            <asp:Label ID="Label5" runat="server" Text="Label">Birthdate:</asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Select Date" OnClick="Button2_Click"/>
            <asp:TextBox ID="bDateInput" runat="server" ForeColor="Black" Enabled="false"></asp:TextBox>
&nbsp;<asp:Calendar ID="birthDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="birthDate_SelectionChanged" Width="330px">
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
            &nbsp;
            <asp:TextBox ID="emailInput" runat="server" ForeColor="Black"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailInput" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Label">Password:</asp:Label>
            &nbsp;
            
            <asp:TextBox ID="password" runat="server" ForeColor="Black" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator id="passwordReq"
              runat="server"
              ControlToValidate="password"
              ErrorMessage="Password must contain: Minimum 8 and Maximum 10 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character!"
              SetFocusOnError="True" Display="Dynamic" 
              ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,30}"/>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Label">Re-type Password:</asp:Label>
            &nbsp;
            <asp:TextBox ID="cfmPassword" runat="server" ForeColor="Black" TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator id="confirmPasswordReq"
              runat="server" 
              ControlToValidate="cfmPassword"
              ErrorMessage="Password confirmation is required!"
              SetFocusOnError="True" 
              Display="Dynamic" />

             <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="password"
              ControlToValidate="cfmPassword"
              ErrorMessage="Your passwords do not match up!"
              Display="Dynamic" />
        </p>
        <p>
             <asp:Label ID="Label9" runat="server" Text="Label">Mobile number:</asp:Label>
             &nbsp;
            <asp:TextBox ID="telephone" runat="server" ForeColor="Black"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "telephone" ID="RegularExpressionValidator2" ValidationExpression = "^[0-9]{8,8}$" runat="server" ErrorMessage="Please enter a valid phone number (e.g. 91234567)."></asp:RegularExpressionValidator>



        </p>
        <p>
            <asp:Label ID="Label10" runat="server" Text="Label">Occupation:</asp:Label>
            &nbsp;
            <asp:TextBox ID="job" runat="server" ForeColor="Black"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label11" runat="server" Text="Label">Mailing Address:</asp:Label>
            &nbsp;
            <asp:TextBox ID="addr" runat="server" ForeColor="Black"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
        <p>
            <asp:Label ID="Label12" runat="server" Text="Label">Salutation:</asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">Select Salutation</asp:ListItem>
                <asp:ListItem Value="Mr">Mr.</asp:ListItem>
                <asp:ListItem Value="Ms">Ms.</asp:ListItem>
                <asp:ListItem Value="Miss">Miss</asp:ListItem>
                <asp:ListItem Value="Mdm">Mdm.</asp:ListItem>
                <asp:ListItem Value="Mrs">Mrs.</asp:ListItem>
                <asp:ListItem Value="Dr">Dr.</asp:ListItem>
            </asp:DropDownList>
        </p>
             <p>
                 <asp:Label ID="Label13" runat="server" Text="Language:"></asp:Label>
        &nbsp;&nbsp;
                 <asp:TextBox ID="lang" runat="server" ForeColor="Black"></asp:TextBox>
        </p>
             <p>
                 <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
        </p>
             <p>
                 &nbsp;</p>
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
