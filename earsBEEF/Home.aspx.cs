using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session["login"].Equals("s"))
            //{
            //    pstud.Visible = true;
            //}
            //else if (Session["LoginType"].Equals(null))
            //{
            //    Response.Redirect("loginPage.aspx");
            //} 
            //else
            //{
            //    pOrg.Visible = true;
            //}
        }
    }
}