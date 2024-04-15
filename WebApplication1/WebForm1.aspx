<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Button2 {
            height: 22px;
        }
       
        .auto-style1 {  
            width: 100%;  
        }  
        .auto-style2 {  
            margin-left: 0px;  
            width: 105px;
        }  
        .auto-style3 {  
            width: 121px;  
        }  

        .auto-style4 {
            border-collapse: collapse;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            background-color: #F5DEB3;
        }
        .auto-style5 {
            margin-left: 0px;
            width: 105px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
        }

        .auto-style7 {
            width: 230px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            width: 4px;
        }
        .auto-style10 {
            font-size: x-large;
        }

        .auto-style11 {
            text-align: center;
            height: 130px;
        }

        .auto-style12 {
            font-size: x-large;
            color: #FF3300;
            text-decoration: underline;
        }
        .auto-style13 {
            color: #0066FF;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style14 {
            font-size: large;
            color: #FF6699;
        }
        .auto-style15 {
            font-size: x-large;
            font-weight: bold;
            color: #660033;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style17 {
            font-size: medium;
        }
        .auto-style18 {
            font-size: x-large;
            font-weight: bold;
            color: #800000;
        }
        .auto-style19 {
            font-size: xx-large;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: medium;
            color: #CC6699;
        }
        .auto-style21 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style22 {
            font-size: large;
            color: #660033;
        }
        .auto-style23 {
            font-size: large;
            color: #993366;
        }
        .auto-style24 {
            color: #666633;
            font-size: x-large;
        }
        .auto-style25 {
            color: #990033;
            font-size: large;
        }
        .auto-style26 {
            font-size: large;
            color: #3333FF;
        }
        .auto-style28 {
            text-align: center;
            font-size: x-large;
            color: #000099;
            height: 31px;
        }

        .auto-style29 {
            height: 23px;
        }
        .auto-style30 {
            font-weight: bold;
            color: #000066;
        }
        .auto-style31 {
            color: #FF3300;
        }
        .auto-style32 {
            margin-bottom: 72px;
        }
        .auto-style33 {
            text-align: left;
        }

        .auto-style34 {
            margin-top: 0px;
        }

        .auto-style36 {
            width: 815px;
            height: 149px;
        }
        .auto-style37 {
            text-align: left;
            width: 53px;
        }

        .auto-style39 {
            width: 58px;
        }
        .auto-style40 {
            width: 109px;
        }
        .auto-style41 {
            width: 58px;
            height: 26px;
        }
        .auto-style42 {
            width: 109px;
            height: 26px;
        }
        .auto-style43 {
            text-decoration: none;
            border-radius:5px;
            padding:2px;
         
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        
       <h3>Name:
           <asp:TextBox ID="TBName" runat="server"></asp:TextBox>
           <asp:Button ID="BtnSayHello" runat="server" OnClick="BtnSayHello_Click" Text="Say Hello" />
        &nbsp;</h3>
        <h3>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Check" />
        </h3>
        <div>
        <p class="auto-style33">
            <asp:FormView ID="FormViewEmps" runat="server" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="empsDetails" ForeColor="Black" GridLines="Both">
                <EditItemTemplate>
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    id:
                    <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                    <br />
                    salary:
                    <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' />
                    <br />
                    address:
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                    <br />
                    color:
                    <asp:TextBox ID="colorTextBox" runat="server" Text='<%# Bind("color") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    <table>
                        <tr>
                            <td class="auto-style39">name:</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">id:</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">salary:</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">address: </td>
                            <td class="auto-style40">
                                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">color:</td>
                            <td class="auto-style40">
                                <asp:TextBox ID="colorTextBox" runat="server" Text='<%# Bind("color") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style41">phone:</td>
                            <td class="auto-style42">
                                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" onClick="FormViewEmps_Insert" Text="Insert" BackColor="#009933" BorderColor="#009933" Font-Size="Large" Font-Underline="False" ForeColor="White"  CssClass="auto-style43"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" onClick="FormViewEmps_Cancel" CommandName="Cancel" Text="Cancel" BackColor="#FF3300" BorderColor="#FF3300" CssClass="auto-style43" Font-Size="Large" ForeColor="White" />
                </InsertItemTemplate>
                <ItemTemplate>
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Bind("id") %>' />
                    <br />
                    salary:
                    <asp:Label ID="salaryLabel" runat="server" Text='<%# Bind("salary") %>' />
                    <br />
                    address:
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                    <br />
                    color:
                    <asp:Label ID="colorLabel" runat="server" Text='<%# Bind("color") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    <asp:LinkButton ID="InsertDataButton" runat="server" CausesValidation="False" onClick="FormViewEmps_InsertData" CommandName="Cancel" Text="Insert Data" />

                </ItemTemplate>
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:FormView>
            </p>
            <p class="auto-style33">
                <asp:Label ID="LabelInsert" runat="server" BackColor="Silver" Font-Bold="True" Font-Overline="True" ForeColor="#990033"></asp:Label>
            </p>
            </div>
        <h3>
            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/Advertisements.xml" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" Width="451px">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        </h3>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="BtnClearSelection" runat="server" BackColor="#669900" ForeColor="#660033" OnClick="BtnClearSelection_Click" Text="Clear Selection" />
                    </td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="center" class="auto-style36">
                <tr>
                    <td class="auto-style37">
                        <asp:GridView ID="GridViewEmps" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="empsDetails" OnSelectedIndexChanged="GridViewEmps_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="LabelGridView" runat="server" CssClass="auto-style19"></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
        <p>&nbsp;</p>
        <h3>
            <asp:GridView ID="GridViewEmpsD" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="Emps" GridLines="Horizontal" OnSelectedIndexChanged="GridViewEmpsD_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </h3>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>
            <asp:DetailsView ID="DetailsViewEmps" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="empsDetails" GridLines="Horizontal" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
        </p>
        <p>
            <asp:XmlDataSource ID="empsDetails" runat="server" DataFile="~/empsDetails.xml"></asp:XmlDataSource>
        </p>
        <h3>
            <asp:Substitution ID="Substitution2" runat="server" MethodName="MyName" />
        </h3>
        <h3>
            <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/emps.xml"></asp:XmlDataSource>
        </h3>
        <p>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="empsDetails">
                <series>
                    <asp:Series Name="Series1" YValueType="Int32">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:XmlDataSource ID="Emps" runat="server" DataFile="~/emps.xml"></asp:XmlDataSource>
        </p>
        <p>
            <asp:DataList ID="DataList3" runat="server" CellPadding="4" DataSourceID="empsDetails" ForeColor="#333333" Width="230px" BorderColor="Lime" BorderWidth="2px" RepeatColumns="2">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="Maroon" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="Olive" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemStyle BackColor="#E3EAEB" />
                <ItemTemplate>
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    salary:
                    <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
                    <br />
                    address:
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
<br />
                    color:
                    <asp:Label ID="colorLabel" runat="server" Text='<%# Eval("color") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SeparatorStyle BackColor="Teal" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Fuchsia" />
            </asp:DataList>
        </p>
        <p>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="empsDetails">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="colorLabel" runat="server" Text='<%# Eval("color") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="colorTextBox" runat="server" Text='<%# Bind("color") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="colorTextBox" runat="server" Text='<%# Bind("color") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="colorLabel" runat="server" Text='<%# Eval("color") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">name</th>
                                        <th runat="server">id</th>
                                        <th runat="server">salary</th>
                                        <th runat="server">address</th>
                                        <th runat="server">color</th>
                                        <th runat="server">phone</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="colorLabel" runat="server" Text='<%# Eval("color") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </p>
        <p>
            <%--<asp:DataList ID="DataList4" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="ID" DataSourceID="TEST_GF" ForeColor="Black" GridLines="Vertical" Width="437px">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    FIRST_NAME:
                    <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Eval("FIRST_NAME") %>' />
                    <br />
                    LAST_NAME:
                    <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
                    <br />
                    PHONE:
                    <asp:Label ID="PHONELabel" runat="server" Text='<%# Eval("PHONE") %>' />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:DataList>--%><%--            <asp:SqlDataSource ID="TEST_GF" runat="server" ConnectionString="<%$ ConnectionStrings:TEST_GFCS %>" ProviderName="<%$ ConnectionStrings:TEST_GFCS.ProviderName %>" SelectCommand="SELECT * FROM [CUSTOMER]"></asp:SqlDataSource>--%>
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="5">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" FirstPageText="First Page " LastPageText="Last Page" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
            <strong>&nbsp;Rows :</strong>
            <asp:TextBox ID="TBNum" runat="server" Width="46px"></asp:TextBox>
            <asp:Button ID="BtnNum" runat="server" CssClass="auto-style34" Height="22px" OnClick="BtnNum_Click" Text="Ok" Width="39px" />
        </p>
        <h3>Button CommandName Example</h3>

      Click on one of the command buttons.

      <br />
        <br />
        <asp:TextBox ID="TxtNewItem" runat="server"></asp:TextBox>
        <asp:Button ID="BtnAddItem" runat="server" BackColor="#99CC00" OnClick="BtnAddItem_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnDelete" runat="server" BackColor="#FF3300" ForeColor="#CCCCCC" OnClick="BtnDelAll_Click" style="height: 26px" Text="Delete" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnDelAll" runat="server" BackColor="#993333" ForeColor="#CCCCCC" OnClick="BtnDelAll_Click" Text="DeleteAll" />
        <asp:BulletedList ID="BlLang" runat="server">
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
        </asp:BulletedList>
        index :&nbsp;
        <asp:TextBox ID="IndexNum" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnIndex" runat="server" OnClick="BtnIndex_Click" Text="Check" />
        <br />
        <br />
        <asp:Label ID="IndexLabel" runat="server" ForeColor="#66CCFF"></asp:Label>
        <br />
        <br />
        <asp:Label ID="DateLabel" runat="server" Text="Label"></asp:Label>
        <br />
 
<%--      <asp:Button id="Button3"
           Text="Sort Ascending"
           CommandName="Sort"
           CommandArgument="Ascending"
           OnCommand="CommandBtn_Click"
           runat="server"/>

       

      <asp:Button id="Button4"
           Text="Sort Descending"
           CommandName="Sort"
           CommandArgument="Descending"
           OnCommand="CommandBtn_Click" 
           runat="server"/>

      <br /><br />

      <asp:Button id="Button5"
           Text="Submit"
           CommandName="Submit"
           OnCommand="CommandBtn_Click" 
           runat="server"/>

       

      <asp:Button id="Button6"
           Text="Unknown Command Name"
           CommandName="UnknownName"
           CommandArgument="UnknownArgument"
           OnCommand="CommandBtn_Click" 
           runat="server"/>

       

      <asp:Button id="Button7"
           Text="Submit Unknown Command Argument"
           CommandName="Submit"
           CommandArgument="UnknownArgument"
           OnCommand="CommandBtn_Click"
           runat="server"/>
       --%>
      <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnOk" runat="server" OnClick="BtnOk_Click" Text="OK" />
&nbsp;&nbsp;
        <asp:Button ID="BtnShow" runat="server" OnClick="BtnShow_Click" Text="Show" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnHide" runat="server" OnClick="BtnHide_Click" Text="Hide" />
        <br />
        <br />
        <br />
        <asp:Calendar ID="MyCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="MyCalendar_SelectionChanged" Visible="False" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <br />
        <br />
        <asp:CheckBox ID="CheckBoxJava" runat="server" Text="Java" />
&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBoxCSharp" runat="server" Text="C#" />
&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBoxCPlus" runat="server" Text="C++" />
&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBoxPhp" runat="server" Text="PHP" />
&nbsp;&nbsp;
        <h5>
            <asp:CheckBox ID="CheckBoxAll" runat="server" AutoPostBack="True" ForeColor="#0099CC" OnCheckedChanged="CheckBoxAll_CheckedChanged" Text="Select All" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBoxNone" runat="server" AutoPostBack="True" ForeColor="#FF3300" OnCheckedChanged="CheckBoxUnAll_CheckedChanged" Text="None" />
        </h5>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSelected" runat="server" OnClick="BtnSelected_Click" Text="Show Selected" />
        <br />
        <br />
        <h4>
            <asp:Label ID="SelectedLabel" runat="server" ForeColor="#993333"></asp:Label>
        </h4>
        <br />
        <br />
        <asp:CheckBoxList ID="CheckBoxList3" runat="server" RepeatDirection="Horizontal" style="font-weight: 700; color: #990000; font-size: large">
            <asp:ListItem>Angular</asp:ListItem>
            <asp:ListItem>Vue</asp:ListItem>
            <asp:ListItem>React</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="BtnSelectAll" runat="server" OnClick="BtnSelectAll_Click" style="font-weight: 700; font-size: x-small; color: #3333FF" Text="Select All" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSelectNone" runat="server" OnClick="BtnSelectNone_Click" style="font-weight: 700; font-size: x-small; color: #FF3300" Text="Select None" />
        <br />
        <br />
        <asp:Button ID="BtnCkLSelected" runat="server" OnClick="BtnCkLSelected_Click" style="font-weight: 700; font-size: large; color: #33CC33" Text="Show Selected" />
&nbsp;&nbsp;
        <br />
        <br />
        <asp:BulletedList ID="BlLangChl" runat="server" style="font-weight: 700; color: #996633; font-size: medium">
        </asp:BulletedList>
        <br />
        <asp:DropDownList ID="DDLCity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLCity_SelectedIndexChanged" style="color: #3333CC; font-weight: 700; font-size: x-large">
            <asp:ListItem Value="I">Irbid</asp:ListItem>
            <asp:ListItem Value="A">Amman</asp:ListItem>
            <asp:ListItem Value="Z">Zarqa</asp:ListItem>
            <asp:ListItem Value="J">Jarash</asp:ListItem>
            <asp:ListItem Value="Aq">Aqaba</asp:ListItem>
            <asp:ListItem Selected="True">Select City</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="BtnDDL" runat="server" OnClick="BtnDDL_Click" style="color: #00CC00; font-weight: 700; font-size: x-large" Text="Show Selected" />
        <br />
        <br />
        <br />
        <asp:Label ID="LabelDDL" runat="server" style="color: #FF66FF; font-weight: 700; font-size: large"></asp:Label>
        <br />
        <br />
        <br />
        <asp:FileUpload ID="FUFile" runat="server" style="font-weight: 700; color: #660066; font-size: large" />
        <br />
        <br />
        <asp:Button ID="BtnShowInfo" runat="server" OnClick="Button3_Click" style="color: #33CC33; font-weight: 700; font-size: large" Text="Show Info" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnUpload" runat="server" OnClick="BtnUpload_Click" style="color: #33CC33; font-weight: 700; font-size: large" Text="Upload File" />
        <br />
        <br />
        <table align="center" class="auto-style4">
            <tr>
                <td colspan="2">
                    <h1 class="auto-style8">
                        <asp:Label ID="Label5" runat="server" style="font-weight: 700; text-decoration: underline ; align-content:center" Text="Personal Data"></asp:Label>
                    </h1>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" style="font-size: x-large; color: #0066FF" Text="Full Name :"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtName" runat="server" style="font-size: x-large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" style="font-size: x-large; color: #0066FF" Text="Address :"></asp:Label>
                </td>
                <td style="font-size: x-large" class="auto-style7">
                    <asp:TextBox ID="TxtAddress" runat="server" style="font-size: x-large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <table align="center">
                        <tr>
                            <td class="auto-style9">
                                <asp:Button ID="BtnSetData" runat="server" CssClass="auto-style10" Text="Set Data" Width="135px" OnClick="BtnSetData_Click" />
                            </td>
                            <td>
                                <asp:Button ID="BtnPrint" runat="server" CssClass="auto-style10" Text="Print Data" Width="135px" OnClick="BtnPrint_Click" />
                               
                            </td>
                             <br />
 <br />
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <asp:HiddenField ID="HFName" runat="server" Value="Empty Name" />
                    <asp:HiddenField ID="HFAddress" runat="server" Value="Empty Address" />
                </td>
            </tr>
        </table>
        <br />

        <br />
        <br />
        <br />
        <strong>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style12" NavigateUrl="~/WebForm2.aspx">Page 1</asp:HyperLink>
        </strong>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style13" NavigateUrl="https://www.google.com/" Target="_blank">Google</asp:HyperLink>
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="173px" ImageUrl="~/Images/4k-beautiful-colorful-abstract-wallpaper-photo.jpg" Width="224px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/images (1).jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:ImageButton ID="BtnImage" runat="server" Height="50px" ImageUrl="~/Images/images.jpg" OnClick="BtnImage_Click" Width="71px" />
        <br />
        <br />
        <strong>
        <asp:LinkButton ID="LBtnGoToPage1" runat="server" CssClass="auto-style10" OnClick="LBtnGoToPage1_Click">Go To Page1</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LBtnGoogle" runat="server" CssClass="auto-style10" OnClick="LBtnGoogle_Click">Go To Google</asp:LinkButton>
        </strong>
        <br />
        <br />
        <br />
        <asp:ImageMap ID="IMapPlanets" runat="server" Height="339px" ImageUrl="~/planets/Terrestrial_planet_sizes-58b836733df78c060e663946.jpg" Width="869px">
            <asp:CircleHotSpot NavigateUrl="~/Mercury.aspx" Radius="45" X="70" Y="170" />
            <asp:CircleHotSpot NavigateUrl="~/WebForm2.aspx" Radius="120" X="270" Y="170" />
            <asp:CircleHotSpot NavigateUrl="~/Earth.aspx" Radius="130" X="550" Y="170" />
            <asp:CircleHotSpot NavigateUrl="~/Mars.aspx" Radius="65" X="760" Y="170" />
        </asp:ImageMap>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImgMapBtn" runat="server" Height="267px" ImageUrl="~/Images/images.png" OnClick="ImageButton2_Click" Width="406px" />
        <br />
        <br />
        <strong>
        <asp:Label ID="ImgMapLabel0" runat="server" CssClass="auto-style14"></asp:Label>
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />

      <asp:Label id="Message" runat="server"  />
 
        <br />
        <br />
        <br />
        <asp:Button ID="LBBtn" runat="server" OnClick="LBBtn_Click" style="color: #00CC00; font-weight: 700; font-size: x-large" Text="Show Selected" />
        <br />
        <br />
        <asp:TextBox ID="TxtLBAdd" runat="server" CssClass="auto-style16"></asp:TextBox>
&nbsp;
        <asp:Button ID="BtnAddLB" runat="server" CssClass="auto-style17" OnClick="BtnAddLB_Click" Text="Add" />
 
        <p> <strong>
            <asp:ListBox ID="LBLang" runat="server" CssClass="auto-style15">
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>HTML</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
            </asp:ListBox>
            </strong></p>
        <p> &nbsp;<strong><asp:Label ID="LBLabel" runat="server" CssClass="auto-style14"></asp:Label>
            </strong></p>
        <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnView1" runat="server" CssClass="auto-style18" OnClick="BtnView1_Click" Text="view 1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnView2" runat="server" CssClass="auto-style18" OnClick="BtnView2_Click" Text="view 2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnView3" runat="server" CssClass="auto-style18" OnClick="BtnView3_Click" Text="view 3" />
            </strong></p>
        <p> 
            <asp:MultiView ID="MultiView3" runat="server">
                <asp:View ID="View1" runat="server">
                    <strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style19" Text="View 1"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGoV2" runat="server" CssClass="auto-style18" OnClick="BtnGoV2_Click" Text="Go to view 2" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    <asp:TextBox ID="TBViewstate" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="BtnViewState" runat="server" OnClick="BtnViewState_Click" Text=" Submit ViewState" Width="131px" />
                    &nbsp;<asp:Button ID="BtnSession" runat="server" OnClick="BtnSession_Click" Text="Submit Session" Width="122px" />
                </asp:View>
                <br />
                <asp:View ID="View2" runat="server">
                    <strong>
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style19" Text="View 2"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGoV3" runat="server" CssClass="auto-style18" OnClick="BtnGoV3_Click" Text="Go to view 3" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    <asp:Button ID="BtnShowViewState" runat="server" OnClick="BtnShowViewState_Click" Text="Show ViewState" Width="114px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnShowSession" runat="server" OnClick="BtnShowSession_Click" Text="Show Session" />
                    &nbsp;<strong><asp:Label ID="LViewState" runat="server" CssClass="auto-style31"></asp:Label>
                    </strong>
                </asp:View>
                <br />
                <asp:View ID="View3" runat="server">
                    <strong>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style19" Text="View 3"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGoV1" runat="server" CssClass="auto-style18" OnClick="BtnGoV1_Click" Text="Go to view 1" />
                    </strong>
                </asp:View>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:MultiView>
        </p>
        <p> &nbsp;</p>
        <p> </p>
        <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="show1" runat="server" CssClass="auto-style20" OnClick="show1_Click" Text="show1" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="hide1" runat="server" CssClass="auto-style20" OnClick="hide1_Click" Text="hide1" Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="show2" runat="server" CssClass="auto-style20" OnClick="show2_Click" Text="show2" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="hide2" runat="server" CssClass="auto-style20" OnClick="hide2_Click" Text="hide2" Width="83px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="show3" runat="server" CssClass="auto-style20" OnClick="show3_Click" Text="show3" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="hide3" runat="server" CssClass="auto-style20" OnClick="hide3_Click" Text="hide3" Width="76px" />
&nbsp;</strong></p>
        <asp:Panel ID="P1" runat="server" BorderColor="#990000" BorderStyle="Solid" BorderWidth="4px" Height="86px" Visible="False">
            <strong>
            <br />
            <asp:Label ID="Label11" runat="server" CssClass="auto-style19" Text="Form1"></asp:Label>
            </strong>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="P2" runat="server" BorderColor="#990000" BorderStyle="Solid" BorderWidth="4px" Height="86px" Visible="False">
            <strong>
            <br />
            <asp:Label ID="Label12" runat="server" CssClass="auto-style19" Text="Form2"></asp:Label>
            </strong>
        </asp:Panel>
        <p>
            <p> &nbsp;</p>
        </p>
        <asp:Panel ID="P3" runat="server" BorderColor="#990000" BorderStyle="Solid" BorderWidth="4px" Height="86px" Visible="False">
            <strong>
            <br />
            <asp:Label ID="Label13" runat="server" CssClass="auto-style19" Text="Form3"></asp:Label>
            </strong>
        </asp:Panel>
        <p>
            <p> &nbsp;</p>
            <p> <strong>
                <asp:Button ID="BtnAddControls" runat="server" CssClass="auto-style21" OnClick="BtnAddControls_Click" Text="Add Controls" />
                </strong></p>
        </p>
        <p> 
            <asp:PlaceHolder ID="PHControls" runat="server"></asp:PlaceHolder>
        </p>
        <p> &nbsp;</p>
        <p> <strong>
            <asp:RadioButton ID="RBMale" runat="server" Checked="True" CssClass="auto-style22" GroupName="Gender" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RBFemale" runat="server" CssClass="auto-style22" GroupName="Gender" Text="Female" />
            </strong></p>
        <p> <strong>
            <asp:Button ID="BtnRBShow" runat="server" CssClass="auto-style21" OnClick="BtnRBShow_Click" Text="Show Result" />
            </strong></p>
        <p> <strong>
            <asp:RadioButtonList ID="RBLMaritalStatus" runat="server" AutoPostBack="True" CssClass="auto-style23" OnSelectedIndexChanged="RBLMaritalStatus_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="S">Single</asp:ListItem>
                <asp:ListItem Value="M">Married</asp:ListItem>
                <asp:ListItem Value="D">Divorsed</asp:ListItem>
                <asp:ListItem Value="W">Widow</asp:ListItem>
            </asp:RadioButtonList>
            </strong></p>
        <p> &nbsp;</p>
        <p> <strong>
            <asp:Button ID="BtnMaritalStatus" runat="server" CssClass="auto-style24" Height="41px" OnClick="BtnMaritalStatus_Click" Text="Check" Width="107px" />
&nbsp;&nbsp;&nbsp; </strong>
            <asp:TextBox ID="TBRBLMaritalStatus" runat="server" CssClass="auto-style26"></asp:TextBox>
&nbsp;
            <asp:Button ID="BtnAddRBLMaritalStatus" runat="server" CssClass="auto-style26" OnClick="BtnAddRBLMaritalStatus_Click" Text="Add More" />
        </p>
        <p> <strong>
            <asp:Label ID="LMaritalStatus" runat="server" CssClass="auto-style25"></asp:Label>
            </strong></p>
        <p> 
            <asp:Substitution ID="SSMaritalStatus" runat="server" MethodName="ReturnMaritalStatus" />
        </p>
        <p> &nbsp;</p>
        <table border="1">
            <tr>
                <td class="auto-style28" colspan="2">Personal Data</td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style26" Text="Number"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:TextBox ID="TBNumber" runat="server" BackColor="#CCCCCC" BorderColor="#6600CC" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style17" ForeColor="#000066"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>
                    <asp:Label ID="Label15" runat="server" CssClass="auto-style26" Text="Name"></asp:Label>
                    </strong></td>
                <td class="auto-style29"><strong>
                    <asp:TextBox ID="TBName2" runat="server" BackColor="#CCCCCC" BorderColor="#6600CC" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style17" ForeColor="#000066"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style26" Text="Address"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:TextBox ID="TBAddress" runat="server" BackColor="#CCCCCC" BorderColor="#6600CC" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style17" ForeColor="#000066"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2"><strong>
                    <asp:Button ID="BtnAddData" runat="server" BackColor="#6699FF" BorderColor="#003399" CssClass="auto-style30" OnClick="BtnAddData_Click" Text="Add Your Data" />
                    </strong></td>
            </tr>
        </table>
        <p> </p>
        <asp:Panel ID="PanelTable1" runat="server">
            <asp:Table ID="TData" runat="server" Height="67px" Width="347px">
                <asp:TableRow runat="server" BackColor="Gray" Font-Bold="True" Font-Size="X-Large" ForeColor="#00CCFF">
                    <asp:TableCell runat="server">Number</asp:TableCell>
                    <asp:TableCell runat="server">Name</asp:TableCell>
                    <asp:TableCell runat="server">Address</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#CCCCCC" Font-Bold="True" ForeColor="Blue">
                    <asp:TableCell runat="server">1</asp:TableCell>
                    <asp:TableCell runat="server">Ahmed</asp:TableCell>
                    <asp:TableCell runat="server">Jordan</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <p class="auto-style33"> 
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile1.xml"></asp:XmlDataSource>
        </p>
        <p class="auto-style33"> &nbsp;</p>
        <p class="auto-style33"> <strong>
            <asp:DropDownList ID="DropDownListColors" runat="server" AutoPostBack="True" CssClass="auto-style10" DataSourceID="XmlDataSource1" DataTextField="txt" DataValueField="val" OnSelectedIndexChanged="DropDownListColors_SelectedIndexChanged">
            </asp:DropDownList>
            </strong></p>
        <p class="auto-style33"> <strong>
            <asp:RadioButtonList ID="RadioButtonListColors" runat="server" AutoPostBack="True" CssClass="auto-style17" DataSourceID="XmlDataSource1" DataTextField="txt" DataValueField="txt" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
            </asp:RadioButtonList>
            </strong></p>
        <p> </p>
        <asp:Panel ID="PanelColors" runat="server" BorderStyle="Solid" CssClass="auto-style32" Height="90px" Width="215px">
        </asp:Panel>
        <p> &nbsp;</p>
        <p> Provide Following Details:</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Email" runat="server" TextMode="Email" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
          <td class="auto-style2"></td>
                <td>
                    <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label3" runat="server" ></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" ></asp:Label>
        <br />

        <div>
            <p>The DataList shows data of DataTable:</p>
        </div>
        <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table  cellpadding="2" cellspacing="0" border="1" style="width: 300px; height: 100px;   
                border: dashed 2px #04AFEF; background-color: #FFFFFF">

                <tr>
                    <td>
                        <b>ID : </b><span><%#Eval("ID") %></span><br />
                        <b>Name : </b><span><%#Eval("Name") %></span><br />
                        <b>Email : </b><span><%#Eval("Email") %></span><br />
                    </td>

                </tr>
            </table>
        </ItemTemplate>
        </asp:DataList>

        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1"></asp:DataList>

    
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TEST_GFConnectionString2 %>" SelectCommand="SELECT * FROM [CUSTOMER]"></asp:SqlDataSource>

         <div>  
            <p>This DataGrid contains DataTable records </p>  
            <asp:DataGrid ID="DataGrid1" runat="server">  
        </asp:DataGrid>  
        </div>  
           <p>Select a City of Your Choice</p>  
        <div>  
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>London</asp:ListItem>
            <asp:ListItem>Dubai</asp:ListItem>
            <asp:ListItem>LosAnglos</asp:ListItem>
        </asp:DropDownList>
            </div>
        <br />
        <asp:Button ID="DropDownListButton" runat="server" Text="Submit" OnClick="DropDownListButton_Click" />
        <br />
        <br />
        <asp:Label ID="DropDownListLabel" runat="server"></asp:Label>

       <h3> this is cookie : <asp:Label ID="cookieLabel" runat="server" Text="Label" Font-Size="Larger" Font-Bold="true" ForeColor="SpringGreen"></asp:Label> </h3>
     
        <h3>
            <asp:Label ID="labelId" runat="server">User Name</asp:Label>  
<asp:TextBox ID="UserName" runat="server" ToolTip="Enter User Name"></asp:TextBox>  
        </h3>  
        <div>
          <asp:Label ID="CookieWordLabel" runat="server" Text="Select computer type please : "></asp:Label>  
    <br />  
    <br />  
    <asp:CheckBox ID="apple" runat="server" Text="Apple" />  
    <br />  
    <asp:CheckBox ID="dell" runat="server" Text="Dell" />  
    <br />  
    <asp:CheckBox ID="lenevo" runat="server" Text="Lenevo" />  
    <br />  
    <asp:CheckBox ID="acer" runat="server" Text="Acer" />  
    <br />  
    <asp:CheckBox ID="sony" runat="server" Text="Sony" />  
    <br />  
    <asp:CheckBox ID="wipro" runat="server" Text="Wipro" />  
    <br />  
    <br />  
    <asp:Button ID="CookieWord" runat="server" OnClick="CookieWord_Click" Text="Submit" />  
    <p>  
        <asp:Label ID="CookieWordLabel2" runat="server" ></asp:Label>  
    </p>  


        </div>
        <p>  
        <asp:Button ID="SubmitButton" runat="server" Text="Submit"  OnClick="SubmitButton_Click" />  
        </p>  
        <br />                
        <br />
        <br />
        <asp:Label ID="userInput" runat="server"></asp:Label>  
        <div>
             <asp:Label ID="Label1" runat="server" Text="Username"  
                 ForeColor ="#333333" BackColor ="#e8e8e3"
                 BorderColor="YellowGreen" BorderStyle="Ridge" 
                  Font-Bold="true" Font-Underline="true"
                  BorderWidth="3px" Height="30px" 
                   Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="font-weight: 700; color: #990033" ToolTip="hello" ></asp:TextBox>
        </div>
        <div>
             <asp:Label ID="Label2" runat="server" Text="Password"  
     ForeColor ="#333333" BackColor ="#e8e8e3"
     BorderColor="YellowGreen" BorderStyle="Ridge" 
      Font-Bold="true" Font-Underline="true"
      BorderWidth="3px" Height="30px" 
       Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Text="**********" 
              Columns="20" TextMode="Password" MaxLength="20" CausesValidation="true" ></asp:TextBox>
        </div>
        <div>
               <asp:TextBox ID="TextBox3" runat="server" Text="write here !!"  Rows="4"
               Columns="100" TextMode="MultiLine" MaxLength="500"
               AutoPostBack="true"  AutoCompleteType="Search" ReadOnly="true"></asp:TextBox>

        </div>
         <div>
  <asp:Button ID="Button1" runat="server" Text="Click Me"  OnClick="Button1_Click"    ToolTip="click here !"  BorderStyle="Solid"/>
             &nbsp;</div>
        <div>
            <div>
                <asp:AdRotator ID="AdRotator2" runat="server"
                    AlternateTextField="this is image" BackColor="WhiteSmoke"/>
            </div>
          
                           <div><asp:RadioButton ID="RadioButton1" runat="server"  Text="male" GroupName="gender" />
                               <asp:RadioButton ID="RadioButton2" runat="server"  Text="female" GroupName="gender" />
                               <br />
                                 <asp:Label runat="server" id="genderId" Font-Bold="true" ForeColor="YellowGreen"></asp:Label>
                                <br />
                                 <asp:Button ID="genderButton" runat="server" Text="Submit" OnClick="genderButton_Click" style="width: 61px" />  
                          </div>
                      

            <div><asp:CheckBoxList ID="CheckBoxList1" runat="server">
 
</asp:CheckBoxList></div>
            
                           <div> <asp:BulletedList ID="BulletedList1" runat="server"></asp:BulletedList></div>
           
                           <div> <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2023-03-01"
                               CaptionAlign="Top" CellPadding="2" CellSpacing ="2"
                                DayHeaderStyle-BackColor="Violet" DayHeaderStyle-Font-Bold="true"
                               Caption="this is calender!" DayStyle-BackColor="Tan" Font-Bold="true" FirstDayOfWeek="Sunday"
                                DayStyle-BorderStyle="Solid"  NextPrevStyle-BackColor="Wheat" OtherMonthDayStyle-BackColor="SteelBlue"
                               SelectedDayStyle-Font-Bold="true" SelectorStyle-BackColor="Yellow" OtherMonthDayStyle-BorderColor="Tomato"
                                OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar></div>
           
                              <asp:Label runat="server" ID="ShowDate"  Font-Bold="true" ForeColor="YellowGreen" ></asp:Label>  
                          
            
            <div> <h2>Select Number :</h2>
               <asp:CheckBox ID="CheckBox1" runat="server"  CssClass="auto-style3"  Text="1"/>
               <asp:CheckBox ID="CheckBox2" runat="server"  CssClass="auto-style3" Text="2"/>
               <asp:CheckBox ID="CheckBox3" runat="server"  CssClass="auto-style3" Text="3"/> 

                <p> <asp:Button ID="CheckBoxButton" runat="server" Text="Done" OnClick="CheckBoxButton_Click"  /></p>
                <br />
                
                    <h3>Selected Courses : <asp:Label ID="ShowCourses" runat="server"   Font-Bold="true" ForeColor="YellowGreen"></asp:Label></h3>
                

            </div>
             <div>  
            <p>It is a hyperlink style button</p>  
            </div>  
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" AccessKey="y">javatpoint</asp:LinkButton>  
           <p>  
             <asp:Label ID="LinkButtonLabel" runat="server"  Font-Bold="true" ForeColor="Tomato"></asp:Label>  
           </p> 
            
                           <div> <asp:CheckBoxList ID="CheckBoxList2" runat="server"></asp:CheckBoxList></div>
           
                           <div> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>
           
                           <div> 
                               <p>Browse to Upload File</p>  
                               <asp:FileUpload ID="FileUpload1" runat="server" />

                                 <p>Browse to Upload Multiple Files</p>  
                               <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" />    
                                 <p>  
                            <asp:Button ID="FileUploadButton" runat="server" Text="Upload File" OnClick="FileUploadButton_Click" />  
                                   </p>  

                           <p>  
                        <asp:Label runat="server" ID="FileUploadStatus"></asp:Label>  
                          </p>  
                           </div>
                         <div style="border:solid red"> 
                              <p> Click the button to download a file :</p>  

                             <asp:Button ID="DownloadButton" runat="server" Text="Download" OnClick="DownloadButton_Click"  Font-Bold="true" BackColor="Turquoise" ForeColor="WhiteSmoke" />
                             <asp:Label ID="DownloadLabel" runat="server"></asp:Label>
                         </div>
                           <div> <asp:HiddenField ID="HiddenField1" runat="server" /></div>
           
                           <div>    <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="https://www.google.com/" Font-Underline="false">Google</asp:HyperLink></div>
        
                           <div> <asp:Image ID="Image1" runat="server" /></div>
           
                           <div> <input id="Button2" type="button" value="button" /></div>
         
                           <div>   <asp:ImageButton ID="ImageButton1" runat="server" /></div>
            
                           <div><asp:ImageMap ID="ImageMap1" runat="server"></asp:ImageMap></div>
            
                           <div><asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton></div>
           
      
                           <div>      <asp:Literal ID="Literal1" runat="server"></asp:Literal></div>
           
                           <div> <asp:Localize ID="Localize1" runat="server"></asp:Localize></div>
            
                           <div><asp:MultiView ID="MultiView2" runat="server"></asp:MultiView></div>
            
                           <div><asp:Panel ID="Panel1" runat="server"></asp:Panel></div>
            
                           <div><asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder></div>
                           

                           <div>  <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList></div>
           
                           <div> <asp:Substitution ID="Substitution1" runat="server" /></div>
        
                           <div>    <asp:Table ID="Table1" runat="server"></asp:Table></div>
                           <div><asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1">
    <WizardSteps>
        <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1"></asp:WizardStep>
        <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2"></asp:WizardStep>
    </WizardSteps>
</asp:Wizard></div>
            
        </div>
    </form>
    <p>
     </p>        
</body>
</html>
