using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF.Admin_Forms
{
    public partial class SearchStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // for non-student leaders
            EARS.Student s = (EARS.Student)(Session["Login"]);
            if (s.IsStudentLeader.Equals('Y'))
            {
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            //if (ddlSearchType.SelectedIndex == 0)
            //{
            //    lbStudents.Items.Clear();
            //    foreach(EARS.Student s in EARS.DBManager.searchByAdmin(tbxSearch.Text))
            //    {
            //        lbStudents.Items.Add(s.AdminNo);
            //    }

            lbStudents.Items.Clear();
            if (ddlSearchType.SelectedIndex == 0)
            {
                foreach (EARS.Student s in EARS.DBManager.SearchByAdmin(tbxSearch.Text))
                {
                    lbStudents.Items.Add(s.AdminNo);
                }

            }
            else if (ddlSearchType.SelectedIndex == 1)
            {
                foreach (EARS.Student s1 in EARS.DBManager.SearchByNameStud(tbxSearch.Text))
                {
                    lbStudents.Items.Add(s1.Name);
                }
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int studID = 0;
            if (ddlSearchType.SelectedIndex == 0)
            {
                studID = EARS.DBManager.GetStudentIDfromAdmin(lbStudents.SelectedValue);
                Response.Redirect("./EditStudProfile.aspx?id="+studID);
            }
            else
            {
                studID = EARS.DBManager.GetStudentIDfromName(lbStudents.SelectedValue);
                Response.Redirect("./EditStudProfile.aspx?id="+studID);
            }
        }
    }
}