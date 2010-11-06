using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EARS
{
    public class Staff
    {
        private int staffID;
        private string name;
        private string staffEmail;
        private string password;
        private string gender;
        private string school;
        private int contactNo;
        private string personalEmail;
        private string position;
        private string department;
        private string admin;

        public Staff(int staffID, string name, string staffEmail, string password, string gender, string school, int contactNo, string personalEmail, string position, string department, string admin)
        {
            this.staffID = staffID;
            this.name = name;
            this.staffEmail = staffEmail;
            this.password = password;
            this.gender = gender;
            this.school = school;
            this.contactNo = contactNo;
            this.personalEmail = personalEmail;
            this.position = position;
            this.department = department;
            this.admin = admin;
        }

        public int StaffID
        {
            get { return staffID; }
            set { staffID = value; }
        }


        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string StaffEmail
        {
            get { return staffEmail; }
            set { staffEmail = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        public string School
        {
            get { return school; }
            set { school = value; }
        }

        public int ContactNo
        {
            get { return contactNo; }
            set { contactNo = value; }
        }

        public string PersonalEmail
        {
            get { return personalEmail; }
            set { personalEmail = value; }
        }

        public string Position
        {
            get { return position; }
            set { position = value; }
        }

        public string Department
        {
            get { return department; }
            set { department = value; }
        }

        public string Admin
        {
            get { return admin; }
            set { admin = value; }
        }

    }
}