using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace earsBEEF.Admin_Forms
{
    public partial class AddBulkStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=;Data Source = C:\Book1.xlsx;Extended Properties=Excel 8.0");
            OleDbDataAdapter da = new OleDbDataAdapter("select * from Student", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

        }
    }
}