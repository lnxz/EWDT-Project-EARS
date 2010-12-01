using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Collections;

namespace earsBEEF.Admin_Forms
{
    public partial class AddBulkStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           ArrayList errors =  earsBEEF.OLEDBManager.massStudentImport();
           if (errors.Count != 0)
           {
               for (int x = 0; x < errors.Count; x++)
               {
                   TextBox1.Text = TextBox1.Text + errors[x].ToString() +"\n";
               }
           }
        }
    }
}