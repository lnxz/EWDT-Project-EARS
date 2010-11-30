using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EARS
{
    public partial class ViewEventStud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EARS.Event e = DBManager.GetAllEvents();
            string eventName = lb
        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            if (Session["LoginType"].Equals("Student"))
            {
                EARS.Student s = DBManager.GetAllStudents();
            }
        }
    }
}