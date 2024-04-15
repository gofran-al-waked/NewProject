<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mercury.aspx.cs" Inherits="WebApplication1.Mercury" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
            color: #993333;
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
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Mercury"></asp:Label>
            <br />
            <br />
            <asp:Image ID="IMercury" runat="server" Height="273px" ImageUrl="~/planets/Mercury.jpg" Width="302px" />
            <br />
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3" NavigateUrl="~/WebForm1.aspx">Back</asp:HyperLink>
            </strong>
        </div>
    </form>
</body>
</html>
