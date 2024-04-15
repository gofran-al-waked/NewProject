using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strUser = txtUser.Text;
            string strPass = txtPass.Text;
            if(strUser == "admin" && strPass == "admin")
            {
                lblMsg.Text = "Logged in succesfully";
            }
            else
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Incorrect Username or Password";
            }
        }
    }
}