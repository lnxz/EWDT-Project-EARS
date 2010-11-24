using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class EditStaffProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EARS.Staff s = (EARS.Staff)Session["Login"];
            lbSchool.Text = s.School;
            lbDOB.Text = Convert.ToString(s.DateOfBirth);
            lbEmail.Text = s.StaffEmail;
            lbGender.Text = Convert.ToString( s.Gender);
            lbName.Text = s.Name;
            lbPost.Text = s.Position;
            lbAdmin.Text = Convert.ToString( s.Admin);
            tbxMoblie.Text = s.ContactNo;
            tbxOffic.Text = s.OfficeNo;
            tbxPersonalEmail.Text = s.PersonalEmail;
            tbxTele.Text = s.
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int phoneNo = Convert.ToInt32(tbxTele.Text);
            int contactNo = Convert.ToInt32(tbxMoblie.Text);
            int officeNo = Convert.ToInt32( tbxOffic.Text);
            string personalEmail = tbxPersonalEmail.Text;
        }
    }
}