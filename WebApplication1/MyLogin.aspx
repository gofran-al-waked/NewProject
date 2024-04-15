<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMaster.Master" AutoEventWireup="true" CodeBehind="MyLogin.aspx.cs" Inherits="WebApplication1.MyLogin" %>
<%@ Register src="login.ascx" tagname="login" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:login ID="login2" runat="server"  />
</asp:Content>
