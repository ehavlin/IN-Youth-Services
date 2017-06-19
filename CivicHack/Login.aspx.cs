using CivicHack.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CivicHack
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            CustomerUtil customer = new CustomerUtil();
            customer.userName = TextBoxUserName.Text;
            customer.password = TextBoxPassword.Text;
            if (customer.checkPassword())
            {
                Session["user"] = TextBoxUserName.Text;
                LabelMessage.Enabled = true;
                LabelMessage.Visible = true;
                LabelMessage.Text = "Welcome Back!";
                LabelMessage.ForeColor = System.Drawing.Color.White;
                Response.AddHeader("refresh", "4; url=Home.aspx");
            }
            else
            {
                LabelMessage.Enabled = true;
                LabelMessage.Visible = true;
                LabelMessage.Text = "Invalid Username or Password";
                LabelMessage.ForeColor = System.Drawing.Color.Red;
                LinkButtonForgotPassword.Enabled = true;
                LinkButtonForgotPassword.Visible = true;
            }
        }
    }
}