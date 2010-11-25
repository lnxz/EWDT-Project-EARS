using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

            EARS.Student s = DBManager.ValidatePasswordStud(tbxId.Text, tbxEmail.Text);

            if (s.AdminNo.Equals(id) && s.Email.Equals(email))
            {

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