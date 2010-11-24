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
            //if (!Session["LoginType"].Equals("StaffYes"))
            //{
            //    Response.Redirect("Home.aspx");
            //}
            if (Page.IsPostBack)
            { }
            else
            {
                DateTime tempDatet = DateTime.Today;
                int syear = 1970;
                for (int i = syear ; i < tempDatet.Year; i++)
                {
                    if (syear != tempDatet.Year)
                    {
                        DdlYear.Items.Add(Convert.ToString(syear));
                        syear++;
                    }
<<<<<<< .mine
                  //  DdlYear.Items.Add(y);
=======
>>>>>>> .r232
                }

                tempDatet = tempDatet.AddYears(1);
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string adminNo = tbxAdminNum.Text;
            string studType = DdlStudType.Text;
            string school = ddlSchool.Text;
            string course = DdlCourse.Text;
            string name = tbxName.Text;

            string s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            string p = "";
            Random r = new Random();
            for (int i = 0; i < 8; i++)
            {
                p = p + s.Substring(r.Next(0, s.Length - 1), 1);
            }

            string password = p;
            int day = Convert.ToInt32(DdlDay.Text);
            int month = Convert.ToInt32(DdlMonth.SelectedValue);
            int year = Convert.ToInt32(DdlYear.Text);
            string size = ddlSize.Text;
            int contract = Convert.ToInt32(tbxContact.Text);
            string email = tbxEmail.Text;
            int emgContract = Convert.ToInt32(tbxEmergContact.Text);

            char gender;
            if (rbMale.Checked) { gender = 'M'; }
            else { gender = 'F'; }

            char leader;
            if (rbYes.Checked) { leader = 'Y'; }
            else { leader = 'N'; }

            string dob = DdlDay.Text + "" + DdlMonth.Text + "" + DdlMonth.Text;
            
            DateTime dateOfBirth = new DateTime(year, month, day);

            EARS.DBManager.AddStudent(name, adminNo, password, gender, school, course,
                                contract, emgContract, email, leader, size, studType, dateOfBirth); ;

        }

        protected void ddlSchool_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlCourse.Items.Clear();

            if (ddlSchool.SelectedIndex == 1)
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
            else if (ddlSchool.SelectedIndex == 2)
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
            else if (ddlSchool.SelectedIndex == 3)
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
            else if (ddlSchool.SelectedIndex == 4)
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
            else if (ddlSchool.SelectedIndex == 5)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("T54");
                DdlCourse.Items.Add("T53");
                DdlCourse.Items.Add("T48");
            }
            else if (ddlSchool.SelectedIndex == 6)
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

        protected void DdlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlDay.Items.Clear();
            if (DdlMonth.SelectedIndex != 0)
            {
                DateTime tempDate = new DateTime(2010, 1, 1);
                DateTime tempDate2 = new DateTime(2010, 1, 1);

                tempDate.AddMonths(DdlMonth.SelectedIndex - 1);
                tempDate2.AddMonths(DdlMonth.SelectedIndex - 1);

                do
                {
                    DdlDay.Items.Add(tempDate.Day.ToString());
                    tempDate = tempDate.AddDays(1);


                } while (tempDate.Month == tempDate2.Month);
            }
        }
    }
}