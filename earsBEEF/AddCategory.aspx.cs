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
            //foreach (earsBEEF.Category c in EARS.DBManager.GetAllCategory())
            {
                GridView1.DataSource = EARS.DBManager.GetAllCategory();//populateCategoryTable();
                GridView1.DataBind();
            }
        }
        public DataTable populateCategoryTable()
        {
            //List<> catList = ;
            DataTable dt = new DataTable();

            DataColumn dcol = new DataColumn ( "CategoryID", typeof (System.String));
            dt.Columns.Add (dcol);

            dcol = new DataColumn("Name", typeof (System.String));
            dt.Columns.Add (dcol);

           // foreach (Category c in )
            {
                //create rows
                DataRow drow = dt.NewRow();
                //insert values into the columns
             //   drow["CategoryID"];
             //   drow["Name"];

                //add rows into the table
                dt.Rows.Add(drow);
            }

            return dt;
        }
    }
}