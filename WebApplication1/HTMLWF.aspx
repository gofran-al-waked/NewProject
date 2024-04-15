<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="HTMLWF.aspx.cs" Inherits="WebApplication1.HTMLWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style2 {
            font-size: medium;
            font-weight: bold;
            color: #CC0000;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            width: 240px;
            height: 74px;
        }
        .auto-style4 {
            width: 27px;
            height: 22px;
            color: #3333CC;
            font-size: medium;
        }
        .auto-style5 {
            color: #3333CC;
            font-size: medium;
        }
        .auto-style6 {
            width: 215px;
            height: 77px;
        }
        .auto-style7 {
            width: 112px;
            height: 35px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            font-size: x-large;
            color: #6666FF;
        }
        .auto-style10 {
            background-color: #333399;
        }
        input , label {
            font-size:20px;
        }
        .test1{
            border:2px solid green;
            border-radius:5px;
        }
        .test2{
            background-color:brown;
            color:bisque;
            font-size:20px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <p>
        <strong>
        <input id="Text1" class="auto-style1" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Text2" class="auto-style2" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Button1" class="auto-style1" type="button" value="button" onclick="window.Text2.value= 'Hello ' + window.Text1.value" />&nbsp;&nbsp;
        <img alt="" class="auto-style6" src="Images/images%20(1).jpg" /></strong></p>
            <hr />
            <p>
                &nbsp;</p>
            <p>
                <strong>username:<input id="Text3" runat="server" type="text" value="Gof" />&nbsp;&nbsp;&nbsp;&nbsp; email:
                <asp:TextBox ID="TextBox1" runat="server" Width="280px">gofran.alwaked@yahoo.com</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnChangeCss" runat="server" OnClick="BtnChangeCss_Click" Text="Change CSS" />
                </strong></p>
            <p>
                <strong>password:<input id="Password1" type="password" /></strong></p>
            <hr />
            <p>
                <strong>gender</strong> :
                <input id="Radio1" name="gender" type="radio" /><strong>Male</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Radio2" name="gender" type="radio" /><strong>Female</strong></p>
            <p>
                <strong>langauges</strong> :<select id="Select1" class="auto-style7" name="D1">
                    <option>Arabic</option>
                    <option>English</option>
                    <option>French</option>
                </select></p>
            <p>
                <input id="Hidden1" type="hidden" />
            </p>
            <p>
                <strong>upload file</strong> :<input id="File1" type="file" /></p>
            <p>
                <strong>other information:</strong></p>
            <p>
                <textarea id="TextArea1" class="auto-style3" cols="20" name="S1" rows="1"></textarea></p>
           
                <table style="border: medium solid #008080; width: 100%; background-color: #C0C0C0; font-size: large; font-weight: bolder; color: #000080;">
                    <tr class="auto-style9">
                        <td class="auto-style10">name</td>
                        <td class="auto-style10">address</td>
                        <td class="auto-style10">phone</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Ahmed</td>
                        <td class="auto-style8">Amman</td>
                        <td class="auto-style8">5555555</td>
                    </tr>
                    <tr>
                        <td>Noor</td>
                        <td>Irbid</td>
                        <td>4545545</td>
                    </tr>
                </table>
           
            <p>
                <strong>
                <input id="Checkbox1" class="auto-style4" type="checkbox" /></strong><span class="auto-style5"><strong>agree all conditions.</strong></span></p>
            <p>
                <input id="Submit1" type="submit" value="submit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" type="reset" value="reset" />&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                &nbsp;</p>
        </div>

        <table style="width:50%; background-color: #C1E1A0;" id="table1" runat="server" border="1">
            <tr>
                <td ><label id="LabelName" runat="server">Name:</label></td>
                <td ><input type="text" /></td>
                
            </tr>
            <tr>
               <td><label id="LabelAddress" runat="server">Address:</label></td>
               <td ><input type="text" /></td>
            </tr>
            <tr>
               <td colspan="2" ><input id="BtnCreate" runat="server" type="button" value="Create" /></td>
            
              
            </tr>
        </table>
    
    <p>
        <asp:Button ID="BtnAr" runat="server" OnClick="Button2_Click" Text="Arabic" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnEn" runat="server" Text="English" OnClick="BtnEn_Click" />
&nbsp;&nbsp;
        <asp:Button ID="BtnChangeColor" runat="server" Text="Change Color" OnClick="BtnChangeColor_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton5" runat="server">LinkButton</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="LinkButton6" runat="server">LinkButton</asp:LinkButton>
        </p>
        <asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
        <br />
        <br />
        <asp:Button ID="BtnChangeExternalCss" runat="server" OnClick="BtnChangeExternalCss_Click" Text="Change External CSS" />
    </form>
    </body>
</html>
