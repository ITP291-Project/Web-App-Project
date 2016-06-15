<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.forgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">   

<head>
    <title>Forgot Password?</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="align-center">
        <h1>Reset Password.</h1>
        <h3>Reset your password</h3>
    </div>
    <div class="align-right">
        
        <p class="label">
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        </p>
        <p>
            <input id="Text1" style="width: 250px" type="text" /></p>
        <p class="label">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </p>
        <p>
            <input id="Password1" style="width: 250px" type="password" /></p>
        <p class="label">
            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
        </p>
        <p>
            <input id="Password2" style="width: 250px" type="password" /></p>
        <p class="label">
            <asp:Button ID="Button1" runat="server" Text="Reset" />
        </p>
    </div>
</body>

</asp:Content>

 