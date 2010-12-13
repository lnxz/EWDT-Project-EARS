 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class AllAnnouncement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            { }
            else
            {
                DateTime tempDate = DateTime.Today;
                for (int x = 0; x < 3; x++)
                {
                    if (tempDate.Month.ToString().Equals("1"))
                    {
                        ddlMonth.Items.Add("Jan");

                    }
                    else if (tempDate.Month.ToString().Equals("2"))
                    {
                        ddlMonth.Items.Add("Feb");
                    }
                    else if (tempDate.Month.ToString().Equals("3"))
                    {
                        ddlMonth.Items.Add("Mar");
                    }
                    else if (tempDate.Month.ToString().Equals("4"))
                    {
                        ddlMonth.Items.Add("Apr");
                    }
                    else if (tempDate.Month.ToString().Equals("5"))
                    {
                        ddlMonth.Items.Add("May");
                    }
                    else if (tempDate.Month.ToString().Equals("6"))
                    {
                        ddlMonth.Items.Add("Jun");
                    }
                    else if (tempDate.Month.ToString().Equals("7"))
                    {

                        ddlMonth.Items.Add("Jul");
                    }
                    else if (tempDate.Month.ToString().Equals("8"))
                    {

                        ddlMonth.Items.Add("Aug");
                    }
                    else if (tempDate.Month.ToString().Equals("9"))
                    {
                        ddlMonth.Items.Add("Sep");
                    }
                    else if (tempDate.Month.ToString().Equals("10"))
                    {

                        ddlMonth.Items.Add("Oct");
                    }
                    else if (tempDate.Month.ToString().Equals("11"))
                    {
                        ddlMonth.Items.Add("Nov");
                    }
                    else if (tempDate.Month.ToString().Equals("12"))
                    {

                        ddlMonth.Items.Add("Dec");
                    }

                    tempDate = tempDate.AddMonths(1);
                }

            }
        }

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string forwho = ddlFor.Text;
            string title = tbxTitle.Text;
            string content = tbxCon.Text;
            int day = Convert.ToInt32(ddlDay.Text);
            string fmonth = ddlMonth.SelectedValue;
            int month = 0;
            int year = Convert.ToInt32(ddlYear.Text);
            DateTime datecreate = DateTime.Today;
            if (fmonth == "Jan")
            {
                month = 1;
            }
            else if (fmonth == "Feb")
            {
                month = 2;
            }
            else if (fmonth == "Mar")
            {
                month = 3;
            }
            else if (fmonth == "Apr")
            {
                month = 4;
            }
            else if (fmonth == "May")
            {
                month = 5;
            }
            else if (fmonth == "Jun")
            {
                month = 6;
            }
            else if (fmonth == "Jul")
            {
                month = 7;
            }
            else if (fmonth == "Aug")
            {
                month = 8;
            }
            else if (fmonth == "Sep")
            {
                month = 9;
            }
            else if (fmonth == "Oct")
            {
                month = 10;
            }
            else if (fmonth == "Nov")
            {
                month = 11;
            }
            else if (fmonth == "Dec")
            {
                month = 12;
            }

            DateTime annDate = new DateTime(year, month, day);
            

            // indicate staff or student who post the announcemnet

            //EARS.Student b = EARS.DBManager.GetAllStudentAnnouncement(Session["LoginType"].Equals(Student));
            
            EARS.Staff p = (EARS.Staff)(Session["login"]);
            EARS.Student s = (EARS.Student)(Session["Login"]);
            int a= Convert.ToInt32(p.StaffID);
            int b=Convert.ToInt32(s.StudentID);

            EARS.DBManager.AddAnnouncement(title, content,datecreate,a,b,annDate);
        }

        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDay.Items.Clear();
            ddlYear.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(ddlMonth.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            int noDaysinMonth = DateTime.DaysInMonth(DateTime.Today.Year, tempMonthDate.Month);

            for (int x = 1; x <= noDaysinMonth; x++)
            {
                ddlDay.Items.Add(x.ToString());
            }


            DateTime tempMonth = DateTime.Today;
            if (tempMonth.Month <= 10)
            {
                ddlYear.Items.Add(DateTime.Today.Year.ToString());
            }
            else if (tempMonth.Month == 11)
            {
                if (ddlMonth.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    ddlYear.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    ddlYear.Items.Add(DateTime.Today.Year.ToString());
                }

            }
            else if (tempMonth.Month == 12)
            {
                if (ddlMonth.SelectedIndex == 2 || ddlMonth.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    ddlYear.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    ddlYear.Items.Add(DateTime.Today.Year.ToString());
                }
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}