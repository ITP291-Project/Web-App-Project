<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportSubmission.aspx.cs" Inherits="Web_App_Project.Ryan.Volunteer.ReportSubmission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:Button ID="Button4" CssClass="Dashbtn btn-skin btn-block" runat="server" Text="Drafts" Width="225px" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" CssClass="Dashbtn btn-skin btn-block" runat="server" Text="Submitted" Width="225px" OnClick="Button5_Click" />
                    <br />
                    <br />
                    Case Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="135px"></asp:TextBox>
                    <br />
                    <br />
                    Date of visit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Enabled="False" Width="135px"></asp:TextBox>
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Show Calendar" ForeColor="Black" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    <br />
                    <br />
                    Duration of visit&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox> -->
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="135px">
                        <asp:ListItem>1 Hour</asp:ListItem>
                        <asp:ListItem>2 Hours</asp:ListItem>
                        <asp:ListItem>3 Hours</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Type of volunteer&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="135px">
                        <asp:ListItem>PG House Visit</asp:ListItem>
                        <asp:ListItem>SPCA</asp:ListItem>
                        <asp:ListItem>Sun Love Home</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Photo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" Width="223px" />
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    Additional Feedback<br />
                    <asp:TextBox ID="TextBox5" runat="server" Height="72px" Width="369px" ForeColor="Black" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Submit" Width="223px" ForeColor="Black" />
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Save" Width="223px" ForeColor="Black" />
                    <br />
                </div>
            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button1" runat="server" ForeColor="Black" Text="Rewards" Width="225px" />
                <br />
                <br />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button2" runat="server" ForeColor="Black" Text="Choose Organization" Width="225px" />
                <br />
                <br />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button3" runat="server" ForeColor="Black" Text="Write New Report" Width="225px" />

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
