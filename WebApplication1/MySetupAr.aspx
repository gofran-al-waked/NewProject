<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MySetupAr.aspx.cs" Inherits="WebApplication1.MySetupAr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" dir="rtl">
            <tr>
                <td>
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" CssClass="auto-style1" FinishCompleteButtonText="تـــــم" FinishPreviousButtonText="الـــســابق" Font-Names="Verdana" Font-Size="X-Large" Height="200px" StartNextButtonText="الــــتــالي" StepNextButtonText="الــــتــالي" StepPreviousButtonText="الـــســابق" Width="450px">
                        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                        <SideBarButtonStyle ForeColor="White" />
                        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" StepType="Start" title="خطوة البداية">
                                <asp:Panel ID="Panel1" runat="server" Height="200px" Width="321px">
                                    <asp:Label ID="Label1" runat="server" Text="خطوة البداية"></asp:Label>
                                </asp:Panel>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="الخطوة الثانية">
                                <asp:Panel ID="Panel2" runat="server" Height="200px" Width="321px">
                                    <asp:Label ID="Label2" runat="server" Text="الخطوة الثانية"></asp:Label>
                                </asp:Panel>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="الخطوة الثالثة">
                                <asp:Panel ID="Panel3" runat="server" Height="200px" Width="321px">
                                    <asp:Label ID="Label3" runat="server" Text="الخطوة الثالثة"></asp:Label>
                                </asp:Panel>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="الخطوة الرابعة">
                                <asp:Panel ID="Panel4" runat="server" Height="200px" Width="321px">
                                    <asp:Label ID="Label4" runat="server" Text="الخطوة الرابعة"></asp:Label>
                                </asp:Panel>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Finish" Title="الخطوة الأخيرة">
                                <asp:Panel ID="Panel5" runat="server" Height="200px" Width="321px">
                                    <asp:Label ID="Label5" runat="server" Text="الخطوة  الأخيرة"></asp:Label>
                                </asp:Panel>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Complete" Title="خطوة النهاية">
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
