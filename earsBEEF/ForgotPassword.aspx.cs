using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Mime;
using System.Web.Mail.SmtpMail;



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

            // check student
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

                
                // Const ToAddress As String = "you@youremail.com";
                //http://www.eggheadcafe.com/community/aspnet/7/10065297/send-email.aspx
                //'(1) Create the MailMessage instance
                //Dim mm As New MailMessage(UsersEmail.Text, ToAddress)

                //'(2) Assign the MailMessage's properties
                //mm.Subject = Subject.Text
                //mm.Body = Body.Text
                //mm.IsBodyHtml = False

                //'(3) Create the SmtpClient object
                //Dim smtp As New SmtpClient

                //'(4) Send the MailMessage (will use the Web.config settings)
                //smtp.Send(mm)

                //send to email
                MailMessage mail = new MailMessage("",email,"Reset Password","Here is your new password");
                SmtpClient client = new SmtpClient("",25);
                client.UseDefaultCredentials = true;
                client.Send(mail);
                //http://www.c-sharpcorner.com/uploadfile/scottlysle/emailattachmentscs08052008234321pm/emailattachmentscs.aspx
                 mv.ActiveViewIndex = 1;
            }
            else
            {
                Label5.Text = "Login ID and Email Unmatch";
            }

            // check staff
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

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            string pe = tbxPEmail.Text;
            string id1 = tbxId.Text;
            // check student
            EARS.Student s = DBManager.GetPasswordStud(id1 , pe);

            if (s != null)
            {
                mv.ActiveViewIndex = 2;
            }
            else
            {
                Label6.Text = "Invalid Email Password, Please Confirm the Password";
            }

            // check staff

            EARS.Staff sta = DBManager.GetPasswordStaff(id1, pe);

            if (sta != null)
            {
                mv.ActiveViewIndex = 2;
            }
            else
            {
                Label6.Text = "Invalid Email Password, Please Confirm the Password";
            }

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string p = tbxPwC2.Text;
            string id2 = tbxId.Text;

            // change student password
            EARS.Student stu = DBManager.GetPasswordStud(id2,p);

            if (stu != null)
            {
                EARS.Student stu1 = DBManager.UpdatePasswordStud(id2, p);
            }

            // change staff password

            EARS.Staff staff = DBManager.GetPasswordStaff(id2, p);

            if (stu != null)
            {
                EARS.Staff sta1 = DBManager.ValidatePasswordStaff(id2, p);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}