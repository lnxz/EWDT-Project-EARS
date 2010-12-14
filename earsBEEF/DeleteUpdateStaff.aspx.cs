using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class DeleteUpdateStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // not student leader and student are not allow to access this page
            if (Session["LoginType"].Equals("Student"))
            {
                EARS.Student s = (EARS.Student)(Session["Login"]);
                if (s.IsStudentLeader.Equals('Y'))
                {
                    Response.Redirect("Home.aspx");
                }
                else if (s.IsStudentLeader.Equals('N'))
                {
                    Response.Redirect("Home.aspx");
                }
                // end
            }


        }

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
    }
}