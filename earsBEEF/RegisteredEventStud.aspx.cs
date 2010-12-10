using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF
{
    public partial class RegisteredEventStud : System.Web.UI.Page
    {
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
            }
            else
            {
                if (Session["LoginType"].Equals("Student"))
                {
                    EARS.Student stu = (EARS.Student)(this.Session["Login"]);

                    if (GridView1.DataSource != null)
                    {
                        lbEvent.Visible = true;
                        lbEvent.Text = "No Event Registered";
                    }
                    else
                    {
                        ArrayList a = new ArrayList();
                        foreach (EARS.Event e1 in EARS.DBManager.GetStudentWithEvent(stu.StudentID))
                        {
                            if ((DateTime.Today >= e1.RegistrationStart) && (DateTime.Today <= e1.RegistrationEnd))
                            {
                                a.Add(e1);
                            }
                        }

                        GridView1.DataSource = a;//populateEventTable();
                        GridView1.DataBind();

                    }

                }
                if (GridView1.Rows.Count == 0)
                {
                    lbEvent.Visible = true;
                    lbEvent.Text = "No Registered Events found";
                }
            }

            ArrayList date1 = new ArrayList();
            Boolean clash = false;

            EARS.Student stu1 = (EARS.Student)(this.Session["Login"]);
            foreach (EARS.Event e1 in EARS.DBManager.GetStudentWithEvent(stu1.StudentID))
            {
                if ((DateTime.Today >= e1.RegistrationStart) && (DateTime.Today <= e1.RegistrationEnd)) //  compairing the dates
                {
                    string[] words = e1.EventDate.Split(';');
                    foreach (string word in words)
                    {
                        if (word.Equals(""))
                        {}
                        else
                        {
                            date1.Add(word);
                        }
                    }
                }
            }

            if (date1.Count != 0) // check if not empty
            {
                for (int i = 0; i < date1.Count - 1; i++)
                {
                    for (int j = i + 1; j < date1.Count; j++)
                    {
                        if (date1[i].Equals(date1[j]))// if there is the crash return true
                            clash = true;
                    }
                }
            }              

            if (clash == true) 
            {
                lbWarning.Visible = true; // set to visible
                lbWarning.Text = "Note : There is an crash on Event that you had registered";
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            EARS.Student stu = (EARS.Student)(this.Session["Login"]);
            int k = (int)GridView1.DataKeys[e.RowIndex].Value;
            EARS.DBManager.DeleteStudentEvent(stu.StudentID, k); // get the gridview key to delete an event
            GridView1.DataSource = EARS.DBManager.GetStudentWithEvent(stu.StudentID);//repopulatestudentEventTable();
            GridView1.DataBind();

        }
        }

    }
