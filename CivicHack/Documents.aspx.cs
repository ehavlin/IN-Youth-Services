using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CivicHack
{
    public partial class Documents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Write("<script language=javascript> var agree; agree = confirm('You must log in to view documents'); window.location='Login.aspx';</script>");
            }
        }

        protected void ButtonBirth_Click(object sender, EventArgs e)
        {
            if (TextBoxBirth.Enabled)
            {
                TextBoxBirth.Enabled = false;
                ButtonBirth.Text = "Unlink PDF";
            }
            else
            {
                TextBoxBirth.Enabled = true;
                TextBoxBirth.Text = "";
                ButtonBirth.Text = "Submit";
            }             
        }

        protected void ButtonHealth_Click(object sender, EventArgs e)
        {
            if (TextBoxHealth.Enabled)
            {
                TextBoxHealth.Enabled = false;
                ButtonHealth.Text = "Unlink PDF";
            }
            else
            {
                TextBoxHealth.Enabled = true;
                TextBoxHealth.Text = "";
                ButtonHealth.Text = "Submit";
            }
        }

        protected void ButtonEducation_Click(object sender, EventArgs e)
        {
            if (TextBoxEducation.Enabled)
            {
                TextBoxEducation.Enabled = false;
                ButtonEducation.Text = "Unlink PDF";
            }
            else
            {
                TextBoxEducation.Enabled = true;
                TextBoxEducation.Text = "";
                ButtonEducation.Text = "Submit";
            }
        }
    }
}