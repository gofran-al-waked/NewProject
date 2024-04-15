<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mars.aspx.cs" Inherits="WebApplication1.Mars" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #993333;
            font-size: x-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            color: #FF3300;
            font-size: x-large;
        }
         body{
     background-color:black;
 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div>
        </div>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Mars"></asp:Label>
            </strong>
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="IMars" runat="server" Height="264px" ImageUrl="~/planets/Mars.jpg" Width="406px" />
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3" NavigateUrl="~/WebForm1.aspx">Back</asp:HyperLink>
            </strong>
        </div>
    </form>
</body>
</html>
