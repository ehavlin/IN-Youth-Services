using CivicHack.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CivicHack
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Write("<script language=javascript> var agree; agree = confirm('You must log in first!'); window.location='Login.aspx';</script>");
            }
        }

        protected void ButtonContact_Click(object sender, EventArgs e)
        {
            ContactUti con = new ContactUti();
            con.Name = TextBoxName.Text;
            con.Content = TextBoxContact.Text;
            con.insertLog();
            LabelMessage.Text = "Message sent!";
            ButtonContact.Visible = false;
            LabelMessage.Visible = true;
        }
    }
}