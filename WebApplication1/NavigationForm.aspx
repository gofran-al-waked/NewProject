<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NavigationForm.aspx.cs" Inherits="WebApplication1.NavigationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 920px;
            height: 590px;
        }
        .auto-style3 {
            width: 651px;
            height: 271px;
        }
    </style>
</head>
<body style="margin:0">
    <form id="form1" runat="server">
        <div>
            <strong>
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" CssClass="popout" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Width="100%">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Text="Settings" Value="Settings">
                        <asp:MenuItem ImageUrl="~/Images/images.jpg" NavigateUrl="~/WebForm2.aspx" Target="frame1" Text="System" Value="System"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/MySetupAr.aspx" Target="frame1" Text="Operations" Value="Operations"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Screens" Value="Screens">
                        <asp:MenuItem NavigateUrl="~/Mercury.aspx" Target="frame1" Text="Employee" Value="Employee"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Mars.aspx" Target="frame1" Text="Department" Value="Department"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Maintain" Value="Maintain">
                        <asp:MenuItem NavigateUrl="~/Earth.aspx" Target="_blank" Text="Data" Value="Data"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/WebForm1.aspx" Target="_blank" Text="Screen" Value="Screen"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Options" Value="Options">
                        <asp:MenuItem NavigateUrl="~/HTMLWF.aspx" Target="_blank" Text="Add new option" Value="Add new option"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/MySetup.aspx" Target="_blank" Text="Delete option" Value="Delete option"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            </strong>
            <iframe name="frame1" class="auto-style2"></iframe> 
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows">
                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                            <Nodes>
                                <asp:TreeNode SelectAction="None" Text="Group 1" Value="Group 1">
                                    <asp:TreeNode NavigateUrl="~/Earth.aspx" Target="my" Text="page1" Value="page1"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/MySetup.aspx" Target="my" Text="page2" Value="page2"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Mercury.aspx" Target="my" Text="page3" Value="page3"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode SelectAction="Expand" Text="Group2" Value="Group2">
                                    <asp:TreeNode NavigateUrl="~/ValidationForm.aspx" Target="my" Text="page4" Value="page4"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/WebForm1.aspx" Target="my" Text="page5" Value="page5"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                            <NodeStyle Font-Names="Tahoma" Font-Size="20pt" ForeColor="Black" HorizontalPadding="8px" NodeSpacing="0px" VerticalPadding="0px" />
                            <ParentNodeStyle Font-Bold="False" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                    </td>
                    <td><iframe name="my" class="auto-style3"></iframe></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
