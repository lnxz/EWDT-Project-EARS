using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF.Admin_Forms
{
    public partial class SearchStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // for non-student leaderss
            if (Session["LoginType"].Equals("Student"))
            {
                EARS.Student s = (EARS.Student)(Session["Login"]);
                if (s.IsStudentLeader.Equals('Y'))
                {
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
                // end
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            lbStaffs.Items.Clear();
            if (ddlSearchType.SelectedIndex == 0)
            {
                foreach (EARS.Staff s in EARS.DBManager.SearchByNameStaff(tbxSearch.Text))
                {
                    lbStaffs.Items.Add(s.Name);
                }

            }
            else if (ddlSearchType.SelectedIndex == 1)
            {
                foreach (EARS.Staff s1 in EARS.DBManager.SearchByStaffEmail(tbxSearch.Text))
                {
                    lbStaffs.Items.Add(s1.StaffEmail);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int staffID = 0;
            if (ddlSearchType.SelectedIndex == 0)
            {
                staffID = EARS.DBManager.GetStaffIDfromName(lbStaffs.SelectedValue);
                Response.Redirect("./EditStaffProfile.aspx?ID=" + staffID);
            }
            else
            {
                staffID = EARS.DBManager.GetStaffIDfromEmail(lbStaffs.SelectedValue);
                Response.Redirect("./EditStaffProfile.aspx?ID=" + staffID);
            }
        }
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchStaff.aspx");
        }
    }
}