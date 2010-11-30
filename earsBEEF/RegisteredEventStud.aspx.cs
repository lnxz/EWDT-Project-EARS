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

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ArrayList s = new ArrayList();

            //s = EARS.DBManager.GetAllStudents();

            foreach (EARS.Student s in EARS.DBManager.GetAllStudents())
            {

            }


        }
    }
}