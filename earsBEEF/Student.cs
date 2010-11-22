using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EARS
{
    public class Student
    {

        private char isStudentLeader;
        private int studentID;
        private string name;
        private string adminNo;
        private string password;
        private char gender;
        private string school;
        private string courseCode;
        private string contactNo;
        private string emergCont;
        private string email;
        private string tShirtSize;
        private string studentType;
        private DateTime dateOfBirth;

        public Student(string name, string adminNo, string password, char gender, string school, string courseCode, string contactNo, string emergCont, string email, char isStudentLeader, string tShirtSize, string studentType, DateTime dateOfBirth)
        {
            // TODO: Complete member initialization
            this.name = name;
            this.adminNo = adminNo;
            this.password = password;
            this.gender = gender;
            this.school = school;
            this.courseCode = courseCode;
            this.contactNo = contactNo;
            this.emergCont = emergCont;
            this.email = email;
            this.isStudentLeader = isStudentLeader;
            this.tShirtSize = tShirtSize;
            this.studentType = studentType;
            this.dateOfBirth = dateOfBirth;
        }

        public Student(int studentID,string name,string adminNo, string password, char gender, string school, string courseCode, string contactNo, string emergCont, string email, char isStudentLeader, string tShirtSize, string studentType, DateTime dateOfBirth)
        {
            // TODO: Complete member initialization
            this.studentID = studentID;
            this.name = name;
            this.adminNo = adminNo;
            this.password = password;
            this.gender = gender;
            this.school = school;
            this.courseCode = courseCode;
            this.contactNo = contactNo;
            this.emergCont = emergCont;
            this.email = email;
            this.isStudentLeader = isStudentLeader;
            this.tShirtSize = tShirtSize;
            this.studentType = studentType;
            this.dateOfBirth = dateOfBirth;
        }

        public string StudentType
        {
            get { return studentType; }
            set { studentType = value; }
        }
        public string TShirtSize
        {
            get { return tShirtSize; }
            set { tShirtSize = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string EmergCont
        {
            get { return emergCont; }
            set { emergCont = value; }
        }
        public string ContactNo
        {
            get { return contactNo; }
            set { contactNo = value; }
        }
        public string CourseCode
        {
            get { return courseCode; }
            set { courseCode = value; }
        }
        public string School
        {
            get { return school; }
            set { school = value; }
        }
        public char Gender
        {
            get { return gender; }
            set { gender = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string AdminNo
        {
            get { return adminNo; }
            set { adminNo = value; }
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public int StudentID
        {
            get { return studentID; }
            set { studentID = value; }
        }
        public char IsStudentLeader
        {
            get { return isStudentLeader; }
            set { isStudentLeader = value; }
        }
        public DateTime DateOfBirth
        {
            get { return dateOfBirth; }
            set { dateOfBirth = value; }
        }

    }
}