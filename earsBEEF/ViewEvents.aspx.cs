﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Net;
using System.Data;

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
            GridView1.DataSource = EARS.DBManager.GetAllEvents();//populateEventTable();

            GridView1.DataBind();
          
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