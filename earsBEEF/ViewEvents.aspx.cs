using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Net;
using System.Data;
using System.Collections;

namespace earsBEEF
{
    public partial class ViewEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["LoginType"].Equals("Staff"))
            {
                EventView.Columns.RemoveAt(6);
            }
            else
            {
                ArrayList a1 = new ArrayList();

                foreach (EARS.Event a in EARS.DBManager.GetAllEvents())
                {
                    if ((DateTime.Today >= a.RegistrationStart) && (DateTime.Today <= a.RegistrationEnd))
                    {
                        a1.Add(a);
                    }

                }

                EventView.DataSource = a1;
                EventView.DataBind();
            }
            if (EventView.Rows.Count == 0)
            {
                Label2.Visible = true;
            }
            else
            {
                Label2.Visible = false;
            }
        }

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string key = EventView.DataKeys[e.NewSelectedIndex].Value.ToString();
            Response.Redirect("ViewEventStud.aspx?eid=" + key);
        }
    }
}