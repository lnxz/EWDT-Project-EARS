using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net;
using System.Data;
using System.Collections;

namespace earsBEEF
{
    public partial class AddAnnouncement : System.Web.UI.Page
    {

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string a = DateTime.Today.ToShortDateString();
            string[] r = a.Split('/');
            DateTime dt = new DateTime(Convert.ToInt32(r[2]), Convert.ToInt32(r[0])-1, Convert.ToInt32(r[1]));


            ArrayList fk = new ArrayList();
            foreach (earsBEEF.Announcement x in EARS.DBManager.GetAllAnnouncements())
            {
                if (x.DateOfAnn <= dt)
                {

                }
                else
                {
                    fk.Add(x);
                }
            }
            GridView1.DataSource = fk;
            GridView1.DataBind();

        }

    }
}