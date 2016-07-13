<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestHash.aspx.cs" Inherits="Web_App_Project.ASPX_Files.Joanne.TestHash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="containerDash">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50 padding-bottom50">
            <div id="content">
                <div id="left">
                    
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Enter Input Text"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="350px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Select Algorithm"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Width="350px">
                        <asp:ListItem>SHA1</asp:ListItem>
                        <asp:ListItem>SHA256</asp:ListItem>
                        <asp:ListItem>SHA384</asp:ListItem>
                        <asp:ListItem>SHA512</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Select Salt Size&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" ForeColor="Black" Width="350px">8 Bytes (Cannot be changed)</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Computed Hash"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" ReadOnly="True" Width="350px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Compute Hash" Width="466px" ForeColor="Black" />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Enter Plain Text"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="350px" ForeColor="Black"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Select Algorithm"></asp:Label>
&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Black" Width="350px">
                        <asp:ListItem>SHA1</asp:ListItem>
                        <asp:ListItem>SHA256</asp:ListItem>
                        <asp:ListItem>SHA384</asp:ListItem>
                        <asp:ListItem>SHA512</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Enter Hash"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black" Width="350px"></asp:TextBox>
                    <br />
                    <br />
                    Result&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black" ReadOnly="True" Width="350px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Verify Hash" Width="466px" ForeColor="Black" />
                    
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">

</asp:Content>
