using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnShowSession_Click(object sender, EventArgs e)
        {
            if (Session["SName"]!=null)
            LSession.Text = "Welcome to the session : "+Session["SName"].ToString();

            if (Session["SNames"] != null)
            {
                string[] names = (string[])Session["SNames"];
                foreach(string name in names)
                {
                    Response.Write("<h3 style='color:white;'>"+name+"<h3>");
                }
            }
        }
    }
}