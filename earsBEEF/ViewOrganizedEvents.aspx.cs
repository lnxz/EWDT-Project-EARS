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
            if(this.Session["LoginType"].Equals("Student"))
            {
            EARS.Student s = (EARS.Student)(this.Session["Login"]);
            GridView1.DataSource = EARS.DBManager.GetAllOrganizedEvents(s.StudentID);//populateEventTable();
            GridView1.DataBind();
                   if(GridView1.Rows.Count ==0)
                {
                }
            }
            else{
            EARS.Staff st = (EARS.Staff)(this.Session["Login"]);
                GridView1.DataSource = EARS.DBManager.GetAllOrganizedEvents(st.StaffID);
                GridView1.DataBind();
                if(GridView1.Rows.Count ==0)
                {
                }
            }
          
        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

    }
}