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
            GridView1.DataSource = EARS.DBManager.GetAllEvents();//populateEventTable();
            GridView1.DataBind();
        }
        protected void Page_PreInit()
        {
           // this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
    }
}