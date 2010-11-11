using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class AddStaffForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = tbxPw.Text;
            string school = DdlSch.Text;
            string dept = DdlDept.Text;
            string position = DdlPosit.Text;
            string offContact = tbxOffic.Text;
            string Mobile = tbxMoblie.Text;
            string perEmail = tbxPersonalEmail.Text;
            string staffEmail = tbxWorkEmail.Text;

            char gender;
            if (rbMale.Checked) { gender = 'M'; }
            else { gender = 'F'; }

            char admin;
            if (rbYes.Checked) { admin = 'Y'; }
            else { admin = 'N'; }

            string name = tbxName.Text;
            string day = DdlDay.Text;
            string month = DdlMonth.Text;
            string year = DdlMonth.Text;

            string dob = DdlDay.Text + "" + DdlMonth.Text + "" + DdlMonth.Text;

            DateTime dateOfBirth;
            dateOfBirth.Day.Equals(day);
            dateOfBirth.Month.Equals(month);
            dateOfBirth.Year.Equals(year);


            //EARS.Staff s = new EARS.Staff (name,  staffEmail, password, gender, school, Mobile,
            //                            perEmail, position, admin, offContact, dateOfBirth);

            EARS.DBManager.AddStaff(name, staffEmail, password, gender, school, Mobile,
                                        perEmail, position, admin, offContact, dateOfBirth);
        }

    }
}