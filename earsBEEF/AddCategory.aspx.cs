using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Net;
using System.Data;
using System.Collections;

namespace earsBEEF
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // only non student leader are not allow to access
            EARS.Student s = (EARS.Student)(Session["Login"]);
            if (s.IsStudentLeader.Equals('Y'))
            {
            }
            else
            {
                Response.Redirect("Home.aspx");
            }

            GridView1.DataSource = EARS.DBManager.GetAllCategory();//populateCategoryTable();
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int x = 0;
            //ArrayList c = new ArrayList();
            //c = EARS.DBManager.GetAllCategory();

            string cat = tbxCat.Text;

            foreach (Category c1 in EARS.DBManager.GetAllCategory())
            {
                if (c1.Name.Equals(cat))
                {
                    lbWarning.Visible = true;
                    lbWarning.Text = "Category name Existed";
                    x--;
                }
            }


            if (x == 0)
            {
                EARS.DBManager.AddCategory(cat);
            }
                
                GridView1.DataSource = EARS.DBManager.GetAllCategory();//populateCategoryTable();
                GridView1.DataBind();




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin Student Forms/AddEventForm.aspx");
        }

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
      
      
    }
}