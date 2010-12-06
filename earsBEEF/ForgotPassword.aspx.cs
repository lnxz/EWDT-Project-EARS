using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;



namespace EARS
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        public static string id;
        public static string pe;

        protected void Page_Load(object sender, EventArgs e)
        {
            mv.ActiveViewIndex = 0;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            id = tbxId.Text;
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

                    earsBEEF.SendEmail.sendingEmail(email, "Password for EARs System", "Here is your email Password for ur account :" + p);
                    mv.ActiveViewIndex = 1;
                    // working.. ^^^^^

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
                        value = value + passString.Substring(ra.Next(0, passString.Length - 1), 1);
                    }

                    string password1 = value;

                    DBManager.UpdatePasswordStaff(id,value);
                    earsBEEF.SendEmail.sendingEmail(email, "Password for EARs System", "Here is your email Password for ur account :" + value);
                    mv.ActiveViewIndex = 1;
                }
                else
                {
                    Label5.Visible = true;
                    Label5.Text = "Login ID and Email Unmatch";
                }
            }
        // done ^^^^^

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            pe = tbxPEmail.Text;
            // check student

                EARS.Student s = DBManager.GetPasswordStud(id, pe);

                if (s != null)
                {
                    mv.ActiveViewIndex = 2;
                }
                else
                {
                    Label6.Text = "Invalid Email Password, Please Confirm the Password";
                }

                //check staff
                EARS.Staff sta = DBManager.GetPasswordStaff(id, pe);

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

            // change student password
            EARS.Student stu = DBManager.GetPasswordStud(id, pe);

                if (stu != null)
                {
                    EARS.Student stu1 = DBManager.UpdatePasswordStud(id, p);
                    Label7.Text = "Change Password Successful";
                    mv.ActiveViewIndex = 3;
                }
                else
                {
                    Label7.Visible = true;
                    Label7.Text = "Error";
                }
          

                // change staff password
                EARS.Staff staff = DBManager.GetPasswordStaff(id, p);

                if (staff != null)
                {
                    EARS.Staff sta1 = DBManager.ValidatePasswordStaff(id, p);
                    Label7.Text = "Change Password Successful";
                    mv.ActiveViewIndex = 3;
                }
                else
                {
                    Label7.Visible = true;
                    Label7.Text = "Error";
                }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }


    }
}