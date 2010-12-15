using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Collections;

namespace earsBEEF
{
    public partial class viewAnnouncementStaff : System.Web.UI.Page
    {
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            //EARS.Student s = (EARS.Student)(Session["Login"]);

            //// for non-student leader and student not allow to access this page
            //    if (s.IsStudentLeader.Equals('Y'))
            //    {
            //        Response.Redirect("Home.aspx");
            //    }
            //    else if (s.IsStudentLeader.Equals('N'))
            //    {
            //        Response.Redirect("Home.aspx");
            //    }
            //// end

            if (Page.IsPostBack)
            { }
         
            else
            {
                string a = DateTime.Today.ToShortDateString();
                string[] r = a.Split('/');
                DateTime dt = new DateTime(Convert.ToInt32(r[2]), Convert.ToInt32(r[0]) - 1, Convert.ToInt32(r[1]));


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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string a = DateTime.Today.ToShortDateString();
            string[] r = a.Split('/');
            DateTime dt = new DateTime(Convert.ToInt32(r[2]), Convert.ToInt32(r[0]) - 1, Convert.ToInt32(r[1]));


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

            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            string a = DateTime.Today.ToShortDateString();
            string[] r = a.Split('/');
            DateTime dt = new DateTime(Convert.ToInt32(r[2]), Convert.ToInt32(r[0]) - 1, Convert.ToInt32(r[1]));


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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
                //Label IdLbl = (Label)GridView1.Rows[e.RowIndex].FindControl("AnnID");
                int ba = (int)GridView1.DataKeys[GridView1.EditIndex].Value;
                string Titlebox = ((TextBox)GridView1.Rows[GridView1.EditIndex].FindControl("titletbx")).Text;

                TextBox ContentBox = (TextBox)GridView1.Rows[e.RowIndex].FindControl("contenttbx");

                TextBox dateOfAnn = (TextBox)GridView1.Rows[e.RowIndex].FindControl("annDatetbx");

                //int a = Convert.ToInt32(IdLbl.Text);
                //     string b = Titlebox.Text;
                string c = ContentBox.Text;
                DateTime d = Convert.ToDateTime(dateOfAnn.Text);

                EARS.DBManager.UpdateAnnouncment(ba, Titlebox, c, d);

                GridView1.EditIndex = -1;


                string a = DateTime.Today.ToShortDateString();
                string[] r = a.Split('/');
                DateTime dt = new DateTime(Convert.ToInt32(r[2]), Convert.ToInt32(r[0]) - 1, Convert.ToInt32(r[1]));


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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int ba = (int)GridView1.DataKeys[e.RowIndex].Value;
            EARS.DBManager.DeleteAnnouncement(ba);

            string a = DateTime.Today.ToShortDateString();
            string[] r = a.Split('/');
            DateTime dt = new DateTime(Convert.ToInt32(r[2]), Convert.ToInt32(r[0]) - 1, Convert.ToInt32(r[1]));


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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



    }
    }

