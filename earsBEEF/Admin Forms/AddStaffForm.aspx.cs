﻿using System;
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
            if (Page.IsPostBack)
            { }
            else
            {
                DateTime tempDatet = DateTime.Today;
                int syear = 1970;
                for (int i = syear; i < tempDatet.Year; i++)
                {
                    if (syear != tempDatet.Year)
                    {
                        DdlYear.Items.Add(Convert.ToString(syear));
                        syear++;
                    }
                }

                tempDatet = tempDatet.AddYears(1);
            }
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

            EARS.DBManager.AddStaff(name, staffEmail, password, gender, school, Mobile,
                                        perEmail, position, admin, offContact, dateOfBirth);
        }

        protected void DdlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
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