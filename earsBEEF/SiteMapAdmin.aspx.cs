using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class SiteMapAdmin : System.Web.UI.Page
    {

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginType"].Equals("Student"))
            {
                MultiView1.ActiveViewIndex = 1;
            }
            else if (Session["LoginType"].Equals("Staff"))
            {
                MultiView1.ActiveViewIndex = 2;
            }
            else if (Session["LoginType"].Equals("Staff"))
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else if (Session["LoginType"].Equals("StudentSL"))
            {
                MultiView1.ActiveViewIndex = 3;
            }
        }
    }
}