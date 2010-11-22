using System;
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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (earsBEEF.Category c in EARS.DBManager.GetAllCategory())
            {
                GridView1.Rows.
            }
        }
        public DataTable populateCategoryTable()
        {

        }
    }
}