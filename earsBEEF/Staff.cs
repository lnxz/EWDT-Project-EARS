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
        private char gender;
        private string school;
        private string mobileNo;
        private string personalEmail;
        private string position;
        private string admin;
        private string officeNo;
        private DateTime dateofBirth;
        public Staff(string name, string staffEmail, string password, char gender, string school, string contactNo, string personalEmail, string position, string admin, string officeNo, DateTime dateofBirth)
        {
            
            this.name = name;
            this.staffEmail = staffEmail;
            this.password = password;
            this.gender = gender;
            this.school = school;
            this.mobileNo = contactNo;
            this.personalEmail = personalEmail;
            this.position = position;
            this.admin = admin;
            this.officeNo = officeNo;
            this.dateofBirth = dateofBirth;
        }

        public Staff(int staffID, string name, string staffEmail, string password, char gender, string school, string contactNo, string personalEmail, string position, string admin, string officeNo, DateTime dateofBirth)
        {
            this.staffID = staffID;
            this.name = name;
            this.staffEmail = staffEmail;
            this.password = password;
            this.gender = gender;
            this.school = school;
            this.mobileNo = contactNo;
            this.personalEmail = personalEmail;
            this.position = position;
            this.admin = admin;
            this.officeNo = officeNo;
            this.dateofBirth = dateofBirth;
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

        public char Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        public string School
        {
            get { return school; }
            set { school = value; }
        }

        public string ContactNo
        {
            get { return mobileNo; }
            set { mobileNo = value; }
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

        public string Admin
        {
            get { return admin; }
            set { admin = value; }
        }

        public string OfficeNo
        {
            get { return officeNo; }
            set { officeNo = value; }
        }
        public DateTime DateOfBirth
        {
            get { return dateofBirth; }
            set { dateofBirth = value; }
        }

    }
}