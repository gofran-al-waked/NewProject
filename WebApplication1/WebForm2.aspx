<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
            color: #993333;
            text-decoration: underline;
        }
         body{
     background-color:black;
 }
        .auto-style4 {
            color: #CCCCCC;
            margin-left: 0px;
            background-color: #000000;
        }
        .auto-style5 {
            color: #CC3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div class="auto-style2">
        <div>
        </div>
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Page 1"></asp:Label>
                <br />
                <br />
                <span class="auto-style3">Venus</span><br />
                </strong>
            </div>
            <asp:Image ID="IVenus" runat="server" Height="271px" ImageUrl="~/planets/venus.jpg" Width="386px" />
            <br />
            <br />
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3" NavigateUrl="~/WebForm1.aspx">Back</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnShowSession" runat="server" CssClass="auto-style4" OnClick="BtnShowSession_Click" Text="Show Session" />
            <asp:Label ID="LSession" runat="server" CssClass="auto-style5"></asp:Label>
            </strong>
        </div>
    </form>
</body>
</html>
