using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class AddEventForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["LoginType"].Equals("StudentNo")){
                Response.Redirect("Home.aspx");
            }
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}