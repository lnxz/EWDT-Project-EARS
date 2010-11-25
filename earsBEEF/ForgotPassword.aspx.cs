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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = tbxId.Text;
            string email = tbxEmail.Text;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = tbxId.Text;
            string email = tbxEmail.Text;

            //if (tbxId.Text.ToString().Length == 8)
            //{
            //    EARS.Student s = DBManager.ValidatePassword(tbxId.Text, tbxEmail.Text);

            //    if (s.AdminNo.Equals(id) && s.Email.Equals(email))
            //    {
            MultiView1.ActiveViewIndex = 0;
            //    }
            //}
        }
    }
}