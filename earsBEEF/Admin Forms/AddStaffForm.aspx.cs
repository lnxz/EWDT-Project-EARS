using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace earsBEEF
{

    public partial class AddStaffForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Session["LoginType"].Equals("StaffYes"))
            //{
            //    Response.Redirect("Home.aspx");
            //}
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            string s ="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
<<<<<<< .mine
            string p = "";
            Random r = new Random();
            for (int i = 0; i < 8; i++)
            {
                p = p + s.Substring(r.Next(0,s.Length-1),1); 
            }
=======
           // string p = p + s.Substring(?,1);
            string psw;
>>>>>>> .r191

            tbxPw.Text = p;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = tbxPw.Text;
            string school = DdlSch.Text;
            string dept = DdlDept.Text;
            string position = DdlPosit.Text;
            string offContact = tbxOffic.Text;
            string Mobile = tbxMoblie.Text;
            string perEmail = tbxPersonalEmail.Text;
            string staffEmail = tbxWorkEmail.Text;

            char gender;
            if (rbMale.Checked) { gender = 'M'; }
            else { gender = 'F'; }

            char admin;
            if (rbYes.Checked) { admin = 'Y'; }
            else { admin = 'N'; }

            string name = tbxName.Text;
            int day = Convert.ToInt32(DdlDay.Text);

            int month = Convert.ToInt32(DdlMonth.Text);
            int year = Convert.ToInt32(DdlMonth.Text);

            string dob = DdlDay.Text + "" + DdlMonth.Text + "" + DdlMonth.Text;

            DateTime dateOfBirth = new DateTime(year, month, day);


            //EARS.Staff s = new EARS.Staff (name,  staffEmail, password, gender, school, Mobile,
            //                            perEmail, position, admin, offContact, dateOfBirth);



            EARS.DBManager.AddStaff(name, staffEmail, password, gender, school, Mobile,
                                        perEmail, position, admin, offContact, dateOfBirth);
        }
    }
}