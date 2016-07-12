<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportsApproved.aspx.cs" Inherits="Web_App_Project.Ryan.ReportsApproved" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CaseNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="650px" OnSelectedIndexChanged="OnSelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="CaseNo" HeaderText="CaseNo" ReadOnly="True" SortExpression="CaseNo" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                            <asp:BoundField DataField="TypeofVolunteer" HeaderText="TypeofVolunteer" SortExpression="TypeofVolunteer" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" DeleteCommand="DELETE FROM [Report] WHERE [CaseNo] = @CaseNo" InsertCommand="INSERT INTO [Report] ([CaseNo], [Date], [Duration], [TypeofVolunteer], [AdditionalFeedback], [IsDraft], [Status]) VALUES (@CaseNo, @Date, @Duration, @TypeofVolunteer, @AdditionalFeedback, @IsDraft, @Status)" ProviderName="<%$ ConnectionStrings:localdbConnectionString1.ProviderName %>" SelectCommand="SELECT [CaseNo], [Date], [Duration], [TypeofVolunteer], [Photo], [AdditionalFeedback], [IsDraft], [Status] FROM [Report] WHERE [Status]='approved'" UpdateCommand="UPDATE [Report] SET [Date] = @Date, [Duration] = @Duration, [TypeofVolunteer] = @TypeofVolunteer, [AdditionalFeedback] = @AdditionalFeedback, [IsDraft] = @IsDraft, [Status] = @Status WHERE [CaseNo] = @CaseNo">
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
                            <asp:Parameter Name="Status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Duration" Type="String" />
                            <asp:Parameter Name="TypeofVolunteer" Type="String" />
                            <asp:Parameter Name="AdditionalFeedback" Type="String" />
                            <asp:Parameter Name="IsDraft" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="CaseNo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Case Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Duration"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Organization"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Additional Feedback"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" ForeColor="Black" Height="100px" TextMode="MultiLine" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Photo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" />
                </div>
            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button2" runat="server" Text="Pending Reports" ForeColor="Black" Height="108px" OnClick="Button2_Click" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button3" runat="server" Text="Rejected Reports" ForeColor="Black" Height="105px" OnClick="Button3_Click" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button4" runat="server" Text="New Applicants" ForeColor="Black" Height="105px" OnClick="Button4_Click" />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button5" runat="server" Text="Volunteer Roster" ForeColor="Black" Height="102px" OnClick="Button5_Click" />
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
