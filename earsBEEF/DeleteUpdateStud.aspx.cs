using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class DeleteUpdateStud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EARS.Student s = (EARS.Student)(Session["Login"]);

            if (s.IsStudentLeader.Equals('Y'))
            {
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
    }
}