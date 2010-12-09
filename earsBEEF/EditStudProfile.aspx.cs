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
            if (IsPostBack)
            {
            }
            else
            {
                EARS.Student s = (EARS.Student)Session["Login"];

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

                lbAdmin.Text = s.AdminNo;
                lbST.Text = s.StudentType;
                DdlSch.Text = s.School;
                DdlCourse.Text = s.CourseCode;
                lbName.Text = s.Name;
                lbDOB.Text = Convert.ToString(s.DateOfBirth);
                lbGender.Text = Convert.ToString(s.Gender);
                tbxContact.Text = s.ContactNo;
                tbxEmergContact.Text = s.EmergCont;
                lbTpEmail.Text = s.Email;
                //ddlsize.SelectedValue = s.TShirtSize;

                if (s.TShirtSize.Equals("XS  "))
                {
                    ddlsize.SelectedIndex = 0;
                }
                else if (s.TShirtSize.Equals("S   "))
                {
                    ddlsize.SelectedIndex = 1;
                }
                else if (s.TShirtSize.Equals("M   "))
                {
                    ddlsize.SelectedIndex = 2;
                }
                else if (s.TShirtSize.Equals("L   "))
                {
                    ddlsize.SelectedIndex = 3;
                }
                else if (s.TShirtSize.Equals("XL  "))
                {
                    ddlsize.SelectedIndex = 4;
                }
                else if (s.TShirtSize.Equals("XXL "))
                {
                    ddlsize.SelectedIndex = 5;
                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string contact = tbxContact.Text;
            string emgContact = tbxEmergContact.Text;
            string size = ddlsize.Text;
            EARS.Student tempStudent = (EARS.Student)this.Session["Login"];
            EARS.DBManager.UpdateStudent(tempStudent.StudentID, tempStudent.School, tempStudent.CourseCode,  Convert.ToInt32(contact), Convert.ToInt32(emgContact), size);
            EARS.Student s = (EARS.Student)(Session["Login"]);
        }

        protected void ddlSchool_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlCourse.Items.Clear();

            if (DdlSch.SelectedIndex == 1)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("T26");
                DdlCourse.Items.Add("T44");
                DdlCourse.Items.Add("T27");
                DdlCourse.Items.Add("T31");
                DdlCourse.Items.Add("T33");
                DdlCourse.Items.Add("T25");
                DdlCourse.Items.Add("T45");
            }
            else if (DdlSch.SelectedIndex == 2)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("T02");
                DdlCourse.Items.Add("T01");
                DdlCourse.Items.Add("T36");
                DdlCourse.Items.Add("T40");
                DdlCourse.Items.Add("T18");
                DdlCourse.Items.Add("T08");
                DdlCourse.Items.Add("T09");
                DdlCourse.Items.Add("T19");
                DdlCourse.Items.Add("T01");
                DdlCourse.Items.Add("T39");
            }
            else if (DdlSch.SelectedIndex == 3)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("T20");
                DdlCourse.Items.Add("T46");
                DdlCourse.Items.Add("T22");
                DdlCourse.Items.Add("T21");
                DdlCourse.Items.Add("T23");
                DdlCourse.Items.Add("T35");
                DdlCourse.Items.Add("T47");
                DdlCourse.Items.Add("T24");
            }
            else if (DdlSch.SelectedIndex == 4)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("T56");
                DdlCourse.Items.Add("T05");
                DdlCourse.Items.Add("T06");
                DdlCourse.Items.Add("T49");
                DdlCourse.Items.Add("T37");
                DdlCourse.Items.Add("T50");
                DdlCourse.Items.Add("T51");
                DdlCourse.Items.Add("T04");
                DdlCourse.Items.Add("T38");
                DdlCourse.Items.Add("T43");
                DdlCourse.Items.Add("T52");
                DdlCourse.Items.Add("T13");
                DdlCourse.Items.Add("T05");
                DdlCourse.Items.Add("T29");
                DdlCourse.Items.Add("T28");
                DdlCourse.Items.Add("T05");
                DdlCourse.Items.Add("T05");
            }
            else if (DdlSch.SelectedIndex == 5)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("T54");
                DdlCourse.Items.Add("T53");
                DdlCourse.Items.Add("T48");
            }
            else if (DdlSch.SelectedIndex == 6)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("T55");
                DdlCourse.Items.Add("T15");
                DdlCourse.Items.Add("T16");
                DdlCourse.Items.Add("T30");
                DdlCourse.Items.Add("T34");
                DdlCourse.Items.Add("T24");
            }
    }

    protected void Page_PreInit()
    {
        this.MasterPageFile = Session["MyPage_Master"].ToString();
    }
    }