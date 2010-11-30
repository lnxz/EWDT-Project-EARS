using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace earsBEEF
{
    public class SendEmail
    {
        //private string toEmail;
        //private string fromEmail = "earsbeef@gmail.com";
        //private string subject;
        //private string body;

        //public SendEmail(string toEmail, string subject, string body)
        //{
        //    this.toEmail = toEmail;
        //    this.subject = subject;
        //    this.body = body;
        //}

        //public string ToEmail
        //{
        //    get { return toEmail; }
        //    set { toEmail = value; }
        //}

        //public string Subject
        //{
        //    get { return subject; }
        //    set { subject = value; }
        //}

        //public string Body
        //{
        //    get { return body; }
        //    set { body = value; }
        //}

        public static void sendingEmail (string toEmail, string subject, string body)
        {

                     MailMessage mail = new System.Net.Mail.MailMessage();
                    // set the log in authentication for the email so that can send email to others
                    // login and password for email.
                    NetworkCredential cred = new System.Net.NetworkCredential("earsbeef@gmail.com", "ewdtears");

                    mail.To.Add(toEmail); // add the receipt email
                    mail.Subject = subject; // add email subject
                    mail.From = new System.Net.Mail.MailAddress("earsbeef@gmail.com"); // sender
                    mail.IsBodyHtml = true; // if there is a hyperlink set to true
                    mail.Body = body;

                    //gateway for email to be send
                    System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com");
                    smtp.UseDefaultCredentials = false;
                    smtp.EnableSsl = true;
                    smtp.Credentials = cred;
                    smtp.Port = 587;
                    smtp.Send(mail);
        }
    }
}