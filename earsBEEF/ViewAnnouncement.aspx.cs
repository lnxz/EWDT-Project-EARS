﻿using System;
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

        //protected void Page_PreInit()
        //{
        //    this.MasterPageFile = Session["MyPage_Master"].ToString();
        //}
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataBind();
            //http://www.c-sharpcorner.com/uploadfile/anjudidi/108062009005713am/1.aspx
        }



    }
}