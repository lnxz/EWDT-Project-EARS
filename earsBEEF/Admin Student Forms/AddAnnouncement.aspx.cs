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
            int month = Convert.ToInt32(ddlMonth.SelectedValue);
            int year = Convert.ToInt32(ddlYear.Text);
            DateTime datecreated = DateTime.Today;
            DateTime annDate = new DateTime(year, month, day);

            // indicate staff or student who post the announcemnet

            //EARS.Student s = EARS.DBManager.GetAllStudentAnnouncement(Session["LoginType"].Equals(Student));

            //EARS.DBManager.AddAnnouncement(title, content datecreated,"","",annDate);
        }

        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDay.Items.Clear();
            ddlYear.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(ddlMonth.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            do
            {
                ddlDay.Items.Add(tempDate.Day.ToString());
                tempDate = tempDate.AddDays(1);
            }
            while (tempDate.Month == tempMonthDate.Month);

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