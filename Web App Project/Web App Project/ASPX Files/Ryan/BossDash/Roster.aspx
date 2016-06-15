<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roster.aspx.cs" Inherits="Web_App_Project.Ryan.Roster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="NRIC" HeaderText="NRIC" SortExpression="NRIC" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" DeleteCommand="DELETE FROM [Roster] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Roster] ([Id], [Name], [NRIC], [Status]) VALUES (@Id, @Name, @NRIC, @Status)" ProviderName="<%$ ConnectionStrings:localdbConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [NRIC], [Status] FROM [Roster]" UpdateCommand="UPDATE [Roster] SET [Name] = @Name, [NRIC] = @NRIC, [Status] = @Status WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="NRIC" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="NRIC" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
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
