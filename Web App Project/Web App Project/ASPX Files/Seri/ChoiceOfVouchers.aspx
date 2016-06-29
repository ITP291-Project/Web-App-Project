<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChoiceOfVouchers.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Seri.ChoiceOfVouchers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
   
    <p>
        <asp:Button ID="Button6" runat="server" Height="50px" OnClick="Button6_Click" Text="BACK" Width="115px" BackColor="#333333" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Size="X-Large" />
        <br />
    </p>
    <br />
    <asp:Panel ID="Panel13" runat="server" BackColor="Black" BorderColor="Aqua" BorderStyle="Dashed" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Retail Therapy</asp:Panel>
&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Panel ID="Panel1" runat="server" BackColor="Black" BorderColor="Yellow" BorderStyle="Ridge" BorderWidth="20px" Height="266px" style="margin-right: 0px" Width="417px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="64px" ImageAlign="Middle" ImageUrl="~/ASPX Files/Seri/Images/courts.jpg" Width="227px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#CCCC00" BorderColor="#999999" BorderStyle="Dashed" Font-Bold="True" ForeColor="Black" Height="43px" OnClick="Button1_Click" style="margin-bottom: 11px" Text="GetThisVoucher" Width="239px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    <asp:Panel ID="Panel10" runat="server" BackColor="Black" BorderColor="#CC6699" BorderStyle="Ridge" BorderWidth="20px" Height="266px" style="margin-right: 0px" Width="417px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image14" runat="server" Height="64px" ImageAlign="Middle" ImageUrl="~/ASPX Files/Seri/Images/mall.jpg" Width="227px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#CC3399" BorderColor="#999999" BorderStyle="Dashed" Font-Bold="True" ForeColor="Black" Height="43px" OnClick="Button1_Click" style="margin-bottom: 11px" Text="GetThisVoucher" Width="239px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel11" runat="server" BackColor="Black" BorderColor="#0000CC" BorderStyle="Ridge" BorderWidth="20px" Height="266px" style="margin-right: 0px" Width="417px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image15" runat="server" Height="64px" ImageAlign="Middle" ImageUrl="~/ASPX Files/Seri/Images/metro.jpg" Width="227px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#3366FF" BorderColor="#999999" BorderStyle="Dashed" Font-Bold="True" ForeColor="Black" Height="43px" OnClick="Button1_Click" style="margin-bottom: 11px" Text="GetThisVoucher" Width="239px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel12" runat="server" BackColor="Black" BorderColor="#993300" BorderStyle="Ridge" BorderWidth="20px" Height="266px" style="margin-right: 0px" Width="417px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image12" runat="server" Height="64px" ImageAlign="Middle" ImageUrl="~/ASPX Files/Seri/Images/robinson.png" Width="227px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="#663300" BorderColor="#999999" BorderStyle="Dashed" Font-Bold="True" ForeColor="Black" Height="43px" OnClick="Button1_Click" style="margin-bottom: 11px" Text="GetThisVoucher" Width="239px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <p>
        <hr />
        <p>
        <asp:Panel ID="Panel14" runat="server" BackColor="Black" BorderColor="#FF33CC" BorderStyle="Dashed" BorderWidth="15px" Height="444px">
            <asp:Button ID="Button7" runat="server" Text="Button" OnClick="Button7_Click" />
    </asp:Panel>
    <p>
        <p>
        <p>
        <p>
            <p>
                <p align="left">
                </p>
            </p>
        </p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
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
