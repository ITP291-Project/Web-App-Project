<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roster.aspx.cs" Inherits="Web_App_Project.Ryan.Roster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="a.FName" HeaderText="First Name" SortExpression="a.FName" />
                            <asp:BoundField DataField="a.LName" HeaderText="Last Name" SortExpression="a.LName" />
                            <asp:BoundField DataField="a.TelNo" HeaderText="Contact Number" SortExpression="a.TelNo" />
                            <asp:BoundField DataField="a.NRIC" HeaderText="NRIC" SortExpression="a.NRIC" />
                            <asp:BoundField DataField="a.Address" HeaderText="Address" SortExpression="a.Address" />
                            <asp:BoundField DataField="a.Occupation" HeaderText="Occupation" SortExpression="a.Occupation" />
                            <asp:BoundField DataField="a.Language" HeaderText="Language" SortExpression="a.Language" />
                            <asp:BoundField DataField="a.Gender" HeaderText="Gender" SortExpression="a.Gender" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" DeleteCommand="DELETE FROM [Roster] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Roster] ([Id], [Status]) VALUES (@Id, @Status)" ProviderName="<%$ ConnectionStrings:localdbConnectionString1.ProviderName %>" SelectCommand="SELECT r.Id, r.Status, a.FName, a.LName, a.NRIC, a.TelNo, a.Address, a.Occupation, a.Language, a.Gender FROM Roster r INNER JOIN Accounts a ON r.Id=a.Id" UpdateCommand="UPDATE [Roster] SET [Status] = @Status WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="a.FName" Type="String" />
                            <asp:Parameter Name="a.LName" Type="String" />
                            <asp:Parameter Name="a.TelNo" Type="String" />
                            <asp:Parameter Name="a.NRIC" Type="String" />
                            <asp:Parameter Name="a.Address" Type="String" />
                            <asp:Parameter Name="a.Occupation" Type="String" />
                            <asp:Parameter Name="a.Language" Type="String" />
                            <asp:Parameter Name="a.Gender" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                            <asp:Parameter Name="a.FName" Type="String" />
                            <asp:Parameter Name="a.LName" Type="String" />
                            <asp:Parameter Name="a.TelNo" Type="String" />
                            <asp:Parameter Name="a.NRIC" Type="String" />
                            <asp:Parameter Name="a.Address" Type="String" />
                            <asp:Parameter Name="a.Occupation" Type="String" />
                            <asp:Parameter Name="a.Language" Type="String" />
                            <asp:Parameter Name="a.Gender" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button1" runat="server" Text="Approved Reports" ForeColor="Black" Height="109px" OnClick="Button1_Click" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button2" runat="server" Text="Pending Reports" ForeColor="Black" Height="108px" OnClick="Button2_Click" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button3" runat="server" Text="Rejected Reports" ForeColor="Black" Height="105px" OnClick="Button3_Click" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button4" runat="server" Text="New Applicants" ForeColor="Black" Height="105px" OnClick="Button4_Click" />
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
