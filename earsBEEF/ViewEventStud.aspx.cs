using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF
{
    public partial class ViewEventStud : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            
            //foreach (EARS.Event e in EARS.DBManager.GetAllEvents())
            //{
            //    e.Name = lbName.Text;
            //    e.Venue = lbPlace.Text;
            //    e.RegistrationStart = lbRegStart.Text;
            //    e.RegistrationEnd = lbRegEnd.Text;
            //    e.RegistrationCost = lbCost.Text;
            //    e.EventDate = lbStartDate.Text;
            //}

        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
<<<<<<< .mine

        protected void btnReg_Click(object sender, EventArgs e)
        {
<<<<<<< .mine


            
            //if (Session["LoginType"].Equals("Student"))
            //{
            //    foreach (EARS.Event e in EARS.DBManager.GetAllEvents())
            //    {
            //        if (e.Name.Equals(lbName.Text))
            //        {
                        
            //        }
            //    }
            //}

            // string name = lb

=======

        }
=======

        protected void btnReg_Click(object sender, EventArgs e)
        {
            if (Session["LoginType"].Equals("Student"))
            {
                EARS.Student s = DBManager.GetAllStudents();
            }
>>>>>>> .r316
        }
>>>>>>> .r314
    }
}