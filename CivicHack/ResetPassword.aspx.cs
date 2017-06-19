using CivicHack.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CivicHack
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonResetPassword_Click(object sender, EventArgs e)
        {
            CustomerUtil customer = new CustomerUtil().getUser(TextBoxUserName.Text);
            if (!String.IsNullOrEmpty(customer.email) && customer.email.Equals(TextBoxEmail.Text))
            {
                int rand = new Random().Next(100000, 999999);
                string newpwd = "new" + rand;
                customer.resetPassword(newpwd);

                LabelMessage.Visible = true;
                LabelMessage.Text = "An email has been sent with your new password.";
                LabelMessage.ForeColor = System.Drawing.Color.White;
                sendNotification(customer.email, newpwd);
            }
            else
            {
                LabelMessage.Visible = true;
                LabelMessage.Text = "The email or username does not exist.";
                LabelMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void sendNotification(string email, string newpwd)
        {
            //simple mail transfer protocol 
            SmtpClient smtpClient = new SmtpClient("smtp.office365.com", 587);
            smtpClient.UseDefaultCredentials = true;
            smtpClient.Credentials = new System.Net.NetworkCredential("email ", "password");
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress("tacyfds@gmail.com");
            mail.To.Add(new MailAddress(email));
            mail.Subject = "Reset Password";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "Your password has been reset as " + newpwd;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            smtpClient.Send(mail);
        }
    }
}