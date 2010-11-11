using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;

namespace EARS
{
    public class DBManager
    {
        public const string DBCONNSTR = @"Data Source=LNXZ-PC\SQLEXPRESS;Initial Catalog=EWDTProject;Integrated Security=True";

        public static ArrayList GetAllStudents()
        {
            ArrayList results = new ArrayList();

            // Establish connection with database
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;

            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Student";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {
                    Boolean isStudentLeader = false;
                    int studentID = Convert.ToInt32(dr["StudentID"].ToString());
                    string name = dr["Name"].ToString();
                    string adminNo = dr["AdminNo"].ToString();
                    string password = dr["Password"].ToString();
                    char gender = dr["Gender"].ToString()[0];
                    string school = dr["School"].ToString();
                    string courseCode = dr["CourseCode"].ToString();
                    string contactNo = dr ["ContactNo"].ToString();
                    string emergCont = dr ["EmergencyContact"].ToString();
                    string email = dr["Email"].ToString();
                    if (dr["IsStudentLeader"].ToString()[0].Equals("Y"))
                    {
                        isStudentLeader = true;
                    }
                    string tShirtSize = dr["TShirtSize"].ToString();
                    DateTime dateofbirth = DateTime.Parse( dr["DateOfBirth"].ToString());
                    string studentType = dr["StudentType"].ToString();

                Student s = new Student(studentID, name, adminNo, password, gender, school, courseCode,contactNo, emergCont, email, isStudentLeader, tShirtSize, studentType, dateofbirth);
                    results.Add(s);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
            return results;
        }
        public static void AddStudent(string name, string adminNo, string password, char gender, string school, int yearOfStudy, string courseCode, int age, int contactNo, int emergCont, string email, bool isStudentLeader, string tShirtSize, string nationality, string studentType)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
               try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Student(Name,AdminNo,Password,Gender,School,YearOfStudy,CourseCode,Age,ContactNo,EmergencyContact,Email,IsStudentLeader,TShirtSize,Nationality) VALUES(@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n,@o)";

