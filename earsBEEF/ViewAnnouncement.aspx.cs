using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace earsBEEF
{
    public partial class AddAnnouncement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = EARS.DBManager.GetAllAnnouncements();//populateEventTable();
            GridView1.DataBind();           
        }
      }
    }