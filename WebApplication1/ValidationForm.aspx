<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationForm.aspx.cs" Inherits="WebApplication1.ValidationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #CCCCFF;
        }
        .auto-style2 {
            background-color:slateblue;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            text-align: center;
            width: 156px;
        }
        .auto-style5 {
            height: 23px;
            text-align: center;
            padding-top:10px;
        }
        .auto-style6 {
            color: #FF3300;
            font-size: x-large;
        }
        .auto-style7 {
            height: 23px;
            width: 156px;
        }
        .auto-style8 {
            width: 156px;
        }
        .auto-style9 {
            width: 191px;
        }
        .auto-style10 {
            height: 23px;
            width: 191px;
        }
        .auto-style11 {
            text-align: center;
            padding-bottom:10px;
        }
        strong{
            color:mistyrose;
        }
               
        .auto-style13 {
            height: 23px;
            color: #FFE4E1;
        }
        .auto-style14 {
            color: #FF3300;
        }
        .auto-style15 {
            font-size: large;
        }
       
        .auto-style16 {
            height: 23px;
            text-align: left;
            padding-top: 10px;
        }
       
    </style>
    <link rel="stylesheet"  href="my.css" />
</head>
<body style="background-color:lavender">
    <form id="form1" runat="server">
        <div>
        <table align="center" class="auto-style2" style="padding:30px;margin-top:40px; border-radius:7px;">
            <tr>
                <td colspan="3" class="auto-style11">
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Employee Data"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label2" runat="server" Text="Employee Number :  "></asp:Label>
                    </strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtNum" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style9"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNum" CssClass="auto-style6" ErrorMessage="Please Enter Employee Number.">*</asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label3" runat="server" Text="Employee Name : "></asp:Label>
                    </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" CssClass="auto-style6" ErrorMessage="Please Enter Employee Name.">*</asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label11" runat="server" Text="Address :  "></asp:Label>
                    </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAddress" CssClass="auto-style6" ErrorMessage="Please Enter Employee Address.">*</asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label10" runat="server" Text="City :  "></asp:Label>
                    </strong></td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownListCity" runat="server" AutoPostBack="True" CssClass="txt">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Irbid</asp:ListItem>
                        <asp:ListItem>Amman</asp:ListItem>
                        <asp:ListItem>Jarash</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListCity" CssClass="auto-style6" ErrorMessage="Please Select Employee City." InitialValue="select">*</asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Room Number</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtRoomNum" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRoomNum" CssClass="auto-style6" ErrorMessage="Please Enter Room Number.">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtRoomNum" CssClass="auto-style6" ErrorMessage="Please Enter Even Number Only!" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label12" runat="server" Text="Gender :  "></asp:Label>
                    </strong></td>
                <td class="auto-style7">
                    <strong>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="auto-style15" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    </strong>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style6" ErrorMessage="Please Select Your Gender!">*</asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label7" runat="server" Text="Salary : "></asp:Label>
                    </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtSalary" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSalary" CssClass="auto-style6" ErrorMessage="Please Enter Your Salary!">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtSalary" CssClass="auto-style6" ErrorMessage="Your Salary must be between 350  and 5000 only!" MaximumValue="5000" MinimumValue="350" Type="Integer">*</asp:RangeValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label8" runat="server" Text="Date Of Birth : "></asp:Label>
                    </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtBirthday" runat="server" CssClass="txt" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBirthday" CssClass="auto-style6" ErrorMessage="Please Enter Your Birth Date!">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtBirthday" CssClass="auto-style6" ErrorMessage="Your Birth Date Must Be Between 1960 and  2005!" MaximumValue="12/31/2005" MinimumValue="01/01/1960" Type="Date">*</asp:RangeValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label4" runat="server" Text="Email :  "></asp:Label>
                    </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" CssClass="auto-style6" ErrorMessage="Please Enter Your Email!">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="auto-style6" ErrorMessage="Your Email Must Follow This Pattern : (example@mail.com)" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label5" runat="server" Text="Password : "></asp:Label>
&nbsp;</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style10"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass" CssClass="auto-style6" ErrorMessage="Please Enter Your Password!">*</asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label6" runat="server" Text="Confirm Password : "></asp:Label>
                    </strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9"><strong>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPass" ControlToValidate="txtPass" CssClass="auto-style6" ErrorMessage="The Password Must Be Match!">*</asp:CompareValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="3">
                    <strong>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style14" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="3">
                    <asp:Button ID="btnCreate" runat="server" CssClass="mybtn" OnClick="btnCreate_Click" Text="Submit" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
