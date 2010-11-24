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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            string p = "";
            Random r = new Random();
            for (int i = 0; i < 8; i++)
            {
                p = p + s.Substring(r.Next(0, s.Length - 1), 1);
            }

            string password = p;
            string school = DdlSch.Text;
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
            int month = Convert.ToInt32(DdlMonth.SelectedValue);
            int year = Convert.ToInt32(DdlYear.Text);
            
            string dob = DdlDay.Text + "" + DdlMonth.Text + "" + DdlMonth.Text;

            DateTime dateOfBirth = new DateTime(year, month, day);


            //EARS.Staff s = new EARS.Staff (name,  staffEmail, password, gender, school, Mobile,
            //                            perEmail, position, admin, offContact, dateOfBirth);



            EARS.DBManager.AddStaff(name, staffEmail, password, gender, school, Mobile,
                                        perEmail, position, admin, offContact, dateOfBirth);
        }

        protected void DdlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int[] days = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28};
            //int p;
            //if (DdlMonth.SelectedIndex == 2)
            //{
            //    DdlDay.Items.Clear();
            //    DdlDay.Items.Add(days);

            //    for (int i = 0; i < days.Length; i++)
            //    {
            //       p = days.GetValuE();
            //    }
            //}
            DdlDay.Items.Clear();
            if (DdlMonth.SelectedIndex != 0)
            {
                DateTime tempDate = new DateTime(2010, 1, 1);
                DateTime tempDate2 = new DateTime(2010, 1, 1);

                tempDate.AddMonths(DdlMonth.SelectedIndex - 1);
                tempDate2.AddMonths(DdlMonth.SelectedIndex - 1);

                do
                {
                    DdlDay.Items.Add(tempDate.Day.ToString());
                   tempDate = tempDate.AddDays(1);


                } while (tempDate.Month == tempDate2.Month);

            }
        }
    }
}