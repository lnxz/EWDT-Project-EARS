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
                GridView1.Columns.RemoveAt(6);
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

                GridView1.DataSource = a1;
                GridView1.DataBind();
            }
            }


        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
                string key = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
                Response.Redirect("ViewEventStud.aspx?eid=" + key);
        }
    }
}