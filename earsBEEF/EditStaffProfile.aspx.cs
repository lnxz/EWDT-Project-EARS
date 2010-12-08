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

            if (s.School.Equals("AS "))
            {
                DdlPosit.SelectedIndex = 0;
            }
            else if (s.School.Equals("BS "))
            {
                DdlPosit.SelectedIndex = 1;
            }
            else if (s.School.Equals("DS "))
            {
                DdlPosit.SelectedIndex = 2;
            }
            else if (s.School.Equals("EN "))
            {
                DdlPosit.SelectedIndex = 3;
            }
            else if (s.School.Equals("HSS"))
            {
                DdlPosit.SelectedIndex = 4;
            }
            else if (s.School.Equals("IIT"))
            {
                DdlPosit.SelectedIndex = 5;
            }

            DdlSch.Text = s.School;
            lbDOB.Text = Convert.ToString(s.DateOfBirth);
            lbEmail.Text = s.StaffEmail;
            lbGender.Text = Convert.ToString( s.Gender);
            lbName.Text = s.Name;
            DdlPosit.Text = s.Position;
            lbAdmin.Text = Convert.ToString( s.Admin);
            tbxMoblie.Text = s.ContactNo;
            tbxOffic.Text = s.OfficeNo;
            tbxPersonalEmail.Text = s.PersonalEmail;

            if (s.Position.Equals("Course Manager"))
            {
                DdlPosit.SelectedIndex = 0;
            }
            else if (s.Position.Equals("Lecturer"))
            {
                DdlPosit.SelectedIndex = 1;
            }
            else if (s.Position.Equals("part-time lecturer"))
            {
                DdlPosit.SelectedIndex = 2;
            }
            else if (s.Position.Equals("Subject Head"))
            {
                DdlPosit.SelectedIndex = 3;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string school = DdlSch.Text;
            string position = DdlPosit.Text;
            string contactNo = tbxMoblie.Text;
            string officeNo = tbxOffic.Text;
            string personalEmail = tbxPersonalEmail.Text;
            EARS.Staff tempStaff =  (EARS.Staff)this.Session["Login"];
            EARS.DBManager.UpdateStaff(tempStaff.StaffID, school, position, contactNo, officeNo, personalEmail);
          
        }

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void tbxOffic_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}