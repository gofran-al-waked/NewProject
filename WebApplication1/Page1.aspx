<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMaster.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="WebApplication1.test123" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        font-size: 200px;
    }
    .auto-style15 {
        color: #FF0000;
        font-size: x-large;
    }
    .auto-style16 {
        font-weight: bold;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="PanelData" runat="server">
    <div class="auto-style2">
        <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text="Page 1"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtName" runat="server" Height="32px" Width="242px" ValidationGroup="txtval"></asp:TextBox>
        <strong>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" CssClass="auto-style15" ErrorMessage="Enter Your Name!"></asp:RequiredFieldValidator>
        </strong>
        <br />
        <br />
        <strong>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Text="Submit" ValidationGroup="txtval" />
        <br />
        </strong>
    </div>
</asp:Panel>
</asp:Content>

