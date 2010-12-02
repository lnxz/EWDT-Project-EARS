using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF
{
    public partial class ViewOrganizedEventInfo : System.Web.UI.Page
    {
        public static int s;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["LoginType"].Equals("Student"))
            {        
                s =  Convert.ToInt32(Request.QueryString["eid"]);

                // check event 
                EARS.Event a  = EARS.DBManager.RetrieveEvent(s);

                if (a != null)
                {
                    

                    lbName.Text = a.Name;
                    lbPlace.Text = a.Venue;
                    lbStartDate.Text = a.EventDate;
                    lbRegStart.Text = Convert.ToDateTime(a.RegistrationStart).ToString();
                    lbRegEnd.Text = Convert.ToDateTime(a.RegistrationEnd).ToString();
                    lbCost.Text = "$" + Convert.ToDouble(a.RegistrationCost).ToString() + ".00";
                    tbxDes.Text = a.Descrip;
                }
            }
        }
            protected void btnReg_Click(object sender, EventArgs e)
            {
                EARS.Student stu = (EARS.Student)(this.Session["Login"]);
                EARS.DBManager.AddStudentRegisterEvent(stu.StudentID, s);

                //    if (Session["LoginType"].Equals("Student"))
                //    {
                //        EARS.Student s = DBManager.GetAllStudents();
                //    }

                //    ArrayList s= new ArrayList();

                // get student id and event id

                //foreach (EARS.Event ee in EARS.DBManager.GetAllEvents())
                //{
                //    foreach (EARS.Student h in EARS.DBManager.GetAllStudents())
                //    {
                //        x = ee.EventID;
                //        y = h.StudentID;
                //    }

                //}

                //// assign to database
                //EARS.DBManager.AddStudentRegisterEvent(x, y);

                //    // if the event date crash prompt a warning
                //}
            }

            protected void btnCancel_Click(object sender, EventArgs e)
            {
                Response.Redirect("VewEvent.aspx");
            }


    }
}