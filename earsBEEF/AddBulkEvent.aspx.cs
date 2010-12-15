using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF.Admin_Student_Forms
{
    public partial class AddBulkEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // only non student leader are not allows to access this page
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
        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string filePath = "";
            if (FileUpload1.PostedFile.ContentLength == 0)
            {
                Label1.Text = "Cannot upload file with 0 length";
            }
            else
            {
                Label1.Text = FileUpload1.PostedFile.FileName;
                filePath = @"C:\Temp\"+Label1.Text;
                FileUpload1.PostedFile.SaveAs(filePath);
            }

            int rowsAdded = 0;
            ArrayList errors = earsBEEF.OLEDBManager.massEventImport(filePath);
            if (errors.Count != 0)
            {
                for (int x = 0; x < errors.Count; x++)
                {
                    if (errors[x].ToString().Equals("Successfully Added!"))
                    {
                        rowsAdded++;
                    }
                    else
                    {

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