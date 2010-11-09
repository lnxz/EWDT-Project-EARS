using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class AddAnnouncement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = Convert.ToString(System.DateTime.Now.Date.ToLongDateString());
            int tempMonth = DateTime.Today.Month;
            int tempDay = DateTime.Today.Day;
            int tempYear = DateTime.Today.Year;

            int tempNextMonth = DateTime.Today.Month + 1;
            int tempNextYear = DateTime.Today.Year;

            DateTime tempNext= new DateTime(tempNextYear,tempNextMonth,tempDay);

            DateTime tempDate = new DateTime(tempYear,tempMonth,tempDay);
            while (tempDate.Date != tempNext)
            {
                
                
                DropDate.Items.Add(Convert.ToString(tempDate.ToLongDateString()));
                
                tempDate = tempDate.Date.AddDays(+1);

                
            }
           
        }
      }
    }