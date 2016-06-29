<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubmittedReport.aspx.cs" Inherits="Web_App_Project.Ryan.Volunteer.SubmittedReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CaseNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="650px">
                        <Columns>
                            <asp:BoundField DataField="CaseNo" HeaderText="CaseNo" ReadOnly="True" SortExpression="CaseNo" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                            <asp:BoundField DataField="TypeofVolunteer" HeaderText="TypeofVolunteer" SortExpression="TypeofVolunteer" />
                            <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                            <asp:BoundField DataField="AdditionalFeedback" HeaderText="AdditionalFeedback" SortExpression="AdditionalFeedback" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" DeleteCommand="DELETE FROM [Report] WHERE [CaseNo] = @CaseNo" InsertCommand="INSERT INTO [Report] ([CaseNo], [Date], [Duration], [TypeofVolunteer], [Photo], [AdditionalFeedback]) VALUES (@CaseNo, @Date, @Duration, @TypeofVolunteer, @Photo, @AdditionalFeedback)" ProviderName="<%$ ConnectionStrings:localdbConnectionString1.ProviderName %>" SelectCommand="SELECT [CaseNo], [Date], [Duration], [TypeofVolunteer], [Photo], [AdditionalFeedback] FROM [Report] WHERE [IsDraft] = 'false'" UpdateCommand="UPDATE [Report] SET [Date] = @Date, [Duration] = @Duration, [TypeofVolunteer] = @TypeofVolunteer, [Photo] = @Photo, [AdditionalFeedback] = @AdditionalFeedback WHERE [CaseNo] = @CaseNo">
                        <DeleteParameters>
                            <asp:Parameter Name="CaseNo" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CaseNo" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Duration" Type="String" />
                            <asp:Parameter Name="TypeofVolunteer" Type="String" />
                            <asp:Parameter Name="Photo" Type="String" />
                            <asp:Parameter Name="AdditionalFeedback" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Duration" Type="String" />
                            <asp:Parameter Name="TypeofVolunteer" Type="String" />
                            <asp:Parameter Name="Photo" Type="String" />
                            <asp:Parameter Name="AdditionalFeedback" Type="String" />
                            <asp:Parameter Name="CaseNo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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
