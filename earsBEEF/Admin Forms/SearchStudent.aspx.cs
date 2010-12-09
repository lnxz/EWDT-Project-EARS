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

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (ddlSearchType.SelectedIndex == 0)
            {
                lbStudents.Items.Clear();
                foreach(EARS.Student s in EARS.DBManager.searchByAdmin(tbxSearch.Text))
                {
                    lbStudents.Items.Add(s.AdminNo);
                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}