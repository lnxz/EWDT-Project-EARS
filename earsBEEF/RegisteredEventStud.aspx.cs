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
                        
                        GridView1.DataSource = EARS.DBManager.GetStudentWithEvent(stu.StudentID);//populateEventTable();
                        //int query = Convert.ToInt32(EARS.DBManager.GetStudentWithEvent(stu.StudentID));
                        GridView1.DataBind();
                    }
                }
                
            }
        }

        //protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        //{
        //    EARS.Student stu = (EARS.Student)(this.Session["Login"]);

        //    string key = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();

        //    int k = Convert.ToInt32(key);
            
        //    EARS.DBManager.DeleteStudentEvent(stu.StudentID,k);
        //}

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            EARS.Student stu = (EARS.Student)(this.Session["Login"]);

            int k = (int)GridView1.DataKeys[e.RowIndex].Value;
            EARS.DBManager.DeleteStudentEvent(stu.StudentID, k);
            GridView1.DataSource = EARS.DBManager.GetStudentWithEvent(stu.StudentID);//populateEventTable();
            GridView1.DataBind();
 
        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //if(e.CommandName=="Remove")
        //{
        //    EARS.Student stu = (EARS.Student)(this.Session["Login"]);

        //    int k = (int)GridView1.DataKeys[e.RowIndex].Value;
        //    EARS.DBManager.DeleteStudentEvent(stu.StudentID, k);
        //}
        //}
    }
}