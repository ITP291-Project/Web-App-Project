<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventSignUp.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Ryan.VolunteerDash.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Your Prefered Organization"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Day" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="255px">
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thursday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Select Time" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="255px">
                        <asp:ListItem Value="08:00:00">8:00am</asp:ListItem>
                        <asp:ListItem Value="09:00:00">9:00am</asp:ListItem>
                        <asp:ListItem Value="10:00:00">10:00am</asp:ListItem>
                        <asp:ListItem Value="11:00:00">11:00am</asp:ListItem>
                        <asp:ListItem Value="12:00:00">12:00pm</asp:ListItem>
                        <asp:ListItem Value="13:00:00">1:00pm</asp:ListItem>
                        <asp:ListItem Value="14:00:00">2:00pm</asp:ListItem>
                        <asp:ListItem Value="15:00:00">3:00pm</asp:ListItem>
                        <asp:ListItem Value="16:00:00">4:00pm</asp:ListItem>
                        <asp:ListItem Value="17:00:00">5:00pm</asp:ListItem>
                        <asp:ListItem Value="18:00:00">6:00pm</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblError" runat="server" Width="300px"></asp:Label>
                    <br />
                    <br />
                    <br />
                <asp:Button ID="Button6" runat="server" Text="Sign Up!" Width="225px" ForeColor="Black" OnClick="Button6_Click" />
                    <br />
                    <br />
                </div>

            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button5" runat="server" Text="View Particulars" Width="225px" OnClick="Button5_Click" />
                <br />
                <br />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button1" runat="server" ForeColor="Black" Text="Rewards" Width="225px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button2" runat="server" ForeColor="Black" Text="Choose Organization" Width="225px" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button3" runat="server" ForeColor="Black" Text="Write New Report" Width="225px" OnClick="Button3_Click" />

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