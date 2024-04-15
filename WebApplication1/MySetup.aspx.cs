using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MySetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCheckAgree.Text = "";
        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            if (!CheckBoxAgree.Checked && Wizard1.ActiveStepIndex > 1)
            {
                LabelCheckAgree.Text = "Please check agree button first!";
                Wizard1.ActiveStepIndex = 1;
            }
            else if (CheckBoxAgree.Checked) LabelCheckAgree.Text = "";

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Response.Write("<h1> Completed </h1>");
        }
    }
}