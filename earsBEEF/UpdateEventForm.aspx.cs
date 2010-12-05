using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF
{

    public partial class UpdateEventForm : System.Web.UI.Page
    {
        public static EARS.Event thisEvent;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            { }
            else
            {
                if (Session["LoginType"].Equals("Staff"))
                {

                    //initialize CCA dropdown list
                    ddlCCA.Items.Clear();
                    EARS.Staff s = (EARS.Staff)(Session["Login"]);
                    ddlCCA.DataSource = EARS.DBManager.GetCCAofStaff(s.StaffID);
                    ddlCCA.DataTextField = "Name";
                    ddlCCA.DataValueField = "CCAID";
                    ddlCCA.DataBind();
                }
                else
                {
                    //initialize CCA dropdown list
                    ddlCCA.Items.Clear();
                    EARS.Student s = (EARS.Student)(Session["Login"]);
                    ddlCCA.DataSource = EARS.DBManager.GetCCAofStudent(s.StudentID);
                    ddlCCA.DataTextField = "Name";
                    ddlCCA.DataValueField = "CcaID";
                    ddlCCA.DataBind();
                }


                //initialize category dropdown list
                ddlCate.Items.Clear();

                ddlCate.DataSource = EARS.DBManager.GetAllCategory();
                ddlCate.DataTextField = "Name";
                ddlCate.DataValueField = "CategoryID";
                ddlCate.DataBind();
                // Load selected Event
                int eventID = Convert.ToInt32(Request.QueryString["eid"]);
                thisEvent = EARS.DBManager.RetrieveEvent(eventID);
                tbxName.Text = thisEvent.Name;
                tbxVenue.Text = thisEvent.Venue;
                tbxDes.Text = thisEvent.Descrip;
                string[] words = thisEvent.EventDate.Split(';');
                foreach (string word in words)
                {
                    if (word.Equals(""))
                    {
                    }
                    else
                    {
                        lbDate.Items.Add(word);
                    }
                }
                tbxQuota.Text = thisEvent.Quota.ToString();
                if (thisEvent.RegistrationCost == 0)
                {
                }
                else
                {
                    RadioButton2.Checked = true;
                    tbxDol.Text = thisEvent.RegistrationCost.ToString();
                }




                DateTime tempDate = thisEvent.DateCreated;
                for (int x = 0; x < 3; x++)
                {
                    if (tempDate.Month.ToString().Equals("1"))
                    {
                        DdlMonth.Items.Add("Jan");
                        DdlMonth0.Items.Add("Jan");
                        DdlMonth1.Items.Add("Jan");
                    }
                    else if (tempDate.Month.ToString().Equals("2"))
                    {
                        DdlMonth.Items.Add("Feb");
                        DdlMonth0.Items.Add("Feb");
                        DdlMonth1.Items.Add("Feb");
                    }
                    else if (tempDate.Month.ToString().Equals("3"))
                    {
                        DdlMonth.Items.Add("Mar");
                        DdlMonth0.Items.Add("Mar");
                        DdlMonth1.Items.Add("Mar");
                    }
                    else if (tempDate.Month.ToString().Equals("4"))
                    {
                        DdlMonth.Items.Add("Apr");
                        DdlMonth0.Items.Add("Apr");
                        DdlMonth1.Items.Add("Apr");
                    }
                    else if (tempDate.Month.ToString().Equals("5"))
                    {
                        DdlMonth.Items.Add("May");
                        DdlMonth0.Items.Add("May");
                        DdlMonth1.Items.Add("May");
                    }
                    else if (tempDate.Month.ToString().Equals("6"))
                    {
                        DdlMonth.Items.Add("Jun");
                        DdlMonth0.Items.Add("Jun");
                        DdlMonth1.Items.Add("Jun");
                    }
                    else if (tempDate.Month.ToString().Equals("7"))
                    {

                        DdlMonth.Items.Add("Jul");
                        DdlMonth0.Items.Add("Jul");
                        DdlMonth1.Items.Add("Jul");
                    }
                    else if (tempDate.Month.ToString().Equals("8"))
                    {

                        DdlMonth.Items.Add("Aug");
                        DdlMonth1.Items.Add("Aug");
                        DdlMonth0.Items.Add("Aug");
                    }
                    else if (tempDate.Month.ToString().Equals("9"))
                    {
                        DdlMonth.Items.Add("Sep");
                        DdlMonth0.Items.Add("Sep");
                        DdlMonth1.Items.Add("Sep");
                    }
                    else if (tempDate.Month.ToString().Equals("10"))
                    {

                        DdlMonth.Items.Add("Oct");
                        DdlMonth0.Items.Add("Oct");
                        DdlMonth1.Items.Add("Oct");
                    }
                    else if (tempDate.Month.ToString().Equals("11"))
                    {
                        DdlMonth.Items.Add("Nov");
                        DdlMonth0.Items.Add("Nov");
                        DdlMonth1.Items.Add("Nov");
                    }
                    else if (tempDate.Month.ToString().Equals("12"))
                    {

                        DdlMonth.Items.Add("Dec");
                        DdlMonth1.Items.Add("Dec");
                        DdlMonth0.Items.Add("Dec");
                    }

                    tempDate = tempDate.AddMonths(1);

                }

                int regStartMonth = Convert.ToInt32(thisEvent.RegistrationStart.Month.ToString()) - Convert.ToInt32(thisEvent.DateCreated.Month.ToString());
                if (regStartMonth == -10)
                {
                    DdlMonth0.SelectedIndex = 3;
                }
                else if (regStartMonth == -11)
                {
                    DdlMonth0.SelectedIndex = 2;
                }
                else
                {

                    DdlMonth0.SelectedIndex = regStartMonth + 1;
                }
                int regEndMonth = Convert.ToInt32(thisEvent.RegistrationEnd.Month.ToString()) - Convert.ToInt32(thisEvent.DateCreated.Month.ToString());
                if (regEndMonth == -10)
                {
                    DdlMonth1.SelectedIndex = 3;
                }
                else if (regEndMonth == -11)
                {
                    DdlMonth1.SelectedIndex = 2;
                }
                else
                {

                    DdlMonth1.SelectedIndex = regEndMonth + 1;
                }
                DdlDay0.SelectedIndex = thisEvent.RegistrationStart.Day - 1;
                DdlDay1.SelectedIndex = thisEvent.RegistrationEnd.Day - 1;

                DdlYear0.SelectedValue = thisEvent.RegistrationStart.Year.ToString();
                DdlYear1.SelectedValue = thisEvent.RegistrationEnd.Year.ToString();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DdlMonth.SelectedIndex != 0)
            {
                if (lbDate.Items.Count == 0)
                {
                    lbDate.Items.Add(DdlDay.Text + "-" + DdlMonth.Text + "-" + DdlYear.Text);
                }
                else
                {
                    Boolean repeat = false;
                    for (int x = 0; x < lbDate.Items.Count; x++)
                    {
                        if (lbDate.Items[x].Equals(DdlDay.Text + "-" + DdlMonth.Text + "-" + DdlYear.Text))
                        {
                            repeat = true;
                        }
                    }
                    if (repeat == false)
                    {

                        lbDate.Items.Add(DdlDay.Text + " " + DdlMonth.Text + " " + DdlYear.Text);
                    }
                }
            }

        }


        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //get cost of event
            double cost = 0;
            if (RadioButton1.Checked) { }
            else
            {
                if (tbxDol.Text.Equals(""))
                {

                }
                else
                {
                    cost = Convert.ToDouble(tbxDol.Text);
                }
            }

            if (DdlDay0.SelectedValue.Equals("Day") || DdlDay1.SelectedValue.Equals("Day"))
            {
                lblDateError1.Visible = true;
            }
            else
            {
                lblDateError1.Visible = false;
                DateTime month1 = thisEvent.DateCreated.AddMonths(DdlMonth0.SelectedIndex - 1);
                int monthStart = month1.Month;
                DateTime month2 =  thisEvent.DateCreated.AddMonths(DdlMonth1.SelectedIndex - 1);
                int monthEnd = month2.Month;
                DateTime startDate = new DateTime(Convert.ToInt32(DdlYear0.Text), monthStart, DdlDay0.SelectedIndex + 1);
                DateTime endDate = new DateTime(Convert.ToInt32(DdlYear1.Text), monthEnd, DdlDay1.SelectedIndex + 1);
                if (endDate < startDate)
                {
                    lblDateError.Visible = true;
                }
                else
                {
                    lblDateError.Visible = false;
                }

                string eventDatesString = "";
                for (int x = 0; x < lbDate.Items.Count; x++)
                {
                    eventDatesString = eventDatesString + lbDate.Items[x].ToString();
                }

                //need add in eventID

                EARS.DBManager.UpdateEvent(thisEvent.EventID, tbxName.Text, tbxVenue.Text, cost, ddlCate.SelectedValue, tbxDes.Text, eventDatesString, startDate, endDate, Convert.ToInt32(tbxQuota.Text), Convert.ToInt32(ddlCCA.SelectedValue), DateTime.Today, ddlStatus.SelectedItem.Text);

                tbxName.Text = "";
                tbxVenue.Text = "";
                tbxDes.Text = "";
                tbxDol.Text = "";
                tbxQuota.Text = "";




            }



        }
        protected void DdlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlDay.Items.Clear();
            DdlYear.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(DdlMonth.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            do
            {
                DdlDay.Items.Add(tempDate.Day.ToString());
                tempDate = tempDate.AddDays(1);
            }
            while (tempDate.Month == tempMonthDate.Month);

            DateTime tempMonth = DateTime.Today;
            if (tempMonth.Month <= 10)
            {
                DdlYear.Items.Add(DateTime.Today.Year.ToString());
            }
            else if (tempMonth.Month == 11)
            {
                if (DdlMonth.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear.Items.Add(DateTime.Today.Year.ToString());
                }

            }
            else if (tempMonth.Month == 12)
            {
                if (DdlMonth.SelectedIndex == 2 || DdlMonth.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear.Items.Add(DateTime.Today.Year.ToString());
                }
            }

        }

        protected void DdlMonth0_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlDay0.Items.Clear();
            DdlYear0.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(DdlMonth0.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            do
            {
                DdlDay0.Items.Add(tempDate.Day.ToString());
                tempDate = tempDate.AddDays(1);
            }
            while (tempDate.Month == tempMonthDate.Month);

            DateTime tempMonth = DateTime.Today;
            if (tempMonth.Month <= 10)
            {
                DdlYear0.Items.Add(DateTime.Today.Year.ToString());
            }
            else if (tempMonth.Month == 11)
            {
                if (DdlMonth0.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear0.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear0.Items.Add(DateTime.Today.Year.ToString());
                }

            }
            else if (tempMonth.Month == 12)
            {
                if (DdlMonth0.SelectedIndex == 2 || DdlMonth0.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear0.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear0.Items.Add(DateTime.Today.Year.ToString());
                }
            }
        }

        protected void DdlMonth1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlDay1.Items.Clear();
            DdlYear1.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(DdlMonth1.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            do
            {
                DdlDay1.Items.Add(tempDate.Day.ToString());
                tempDate = tempDate.AddDays(1);
            }
            while (tempDate.Month == tempMonthDate.Month);

            DateTime tempMonth = DateTime.Today;
            if (tempMonth.Month <= 10)
            {
                DdlYear1.Items.Add(DateTime.Today.Year.ToString());
            }
            else if (tempMonth.Month == 11)
            {
                if (DdlMonth1.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear1.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear1.Items.Add(DateTime.Today.Year.ToString());
                }

            }
            else if (tempMonth.Month == 12)
            {
                if (DdlMonth1.SelectedIndex == 2 || DdlMonth1.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear1.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear1.Items.Add(DateTime.Today.Year.ToString());
                }
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                tbxDol.Enabled = true;
            }
        }

        protected void ddlCate_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            tbxDol.Enabled = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            tbxName.Text = "";
            tbxVenue.Text = "";
            tbxDes.Text = "";
            tbxDol.Text = "";
            tbxQuota.Text = "";
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {

                int x = lbDate.SelectedIndex;
             
            lbDate.Items.Remove(lbDate.Items[x]);
        }


    }
}