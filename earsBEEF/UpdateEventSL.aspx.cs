using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class UpdateEventSL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}