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
    public partial class AddBulkStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // staff admin only
            EARS.Student s = (EARS.Student)(Session["Login"]);
            if (s.IsStudentLeader.Equals('Y'))
            {
            }
            else
            {
                Response.Redirect("Home.aspx");
            }

            EARS.Staff sta = (EARS.Staff)(Session["Login"]);

            if (sta.Admin.Equals('Y'))
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

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            string filePath = "";
            if (FileUpload1.PostedFile.ContentLength == 0)
            {
                Label1.Text = "Cannot upload file with 0 length";
            }
            else
            {
                Label1.Text = FileUpload1.PostedFile.FileName;
                filePath = Label1.Text;
                FileUpload1.PostedFile.SaveAs(@filePath);
            }

            int rowsAdded = 0;
            ArrayList errors = earsBEEF.OLEDBManager.massStaffImport(filePath);
            if (errors.Count != 0)
            {
                for (int x = 0; x < errors.Count; x++)
                {
                    if(errors[x].ToString().Equals("Successfully Added!"))
                    {
                        rowsAdded++;
                    }
                    else{

                    TextBox1.Text = TextBox1.Text + errors[x].ToString() + "\n";
                    }
                }
                if (rowsAdded > 0)
                {
                    TextBox1.Text = TextBox1.Text + rowsAdded + " rows successfully added" + "\n";
                }
            }
        }
    }
}