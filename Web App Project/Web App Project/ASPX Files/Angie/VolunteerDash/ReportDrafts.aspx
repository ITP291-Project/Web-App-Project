<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportDrafts.aspx.cs" Inherits="Web_App_Project.Ryan.Volunteer.ReportDrafts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    Testing text
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CaseNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" OnSelectedIndexChanged="OnSelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="CaseNo" HeaderText="CaseNo" ReadOnly="True" SortExpression="CaseNo" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                            <asp:BoundField DataField="TypeofVolunteer" HeaderText="TypeofVolunteer" SortExpression="TypeofVolunteer" />
                            <asp:BoundField DataField="AdditionalFeedback" HeaderText="AdditionalFeedback" SortExpression="AdditionalFeedback" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" DeleteCommand="DELETE FROM [Report] WHERE [CaseNo] = @CaseNo" InsertCommand="INSERT INTO [Report] ([CaseNo], [Date], [Duration], [TypeofVolunteer], [AdditionalFeedback], [IsDraft]) VALUES (@CaseNo, @Date, @Duration, @TypeofVolunteer, @AdditionalFeedback, @IsDraft)" SelectCommand="SELECT [CaseNo], [Date], [Duration], [TypeofVolunteer], [AdditionalFeedback], [IsDraft] FROM [Report] WHERE [IsDraft] = 'true'" UpdateCommand="UPDATE [Report] SET [Date] = @Date, [Duration] = @Duration, [TypeofVolunteer] = @TypeofVolunteer, [AdditionalFeedback] = @AdditionalFeedback, [IsDraft] = @IsDraft WHERE [CaseNo] = @CaseNo">
                        <DeleteParameters>
                            <asp:Parameter Name="CaseNo" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CaseNo" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Duration" Type="String" />
                            <asp:Parameter Name="TypeofVolunteer" Type="String" />
                            <asp:Parameter Name="AdditionalFeedback" Type="String" />
                            <asp:Parameter Name="IsDraft" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Duration" Type="String" />
                            <asp:Parameter Name="TypeofVolunteer" Type="String" />
                            <asp:Parameter Name="AdditionalFeedback" Type="String" />
                            <asp:Parameter Name="IsDraft" Type="String" />
                            <asp:Parameter Name="CaseNo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Case Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Width="255px"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" ForeColor="Black" OnClick="Button4_Click" Text="Show Calendar" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
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
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Duration of Visit"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Organization"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Additional Feedback"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Height="100px" Width="255px" ForeColor="Black"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" Width="225px" ForeColor="Black" />
&nbsp;
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Update Draft" Width="255px" ForeColor="Black" />
                </div>
            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button9" runat="server" Text="View Particulars" Width="225px" OnClick="Button9_Click" ForeColor="Black" />
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
