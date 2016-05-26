<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="volunteerDash.aspx.cs" Inherits="Web_App_Project.volunteerDash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                SCHEDULE
            </div>

            <div id="right">

                <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Rewards" Width="225px" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" ForeColor="Black" Text="Choose Organization" Width="225px" />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" ForeColor="Black" Text="Write New Report" Width="225px" />

            </div>
        </div>
    </div>
</asp:Content>
