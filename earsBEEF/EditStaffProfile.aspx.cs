﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class EditStaffProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EARS.Staff s = (EARS.Staff)Session["Login"];

            DdlSch.Text = s.School;
            lbDOB.Text = Convert.ToString(s.DateOfBirth);
            lbEmail.Text = s.StaffEmail;
            lbGender.Text = Convert.ToString( s.Gender);
            lbName.Text = s.Name;
            DdlPosit.Text = s.Position;
            lbAdmin.Text = Convert.ToString( s.Admin);
            tbxMoblie.Text = s.ContactNo;
            tbxOffic.Text = s.OfficeNo;
            tbxPersonalEmail.Text = s.PersonalEmail;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string school = DdlSch.Text;
            string position = DdlPosit.Text;
            int contactNo = Convert.ToInt32(tbxMoblie.Text);
            int officeNo = Convert.ToInt32( tbxOffic.Text);
            string personalEmail = tbxPersonalEmail.Text;
            EARS.Staff tempStaff =  (EARS.Staff)this.Session["Login"];
            EARS.DBManager.UpdateStaff(tempStaff.StaffID, school, position, contactNo, officeNo, personalEmail);
          
        }

        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }
    }
}