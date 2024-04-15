<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Earth.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #993333;
            font-size: x-large;
        }
        .auto-style3 {
            color: #FF0000;
            font-size: x-large;
        }
        body{
            background-color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <br />
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Earth"></asp:Label>
            </strong>
            <br />
            <br />
            <br />
            <asp:Image ID="IEarth" runat="server" Height="356px" ImageUrl="~/planets/earth.jpg" Width="427px" />
            <br />
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3" NavigateUrl="~/WebForm1.aspx">Previous</asp:HyperLink>
            </strong>
        </div>
   </form>
 
</body>
</html>
