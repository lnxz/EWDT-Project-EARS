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
            // only non staff amin are not allow to access this page
            EARS.Staff s = (EARS.Staff)(Session["Login"]);
            if (s.Admin.Equals('Y'))
            {
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
            // end
        }
        

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
    }
}