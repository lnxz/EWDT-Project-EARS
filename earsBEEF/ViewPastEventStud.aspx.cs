using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class ViewPastEventStud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["LoginType"].Equals("Student"))
            {
                EARS.Student s = (EARS.Student)(this.Session["Login"]);
                GridView1.DataSource = EARS.DBManager.GetPastEventsStudent(s.StudentID);
                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    lblNoPast.Visible = true;
                }
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
    }
}