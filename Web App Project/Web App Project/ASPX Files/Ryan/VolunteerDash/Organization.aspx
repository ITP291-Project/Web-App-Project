<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Organization.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Ryan.VolunteerDash.Organization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
            
                    <asp:Label ID="Label2" runat="server" Text="Result Text Here"></asp:Label>
                    <br />
                    <br />
            
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Select the organization you wish to work with!"></asp:Label>
                    <br />
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Group1" Text="Pioneer Generation" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Group1" Text="The Salivation Army" />
                    <br />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Group1" Text="Ren Ci" />
                    <br />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Group1" Text="SPCA" />
                    <br />
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Group1" Text="Touch Home Care" />
                    <br />
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Group1" Text="Red Cross Society" />
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" ForeColor="Black" Text="Update" Width="225px" OnClick="Button4_Click" />
            
                </div>
            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button1" runat="server" ForeColor="Black" Text="Rewards" Width="225px" />
                <br />
                <br />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button2" runat="server" ForeColor="Black" Text="Timetable" Width="225px" OnClick="Button2_Click" />
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
