using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Mime;



namespace EARS
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mv.ActiveViewIndex = 0;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = tbxId.Text;
            string email = tbxEmail.Text;

            EARS.Student s = DBManager.ValidatePasswordStud(id, email);

            if (s != null)
            {
                 // generate password and send to email
                MailMessage mail = new MailMessage("",email,"Reset Password","here is your new password");
                SmtpClient client = new SmtpClient("",999);
                client.UseDefaultCredentials = true;
                client.Send(mail);
                //http://www.c-sharpcorner.com/uploadfile/scottlysle/emailattachmentscs08052008234321pm/emailattachmentscs.aspx
                 mv.ActiveViewIndex = 1;
            }
            else
            {
                Label5.Text = "Login ID and Email Unmatch";
            }

            EARS.Staff t = DBManager.ValidatePasswordStaff(tbxId.Text, tbxEmail.Text);

            if (t.StaffEmail.Equals(id) && t.PersonalEmail.Equals(email))
            {
                mv.ActiveViewIndex = 1;
            }
            else
            {
                Label5.Text = "Login ID and Email Unmatch";
            }
        }

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {

        }
    }
}