                comm.Parameters.AddWithValue("@b", name);
                comm.Parameters.AddWithValue("@c", adminNo);
                comm.Parameters.AddWithValue("@d", password);
                comm.Parameters.AddWithValue("@e", gender);
                comm.Parameters.AddWithValue("@f", school);
                comm.Parameters.AddWithValue("@g", yearOfStudy);
                comm.Parameters.AddWithValue("@h", courseCode);
                comm.Parameters.AddWithValue("@i", age);
                comm.Parameters.AddWithValue("@j", contactNo);
                comm.Parameters.AddWithValue("@k", emergCont);
                comm.Parameters.AddWithValue("@l", email);
                comm.Parameters.AddWithValue("@m", isStudentLeader);
                comm.Parameters.AddWithValue("@n", tShirtSize);
                comm.Parameters.AddWithValue("@o", nationality);
                comm.Connection = conn;
                // Step 3: Execute the sql command
                int rowsAdded = (int)comm.ExecuteNonQuery();
             }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
        }
        public static ArrayList GetAllStaff()
        {
            ArrayList results = new ArrayList();

            // Establish connection with database
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;

            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Staff";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {
                    int staffID = Convert.ToInt32(dr["StaffID"].ToString());
                    string name = dr["Name"].ToString();
                    string staffEmail = dr["StaffEmail"].ToString();
                    string password = dr["Password"].ToString();
                    char gender = dr["Gender"].ToString()[0];
                    string school = dr["School"].ToString();
                    string mobileNo = dr["ContactNo"].ToString();
                    string personalEmail = dr["PersonalEmail"].ToString();
                    string position = dr["Position"].ToString();
                    string admin = dr["IsAdmin"].ToString();
                    string officeNo = dr["OfficeNumber"].ToString();
                    DateTime dateofBirth = DateTime.Parse(dr["DateOfBirth"].ToString());
                    Staff st = new Staff(staffID,name, staffEmail, password, gender, school, mobileNo, personalEmail, position, admin, officeNo, dateofBirth);
                    results.Add(st);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
            return results;
        }
        public static void AddStaff(string name, string staffEmail, string password, char gender, string school, string contactNo, string personalEmail, string position, string admin, string officeNo, DateTime dateofBirth)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Staff(Name,StaffEmail,Password,Gender,School,ContactNo,personalEmail,Position,Admin,OfficeNo,DateofBirth) VALUES(@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l)";

                comm.Parameters.AddWithValue("@b", name);
                comm.Parameters.AddWithValue("@c", staffEmail);
                comm.Parameters.AddWithValue("@d", password);
                comm.Parameters.AddWithValue("@e", gender);
                comm.Parameters.AddWithValue("@f", school);
                comm.Parameters.AddWithValue("@g", contactNo);
                comm.Parameters.AddWithValue("@h", personalEmail);
                comm.Parameters.AddWithValue("@i", position);
                comm.Parameters.AddWithValue("@j", admin);
                comm.Parameters.AddWithValue("@k", officeNo);
                comm.Parameters.AddWithValue("@l", dateofBirth);

                comm.Connection = conn;
                // Step 3: Execute the sql command
                int rowsAdded = (int)comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
        }
        public static ArrayList GetAllAnnouncements()
        {
            
            ArrayList results = new ArrayList();

            // Establish connection with database
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;

            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Announcement";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {
                    
                    int announceID = Convert.ToInt32( dr["AnnouncementID"].ToString());
                    string title = dr["Title"].ToString();
                    string content = dr["AContent"].ToString();
                    DateTime  dateCreated = DateTime.Parse( dr["DateCreated"].ToString());
                    int createStaffID =Convert.ToInt32 (dr["CreateStaffID"].ToString());
                    int createStudID = Convert.ToInt32(dr["CreateStudentID"].ToString());
                    DateTime dateOfAnn = DateTime.Parse(dr["DateOfAnnouncement"].ToString());


                    earsBEEF.Announcement a = new earsBEEF.Announcement(announceID, title, content, dateCreated, createStaffID, createStudID, dateOfAnn);
                    results.Add(a);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
            return results;
        }
        public static void AddAnnouncement(string title, string content, DateTime date, int createStaffID, int createStudID, DateTime dateOfAnn)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Student(title,content,date,createStaffID,createStudentID,dateOfAnn) VALUES(@b,@c,@d,@e,@f,@g)";

                comm.Parameters.AddWithValue("@b", title);
                comm.Parameters.AddWithValue("@c", content);
                comm.Parameters.AddWithValue("@d", date);
                comm.Parameters.AddWithValue("@e", createStaffID);
                comm.Parameters.AddWithValue("@f", createStudID);
                comm.Parameters.AddWithValue("@g", dateOfAnn);

                comm.Connection = conn;
                // Step 3: Execute the sql command
                int rowsAdded = (int)comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
        }
        public static ArrayList GetAllEvents()
        {


            ArrayList results = new ArrayList();

            // Establish connection with database
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;

            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Announcement";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {

                    int eventID = Convert.ToInt32(dr["EventID"].ToString());
                    string name = dr["Name"].ToString();
                    string venue = dr["Venue"].ToString();
                    double regCost = Convert.ToInt32( dr["RegistrationCost"].ToString());
                    string category = dr["CategoryID"].ToString();
                    string descrip = dr["Description"].ToString();
                    string eventDate = dr["eventDates"].ToString();
                    DateTime regStart = DateTime.Parse(dr["RegistrationStart"].ToString());
                    DateTime regend = DateTime.Parse(dr["RegistrationEnd"].ToString());
                    int quota = Convert.ToInt32(dr["Quota"].ToString());
                    int ccaID = Convert.ToInt32(dr["CCAID"].ToString());
                    int orgStudID = Convert.ToInt32(dr["OrgStudentID"].ToString());
                    int orgStaffID = Convert.ToInt32(dr["OrgStaffID"].ToString());
                    DateTime dateCreated = DateTime.Parse(dr["DateCreated"].ToString());

                    earsBEEF.Event a = new earsBEEF.Event(eventID,name,venue,regCost,category,descrip,eventDate,regStart,regend,quota,ccaID,orgStudID,orgStaffID,dateCreated );
                    results.Add(a);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
            return results;
        }
        public static void AddEvents(string name, string venue, double regcost, string category, string descrip, string eventdate, DateTime regstart, DateTime regend, int quota, int ccaID, int orgstudID, int orgstaffID, DateTime dateCreated)
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Student(name,venue,regcost,category,descrip,eventdate,regstart,regend,quota,ccaID,orgstudID,orgstaffID,dateCreated) VALUES(@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n)";

                comm.Parameters.AddWithValue("@b", name);
                comm.Parameters.AddWithValue("@c", venue);
                comm.Parameters.AddWithValue("@d", regcost);
                comm.Parameters.AddWithValue("@e", category);
                comm.Parameters.AddWithValue("@f", descrip);
                comm.Parameters.AddWithValue("@g", eventdate);
                comm.Parameters.AddWithValue("@h", regstart);
                comm.Parameters.AddWithValue("@i", regend);
                comm.Parameters.AddWithValue("@j", quota);
                comm.Parameters.AddWithValue("@k", ccaID);
                comm.Parameters.AddWithValue("@l", orgstudID);
                comm.Parameters.AddWithValue("@m", orgstaffID);
                comm.Parameters.AddWithValue("@n", dateCreated);


                comm.Connection = conn;
                // Step 3: Execute the sql command
                int rowsAdded = (int)comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Step 4: Close connection
                conn.Close();
            }
        }
    }


}