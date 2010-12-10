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
        public static int s;
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["LoginType"].Equals("Student"))
            {        
                s =  Convert.ToInt32(Request.QueryString["eid"]);

                // check event 
                EARS.Event a = EARS.DBManager.RetrieveEvent(s);
                int c = EARS.DBManager.GetQuotaOfEvent(s);

                if (a != null)
                {
                    lbName.Text = a.Name;
                    lbPlace.Text = a.Venue;
                    lbStartDate.Text = a.EventDate;
                    lbRegStart.Text = Convert.ToDateTime(a.RegistrationStart).ToString();
                    lbRegEnd.Text = Convert.ToDateTime(a.RegistrationEnd).ToString();
                    lbCost.Text = "$" + Convert.ToDouble(a.RegistrationCost).ToString() + ".00";
                    lbMax.Text = Convert.ToString(a.Quota).ToString();
                    tbxDes.Text = a.Descrip;

                }
                    lbQuota.Text = Convert.ToString(c);
            }
        }
            protected void btnReg_Click(object sender, EventArgs e)
            {
                int x = 0;
                int y = 0;
                EARS.Student stu = (EARS.Student)(this.Session["Login"]);

                //check student registered for the event 
                ArrayList sr = new ArrayList();
                sr = EARS.DBManager.GetStudentWithEvent(stu.StudentID);

                foreach (EARS.Event er in sr)
                {
                    if (er.EventID.Equals(s))
                    {
                        lbWarning.Visible = true;
                        lbWarning.Text = "You have been Registered for this Event";
                        x--;
                    }
                }

                if (x == 0)
                {
                    // add the student to the event and send a mail to the student
                    EARS.DBManager.AddStudentRegisterEvent(stu.StudentID, s);

                    string emailadd = stu.Email;
                    string name = stu.Name;

                    SendEmail.sendingEmail(emailadd, "You have Registered " + lbName.Text, "Dear " + name + "<br/>" + "Thank You for Registering " + "<br/>" + "Name Of Event : " + lbName.Text + "<br/>" + " Located at " + lbPlace.Text + "<br/>" + " Hope to see you there");
                }
                // add a message box
                //Response.Write("<script>window.alert('Registeration Sucessfully')</script>");
                if (lbWarning.Visible.Equals(false))
                {
                    Response.Redirect("ViewEvents.aspx");
                }
                
            }

            protected void btnCancel_Click(object sender, EventArgs e)
            {
                Response.Redirect("ViewEvents.aspx");
            }


    }
}