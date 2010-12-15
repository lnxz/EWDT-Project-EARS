using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Net;
using System.Data;

namespace earsBEEF
{
    public partial class ViewOrganizedEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // for non-student leaders not to accesss this page
            if (Session["LoginType"].Equals("Student"))
            {
                EARS.Student stu = (EARS.Student)(Session["Login"]);
                if (stu.IsStudentLeader.Equals('Y'))
                { }
                else
                {
                    Response.Redirect("Home.aspx");
                }
                // end
            }

            if(this.Session["LoginType"].Equals("Student"))
            {
                EARS.Student s = (EARS.Student)(this.Session["Login"]);
                GridView1.DataSource = EARS.DBManager.GetAllOrganizedEvents(s.StudentID);//populateEventTable();
                GridView1.DataBind();
                if(GridView1.Rows.Count ==0)
                {}
            }
            else{
                EARS.Staff st = (EARS.Staff)(this.Session["Login"]);
                GridView1.DataSource = EARS.DBManager.GetAllOrganizedEventStaff(st.StaffID);
                GridView1.DataBind();
                if(GridView1.Rows.Count ==0)
                {}
            }
            lblNoPast.Visible = false;
            if (GridView1.Rows.Count == 0)
            {
                lblNoPast.Visible = true;
            }
        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }


        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string key = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
            Response.Redirect("UpdateEventForm.aspx?eid=" + key);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}