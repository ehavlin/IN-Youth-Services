using CivicHack.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CivicHack
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            CustomerUtil customer = new CustomerUtil();
            customer.userName = TextBoxUsername.Text;
            customer.fName = TextBoxFName.Text;
            customer.lName = TextBoxLName.Text;
            customer.email = TextBoxEmail.Text;
            customer.password = TextBoxPassword.Text;
            customer.age = TextBoxAge.Text;
            if (RadioButtonFemale.Checked)
            {
                customer.gender = 'F';
            }
            else
            {
                customer.gender = 'M';
            }
            if (!customer.checkIfUserExists())
            {
                customer.insertData();
                LabelWelcome.Text = "You have registered with Indiana Youth Services successfully!";
                LabelWelcome.ForeColor = System.Drawing.Color.Red;
                Response.AddHeader("refresh", "4; url=Login.aspx");
            }
            else
            {
                LabelWelcome.Text = "User already exists!";
                LabelWelcome.ForeColor = System.Drawing.Color.Red;
                Response.AddHeader("refresh", "4; url=Registration.aspx");
            }
        }
    }
}