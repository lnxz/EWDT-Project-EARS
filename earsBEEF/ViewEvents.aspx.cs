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
            //if( this.Session["LoginType"].Equals("Staff"))
            //{
           // GridView1.Columns.RemoveAt(6);
            //}

            //EARS.Event e = EARS.DBManager.GetAllEvents();

            /*foreach (EARS.Event ee1 in EARS.DBManager.GetAllEvents())
            {
                string x = ee1.RegistrationStart.ToShortDateString();
                string y = ee1.RegistrationEnd.ToShortDateString();
                string result = DateDifference.Datedifference(x, y); //date difference between start n enddate
                DateTime t = DateTime.Today;
                string today = t.ToShortDateString();
                string result1 = DateDifference.Datedifference(x,today); //date difference between start n today

                if (ee1.RegistrationStart != DateTime.Today)
                {
                   
                }
                else if (ee1.RegistrationEnd <= DateTime.Today && ee1.RegistrationEnd != DateTime.Today)
                {

                }
                if (DateTime.Today <= ee1.RegistrationStart && DateTime.Today >= ee1.RegistrationEnd)
                {
                    GridView1.DataSource = EARS.DBManager.GetAllEvents(); //populateEventTable();
                    GridView1.DataBind();
                }
               
            }*/

            ArrayList a1 = new ArrayList();

            foreach (EARS.Event a in EARS.DBManager.GetAllEvents())
            {
                if (a.RegistrationStart <= DateTime.Today && a.RegistrationEnd<= DateTime.Today)
                {
                    a1.Add(a);
                    if (a.RegistrationStart != DateTime.Today)
                    {
                        a1.Remove(a);
                    }
                }

            }

            GridView1.DataSource = a1;
            GridView1.DataBind();

            //GridView1.DataSource = EARS.DBManager.GetAllEvents();//populateEventTable();

            //GridView1.DataBind();
          
        }
        protected void Page_PreInit()
        {
            //this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
                string key = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
                Response.Redirect("ViewEventStud.aspx?eid=" + key);
        }
    }
}