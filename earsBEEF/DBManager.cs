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
        //public const string DBCONNSTR = @"Data Source=LNXZ-PC\;Initial Catalog=EWDTProject;Integrated Security=True";
        public const string DBCONNSTR = @"Data Source=.\;Initial Catalog=EWDTProject;User ID=sa;Password=imsa";
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
                    char isStudentLeader = dr["IsStudentLeader"].ToString()[0];
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
        public static int AddStudent(string name, string adminNo, string password, char gender, string school, int yearOfStudy, string courseCode, int age, int contactNo, int emergCont, string email, bool isStudentLeader, string tShirtSize, string nationality, string studentType)
        {
            int rowsAdded = -1;
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
                rowsAdded = (int)comm.ExecuteNonQuery();
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
               return rowsAdded;
        }
        public static Student loginStudent(string login, string pass)
        {
            // Establish connection with database
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            Student s = null;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Student where AdminNo = @adminNo and Password = @password";
                comm.Connection = conn;
                comm.Parameters.AddWithValue("@adminNo", login);
                comm.Parameters.AddWithValue("@password", pass);
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {
                    char isStudentLeader =dr["IsStudentLeader"].ToString()[0];
                    int studentID = Convert.ToInt32(dr["StudentID"].ToString());
                    string name = dr["Name"].ToString();
                    string adminNo = dr["AdminNo"].ToString();
                    string password = dr["Password"].ToString();
                    char gender = dr["Gender"].ToString()[0];
                    string school = dr["School"].ToString();
                    string courseCode = dr["CourseCode"].ToString();
                    string contactNo = dr["ContactNo"].ToString();
                    string emergCont = dr["EmergencyContact"].ToString();
                    string email = dr["Email"].ToString();
                    string tShirtSize = dr["TShirtSize"].ToString();
                    DateTime dateofbirth = DateTime.Parse(dr["DateOfBirth"].ToString());
                    string studentType = dr["StudentType"].ToString();

                    s = new Student(studentID, name, adminNo, password, gender, school, courseCode, contactNo, emergCont, email, isStudentLeader, tShirtSize, studentType, dateofbirth);
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
            return s;
        }
        public static Staff loginStaff(string login, string pass)
        {
            // Establish connection with database
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            Staff s = null;
            try
            {
                
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Staff where StaffEmail = @staffEmail and Password = @password";
                comm.Connection = conn;
                comm.Parameters.AddWithValue("@staffEmail", login);
                comm.Parameters.AddWithValue("@password", pass);
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
                    char admin =dr["isAdmin"].ToString()[0];
                    string officeNo = dr["OfficeNumber"].ToString();
                    DateTime dateofBirth = DateTime.Parse(dr["DateOfBirth"].ToString());
                    
                    s = new Staff(staffID, name, staffEmail, password, gender, school, mobileNo, personalEmail, position, admin, officeNo, dateofBirth);
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
            return s;
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
                    char admin = dr["IsAdmin"].ToString()[0];
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
        public static int AddStaff(string name, string staffEmail, string password, char gender, string school, string contactNo, string personalEmail, string position, char admin, string officeNo, DateTime dateofBirth)
        {int rowsAdded = -1;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Staff(Name,StaffEmail,Password,Gender,School,ContactNo,personalEmail,Position,IsAdmin,OfficeNumber,DateofBirth) VALUES(@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l)";

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
               rowsAdded = (int)comm.ExecuteNonQuery();
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
            return rowsAdded;
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
        public static int AddAnnouncement(string title, string content, DateTime date, int createStaffID, int createStudID, DateTime dateOfAnn)
        {
            int rowsAdded = -1;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Announcement(title,content,date,createStaffID,createStudentID,dateOfAnn) VALUES(@b,@c,@d,@e,@f,@g)";

                comm.Parameters.AddWithValue("@b", title);
                comm.Parameters.AddWithValue("@c", content);
                comm.Parameters.AddWithValue("@d", date);
                comm.Parameters.AddWithValue("@e", createStaffID);
                comm.Parameters.AddWithValue("@f", createStudID);
                comm.Parameters.AddWithValue("@g", dateOfAnn);

                comm.Connection = conn;
                // Step 3: Execute the sql command
                rowsAdded = (int)comm.ExecuteNonQuery();
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
            return rowsAdded;
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
                comm.CommandText = "SELECT * FROM Events";
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

                    earsBEEF.Event b = new earsBEEF.Event(eventID,name,venue,regCost,category,descrip,eventDate,regStart,regend,quota,ccaID,orgStudID,orgStaffID,dateCreated );
                    results.Add(b);
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
        public static int AddEvents(string name, string venue, double regcost, string category, string descrip, string eventdate, DateTime regstart, DateTime regend, int quota, int ccaID, int orgstudID, int orgstaffID, DateTime dateCreated)
        {
            int rowsAdded = -1;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Events(name,venue,regcost,category,descrip,eventdate,regstart,regend,quota,ccaID,orgstudID,orgstaffID,dateCreated) VALUES(@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n)";

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
                 rowsAdded = (int)comm.ExecuteNonQuery();
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
            return rowsAdded;
        }
        public static ArrayList GetAllCCA()
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
                comm.CommandText = "SELECT * FROM CCA";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {

                    int ccaID = Convert.ToInt32(dr["CCAID"].ToString());
                    string name = dr["Name"].ToString();


                    earsBEEF.CCA c = new earsBEEF.CCA(ccaID,name);
                    results.Add(c);
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
        public static int AddCCA(int ccaID, string name)
        {
            int rowsAdded = -1;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO CCA(ccaID,name) VALUES(@b,@c)";

                comm.Parameters.AddWithValue("@b", ccaID);
                comm.Parameters.AddWithValue("@c", name);



                comm.Connection = conn;
                // Step 3: Execute the sql command
                 rowsAdded = (int)comm.ExecuteNonQuery();
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
            return rowsAdded;
        }
        public static ArrayList GetAllCategory()
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
                comm.CommandText = "SELECT * FROM Category";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {

                    int categoryID = Convert.ToInt32(dr["CategoryID"].ToString());
                    string name = dr["Name"].ToString();


                    earsBEEF.Category c = new earsBEEF.Category(categoryID, name);
                    results.Add(c);
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
        public static int AddCategory(int categoryID, string name)
        {
            int rowsAdded = -1;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO Cateogry(categoryID,name) VALUES(@b,@c)";

                comm.Parameters.AddWithValue("@b", categoryID);
                comm.Parameters.AddWithValue("@c", name);



                comm.Connection = conn;
                // Step 3: Execute the sql command
                rowsAdded = (int)comm.ExecuteNonQuery();
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
            return rowsAdded;
           
        }
        public static int AddCCAStudent(int ccaID, int studentID, char isLeader)
        {
            int rowsAdded = -1;
                        SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO CCAStudent(CCAID,StudentID,IsLeader) VALUES(@a,@b,@c)";
                comm.Parameters.AddWithValue("@a", ccaID);
                comm.Parameters.AddWithValue("@b", studentID);
                comm.Parameters.AddWithValue("@c", isLeader);

                comm.Connection = conn;
                // Step 3: Execute the sql command
                rowsAdded = (int)comm.ExecuteNonQuery();
              
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
            return rowsAdded;
        }
        public static ArrayList GetCCAStudents(int ccaID)
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
                comm.CommandText = "SELECT * FROM CCAStudent where CCAID = @ccaID";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();  
                comm.Parameters.AddWithValue("@ccaID", ccaID);  // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {

                    int studentID = Convert.ToInt32(dr["StudentID"]);
                    results.Add(studentID);
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
        public static ArrayList GetAllEventNotifications()
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
                comm.CommandText = "SELECT * FROM EventNotifications";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {

                    int eventNotificationID = Convert.ToInt32(dr["EventNotificationID"].ToString());
                    int eventID = Convert.ToInt32(dr["EventID"].ToString());
                    DateTime date = DateTime.Parse(dr["Date"].ToString());
                    string type = dr["Type"].ToString();
                    string template = dr["Template"].ToString();

                    earsBEEF.EventNotification c = new earsBEEF.EventNotification(eventNotificationID, eventID, date, type, template);
                    results.Add(c);
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
        public static int AddEventNotifications(int eventNotificationID, int eventID, DateTime date, string type, string template)
        {
            int rowsAdded = -1;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO EventNotifications(eventNotificationID,eventID, date type, template) VALUES(@b,@c,@d,@e,@f)";

                comm.Parameters.AddWithValue("@b", eventNotificationID);
                comm.Parameters.AddWithValue("@c", eventID);
                comm.Parameters.AddWithValue("@d", date);
                comm.Parameters.AddWithValue("@e", type);
                comm.Parameters.AddWithValue("@f", template);

                comm.Connection = conn;
                // Step 3: Execute the sql command
                rowsAdded = (int)comm.ExecuteNonQuery();
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
            return rowsAdded;
        }
        public static ArrayList GetAllStudentRegisterEvent()
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
                comm.CommandText = "SELECT * FROM StudentRegisterEvent";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {

                    int studentID = Convert.ToInt32(dr["StudentID"].ToString());
                    int eventID = Convert.ToInt32(dr["EventID"].ToString());


                    earsBEEF.StudentRegisterEvent c = new earsBEEF.StudentRegisterEvent(studentID, eventID);
                    results.Add(c);
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
        public static int AddStudentRegisterEvent(int studentID, int eventID)
        {
            int rowsAdded = -1;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO StudentRegisterEvent(studentID,eventID) VALUES(@b,@c)";

                comm.Parameters.AddWithValue("@b", studentID);
                comm.Parameters.AddWithValue("@c", eventID);



                comm.Connection = conn;
                // Step 3: Execute the sql command
                rowsAdded = (int)comm.ExecuteNonQuery();
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

            return rowsAdded;

        }
        public static ArrayList GetAllStudentAnnouncement()
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
                comm.CommandText = "SELECT * FROM StudentAnnouncement";
                comm.Connection = conn;
                // Step 3: Execute the sql command
                SqlDataReader dr = comm.ExecuteReader();    // because it is a SELECT statement
                while (dr.Read())   //read row by row
                {

                    int studentID = Convert.ToInt32(dr["StudentID"].ToString());
                    int announcementID = Convert.ToInt32(dr["AnnouncementID"].ToString());


                    earsBEEF.StudentAnnouncement c = new earsBEEF.StudentAnnouncement(studentID, announcementID);
                    results.Add(c);
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
        public static int AddStudentAnnouncement(int studentID, int announcementID)
        {
            int rowsAdded = -1;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                // Step 1: Open connection
                conn.Open();
                // Step 2: Prepare the sql command
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "INSERT INTO StudentAnnouncement(studentID,announcementID) VALUES(@b,@c)";

                comm.Parameters.AddWithValue("@b", studentID);
                comm.Parameters.AddWithValue("@c", announcementID);



                comm.Connection = conn;
                // Step 3: Execute the sql command
                rowsAdded = (int)comm.ExecuteNonQuery();
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
            return rowsAdded;
        }
        public static bool DeleteStudent(int studentID)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                //Connect
                conn.Open();
                //prepare SQl command 
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Student WHERE studentID  = @studentID";
                comm.Parameters.AddWithValue("@studentID", studentID);
                comm.Connection = conn;
                //Excute SQL  command 
                int rowsDeleted = (int)comm.ExecuteNonQuery();
                if (rowsDeleted > 0)
                    return true;
                else
                    return false;
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                //close connection
                conn.Close();
            }
            return false;

        }
        public static bool UpdateStudent(int studentID, Student updatedStudent)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                //Connect
                conn.Open();
                //prepare SQL Commmand
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "UPDATE Student SET Name=@a, AdminNo=@b, Password=@c, gender=@d, School=@e, CourseCode=@f, ContactNo=@g, EmergCont=@h, Email=@i, TShirtSize=@j, StudentType=@k, DateOfBirth=@l WHERE studentID=@studentID";
                comm.Parameters.AddWithValue("@studentID", studentID);
                comm.Parameters.AddWithValue("@a", updatedStudent.Name);
                comm.Parameters.AddWithValue("@b", updatedStudent.AdminNo);
                comm.Parameters.AddWithValue("@c", updatedStudent.Password);
                comm.Parameters.AddWithValue("@d", updatedStudent.Gender);
                comm.Parameters.AddWithValue("@e", updatedStudent.School);
                comm.Parameters.AddWithValue("@f", updatedStudent.CourseCode);
                comm.Parameters.AddWithValue("@g", updatedStudent.ContactNo);
                comm.Parameters.AddWithValue("@h", updatedStudent.EmergCont);
                comm.Parameters.AddWithValue("@i", updatedStudent.Email);
                comm.Parameters.AddWithValue("@j", updatedStudent.TShirtSize);
                comm.Parameters.AddWithValue("@k", updatedStudent.StudentType);
                comm.Parameters.AddWithValue("@l", updatedStudent.DateOfBirth);


                comm.Connection = conn;

                //Execute SQL Command
                int rowsUpdated = (int)comm.ExecuteNonQuery();

                if (rowsUpdated > 0)
                    return true;
                else
                    return false;
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                //Close
                conn.Close();
            }
            return false;


        }
        //checks if admin no. is being used.
        public static bool CheckAdmin(string adminNo)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = DBCONNSTR;
            try
            {
                //Connect
                conn.Open();
                //prepare SQl command 
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "SELECT * FROM Student WHERE adminNo  = @AdminNo";
                comm.Parameters.AddWithValue("@adminNo", adminNo);
                comm.Connection = conn;
                //Excute SQL  command 
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read() == null)
                {
                    return false;
                }
                else
                {
                    return true;
                }

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                //close connection
                conn.Close();
            }
            return false;
        }
    }


}