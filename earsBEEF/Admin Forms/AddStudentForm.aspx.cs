using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class AddStudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["LoginType"].Equals("StaffYes"))
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string adminNo = tbxAdminNum.Text;
            string matricNo = tbxMC.Text;
            string studType = DdlStudType.Text;
            string school = ddlSchool.Text;
            string course = DdlCourse.Text;
            string name = tbxName.Text;
            int day = Convert.ToInt32(DdlDay.Text);
            int month = Convert.ToInt32(DdlMonth.Text);
            int year = Convert.ToInt32(DdlYear.Text);
            string size = ddlsize.Text;
            string contract = tbxContact.Text;
            string email = tbxEmail.Text;
            string emgContract = tbxEmergContact.Text;

            char gender;
            if (rbMale.Checked) { gender = 'M'; }
            else { gender = 'F'; }

            Boolean leader;
            if (rbYes.Checked){return true;}
            else {return false;}

            string dob = DdlDay.Text + "" + DdlMonth.Text + "" + DdlMonth.Text;

            DateTime dateOfBirth = new DateTime(year, month, day);

            EARS.Student s = new EARS.Student(name, adminNo, matricNo, gender, school, course, 
                                contract, emgContract, email, leader, size, studType, dateOfBirth);

        }
    }
}