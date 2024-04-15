using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HTMLWF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            table1.Attributes["dir"] = "rtl";
            LabelName.InnerHtml = "الأسم :";
            LabelAddress.InnerHtml = "العنوان :";
            BtnCreate.Value = "أنشاء";
        }

        protected void BtnEn_Click(object sender, EventArgs e)
        {
            table1.Attributes["dir"] = "ltr";
            LabelName.InnerHtml = "Name";
            LabelAddress.InnerHtml = "Address";
            BtnCreate.Value = "Create";
        }

        protected void BtnChangeColor_Click(object sender, EventArgs e)
        {
            table1.Style.Add("background-color", "Navy");
            LabelName.Style.Add("color", "White");
            LabelAddress.Style.Add("color", "White");
            BtnCreate.Style.Add("color", "White");
            BtnCreate.Style.Add("background-color", "black");
        }

        protected void BtnChangeCss_Click(object sender, EventArgs e)
        {
            Text3.Attributes.Add("class", "test1 test2");
            TextBox1.CssClass = "test1 test2";
        }

        protected void BtnChangeExternalCss_Click(object sender, EventArgs e)
        {
            StreamWriter sw = new StreamWriter(Server.MapPath("~/my.css"));
            sw.WriteLine("a{");
            sw.WriteLine("   text-decoration:none;");
            sw.WriteLine("   background:navy;");
            sw.WriteLine("   color:lightblue;");
            sw.WriteLine("   border:3px solid lightblue;");
            sw.WriteLine("   border-radius:7px;");
            sw.WriteLine("   padding:10px;");
            sw.WriteLine("   margin:2px;");
            sw.WriteLine("   font-size:20px;");
            sw.WriteLine("   display:inline-block;");
            sw.WriteLine("   transition:all 0.5s;");
            sw.WriteLine("}");
            sw.WriteLine("");
            sw.WriteLine("a:hover{");
            sw.WriteLine("   background:lightblue;");
            sw.WriteLine("   color:navy;");
            sw.WriteLine("   border:3px solid navy;");
            sw.WriteLine("   font-size:25px;");
            sw.WriteLine("   transition:all 0.5s;");
            sw.WriteLine("   margin-left:20px;");
            sw.WriteLine("}");
            sw.Close();

            string StrCss = "<link rel='Stylesheet' href='my.css'/>";
            Header.Controls.Add(new Literal() { Text = StrCss });
        }
    }
}