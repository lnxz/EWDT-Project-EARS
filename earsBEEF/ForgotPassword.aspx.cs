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
                 // generate password
                string pass = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                string p = "";
                Random r = new Random();
                for (int i = 0; i < 8; i++)
                {
                    p = p + pass.Substring(r.Next(0, pass.Length - 1), 1);
                }

                string password = p;

                EARS.Student stu = DBManager.UpdatePasswordStud(id, p);

                //send to email
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

            if (t != null)
            {
                // generate Password
                string passString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                string value = "";
                Random ra = new Random();
                for (int i = 0; i < 8; i++)
                {
                    value = value + passString.Substring(ra.Next(0, value.Length - 1), 1);
                }

                string password1 = value;

                //send email
                MailMessage mail = new MailMessage("", email, "Reset Password", "Here is your new password");
                SmtpClient client = new SmtpClient("", 999);
                client.UseDefaultCredentials = true;
                client.Send(mail);
                //http://www.c-sharpcorner.com/uploadfile/scottlysle/emailattachmentscs08052008234321pm/emailattachmentscs.aspx

                mv.ActiveViewIndex = 1;
            }
            else
            {
                Label5.Text = "Login ID and Email Unmatch";
            }
        }
    }
}