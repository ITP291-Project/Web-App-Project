<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roster.aspx.cs" Inherits="Web_App_Project.Ryan.Roster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" ItemStyle-BackColor="Yellow" />
                            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="TelNo" HeaderText="TelNo" SortExpression="TelNo" />
                            <asp:BoundField DataField="NRIC" HeaderText="NRIC" SortExpression="NRIC" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" SelectCommand="SELECT r.Id, r.Status, a.FName + ' ' + a.Lname AS Name, a.Email, a.TelNo, a.NRIC, a.Address, a.Occupation, a.Language, a.Gender FROM Roster AS r INNER JOIN Accounts AS a ON r.Id = a.Id"></asp:SqlDataSource>
                </div>
            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button1" runat="server" Text="Approved Reports" ForeColor="Black" Height="110px" OnClick="Button1_Click" Font-Size="Small" Width="150px" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button2" runat="server" Text="Pending Reports" ForeColor="Black" Height="110px" OnClick="Button2_Click" Font-Size="Small" Width="150px" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button3" runat="server" Text="Rejected Reports" ForeColor="Black" Height="110px" OnClick="Button3_Click" Font-Size="Small" Width="150px" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button4" runat="server" Text="New Applicants" ForeColor="Black" Height="110px" OnClick="Button4_Click" Font-Size="Small" Width="150px" />
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
