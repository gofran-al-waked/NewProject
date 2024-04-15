<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MySetup.aspx.cs" Inherits="WebApplication1.MySetup" %>

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
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="20px" OnActiveStepChanged="Wizard1_ActiveStepChanged" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="15px" ForeColor="White" HorizontalAlign="Left" />
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="15px" ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="20px" VerticalAlign="Top" />
                <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                <WizardSteps>
                    <asp:WizardStep runat="server" StepType="Start" title="Step 1">
                        <asp:Panel ID="Panel1" runat="server" Height="115px" Width="260px">
                            step 1</asp:Panel>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Step 2">
                        <asp:Panel ID="Panel2" runat="server" Height="115px" Width="404px">
                            step 2<br />
                            <br />
                            <asp:CheckBox ID="CheckBoxAgree" runat="server" CssClass="auto-style1" Text="I Agree all terms and conditions." AutoPostBack="True" />
                            <br />
                            <asp:Label ID="LabelCheckAgree" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            <br />
                            <br />
                            <br />
                        </asp:Panel>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Step 3">
                        <asp:Panel ID="Panel3" runat="server" Height="115px" Width="260px">
                            step 3</asp:Panel>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Step 4">
                        <asp:Panel ID="Panel4" runat="server" Height="115px" Width="260px">
                            step 4</asp:Panel>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Step 5">
                        <asp:Panel ID="Panel5" runat="server" Height="115px" Width="260px">
                            step 5</asp:Panel>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Finish" Title="Finish">
                        <asp:Panel ID="Panel6" runat="server" Height="115px" Width="260px">
                            Finish</asp:Panel>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Complete">
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
