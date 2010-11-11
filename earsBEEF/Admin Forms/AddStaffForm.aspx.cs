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
            string password = tbxPw.Text;
            string school = DdlSch.Text;
            string dept = DdlDept.Text;
            string position = DdlPosit.Text;
            string offContact = tbxOffic.Text;
            string perEmail = tbxPersonalEmail.Text;
            string staffEmail = tbxWorkEmail.Text;
            string name = tbxName.Text;
            string day = DdlDay.Text;
            string month = DdlMonth.Text;
            string year = DdlYear.Text;

        }
    }
}