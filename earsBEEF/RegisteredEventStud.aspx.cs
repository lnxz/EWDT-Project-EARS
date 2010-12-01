using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF
{
    public partial class RegisteredEventStud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EARS.Student stu = (EARS.Student)(this.Session["Login"]);

            GridView1.DataSource = EARS.DBManager.GetAllEvents();//populateEventTable();
            int query = Convert.ToInt32(EARS.DBManager.GetStudentWithEvent(stu.StudentID));
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            EARS.Student stu = (EARS.Student)(this.Session["Login"]);

            string key = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();

            EARS.DBManager.AddStudentRegisterEvent(stu.StudentID, Convert.ToInt32(key));
        }
    }
}