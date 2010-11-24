using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class EditStudProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EARS.Student s = (EARS.Student)Session["Login"];

            lbST.Text = s.StudentType;
            lbSch.Text = s.School;
            lbCourse.Text = s.CourseCode;
            lbName.Text = s.Name;
            lbDOB.Text = Convert.ToString(s.DateOfBirth);
            lbGender.Text = Convert.ToString(s.Gender);
            tbxContact.Text = s.ContactNo;
            tbxEmergContact.Text = s.EmergCont;
            lbTpEmail.Text = s.Email;
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int contact = Convert.ToInt32(tbxContact.Text);
            int emgContact = Convert.ToInt32(tbxEmergContact.Text);
            string size = ddlsize.Text;

            //EARS.DBManager.
        }
    }
}