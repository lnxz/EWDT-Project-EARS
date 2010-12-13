using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace earsBEEF
{
    public partial class EditStaffProfile : System.Web.UI.Page
    {
        Boolean editOthers = false;
        protected void Page_Load(object sender, EventArgs e)
        {

            EARS.Staff s = (EARS.Staff)Session["Login"];
            string text = HttpContext.Current.Request.ServerVariables["HTTP_REFERER"];
            text = text.ToLower();
            if (text.EndsWith("searchstaff.aspx"))
            {
                editOthers = true;
                s = EARS.DBManager.GetStaff(Convert.ToInt32(Request.QueryString["ID"]));
            }
            else
                if (s.School.Equals("AS "))
                {
                    DdlSch.SelectedIndex = 0;
                }
                else if (s.School.Equals("BS "))
                {
                    DdlSch.SelectedIndex = 1;
                }
                else if (s.School.Equals("DS "))
                {
                    DdlSch.SelectedIndex = 2;
                }
                else if (s.School.Equals("EN "))
                {
                    DdlSch.SelectedIndex = 3;
                }
                else if (s.School.Equals("HSS"))
                {
                    DdlSch.SelectedIndex = 4;
                }
                else if (s.School.Equals("IIT"))
                {
                    DdlSch.SelectedIndex = 5;
                }

            lbDOB.Text = Convert.ToString(s.DateOfBirth);
            lbEmail.Text = s.StaffEmail;
            lbGender.Text = Convert.ToString(s.Gender);
            lbName.Text = s.Name;
            DdlPosit.Text = s.Position;
            lbAdmin.Text = Convert.ToString(s.Admin);
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
            if (editOthers == false)
            {
                EARS.Staff tempStaff = (EARS.Staff)this.Session["Login"];
                EARS.DBManager.UpdateStaff(tempStaff.StaffID, school, position, contactNo, officeNo, personalEmail);
                Session["Login"] = EARS.DBManager.GetStaff(tempStaff.StaffID);
            }
            else
            {
                EARS.DBManager.UpdateStaff(Convert.ToInt32(Request.QueryString["ID"]), school, position, contactNo, officeNo, personalEmail);
            }
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