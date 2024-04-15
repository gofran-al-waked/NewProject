<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="WebApplication1.login" %>
<style type="text/css">

        .auto-style6 {
            color: #C0C0C0;
            background-color: #333333;
        }
        .auto-style5 {
            text-align: center;
            height: 21px;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style1 {
            width: 84px;
        }
        .auto-style15 {
            width: 169px;
        }
        .auto-style16 {
            color: #FF0000;
            font-size: large;
        }
       
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style17 {
        height: 27px;
    }
    .auto-style18 {
        width: 169px;
        direction: ltr;
        height: 28px;
    }
    .auto-style19 {
        height: 27px;
        text-align: center;
    }
    .auto-style20 {
        width: 84px;
        height: 28px;
    }
    .auto-style21 {
        height: 28px;
    }
</style>
                        <table border="1" class="auto-style6">
                            <tr>
                                <td class="auto-style5" colspan="2"><strong>
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Login Form"></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"><strong>
                                    <asp:Label ID="Label1" runat="server" Text="Username : "></asp:Label>
                                    </strong></td>
                                <td class="auto-style18">
                                    <asp:TextBox ID="txtUser" runat="server" Width="149px" ValidationGroup="loginval"></asp:TextBox>
                                </td>
                                <td class="auto-style21">
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" CssClass="auto-style16" ErrorMessage="*" ValidationGroup="loginval"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><strong>
                                    <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>
                                    </strong></td>
                                <td class="auto-style15">
                                    <asp:TextBox ID="txtPass" runat="server" Width="149px" ValidationGroup="loginval"></asp:TextBox>
                                </td>
                                <td>
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" CssClass="auto-style16" ErrorMessage="*" ValidationGroup="loginval"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style17"><strong>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me!" />
                                    </strong></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style19"><strong>
                                    <asp:Label ID="lblMsg" runat="server" ForeColor="Lime"></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="2"><strong>
                                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Login" ValidationGroup="loginval" OnClick="Button1_Click" />
                                    </strong></td>
                            </tr>
                        </table>
                    
