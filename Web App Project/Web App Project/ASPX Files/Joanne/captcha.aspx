<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="captcha.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.captcha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <div>
        <asp:Button ID="Button2" runat="server" OnClick="Captcha_Click" Text="Press" />
    </div>
    <asp:Label ID="Label2" runat="server" Text="Enter the Captcha that you see in the above image."></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button_Click"/>

    <br />
    <br />
    <asp:Label ID="Label3" runat="server"></asp:Label>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
