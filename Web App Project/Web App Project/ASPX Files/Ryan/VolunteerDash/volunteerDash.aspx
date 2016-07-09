<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="volunteerDash.aspx.cs" Inherits="Web_App_Project.volunteerDash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    <asp:Label ID="Label1" runat="server" Text="Your prefered Organization is"></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ForeColor="Black" Width="255px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Sign Up for Events" ForeColor="Black" />
&nbsp;<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" Width="650px">
                    <Columns>
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
                        <asp:BoundField DataField="Tuesdau" HeaderText="Tuesdau" SortExpression="Tuesdau" />
                        <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
                        <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
                        <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdbConnectionString1 %>" DeleteCommand="DELETE FROM [Timetable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Timetable] ([Id], [Time], [Monday], [Tuesdau], [Wednesday], [Thursday], [Friday]) VALUES (@Id, @Time, @Monday, @Tuesdau, @Wednesday, @Thursday, @Friday)" SelectCommand="SELECT [Id], [Time], [Monday], [Tuesdau], [Wednesday], [Thursday], [Friday] FROM [Timetable] WHERE (([Monday] = @Monday) AND ([Tuesdau] = @Tuesdau) AND ([Wednesday] = @Wednesday) AND ([Thursday] = @Thursday) AND ([Friday] = @Friday))" UpdateCommand="UPDATE [Timetable] SET [Time] = @Time, [Monday] = @Monday, [Tuesdau] = @Tuesdau, [Wednesday] = @Wednesday, [Thursday] = @Thursday, [Friday] = @Friday WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Monday" Type="String" />
                        <asp:Parameter Name="Tuesdau" Type="String" />
                        <asp:Parameter Name="Wednesday" Type="String" />
                        <asp:Parameter Name="Thursday" Type="String" />
                        <asp:Parameter Name="Friday" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Monday" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Tuesdau" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Wednesday" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Thursday" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Friday" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter Name="Monday" Type="String" />
                        <asp:Parameter Name="Tuesdau" Type="String" />
                        <asp:Parameter Name="Wednesday" Type="String" />
                        <asp:Parameter Name="Thursday" Type="String" />
                        <asp:Parameter Name="Friday" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
            <div id="right">
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button5" runat="server" Text="Update Particulars" Width="225px" />
                <br />
                <br />
                <asp:Button CssClass="Dashbtn btn-skin btn-block" ID="Button1" runat="server" ForeColor="Black" Text="Rewards" Width="225px" />
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
