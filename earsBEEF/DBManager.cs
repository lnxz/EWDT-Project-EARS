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
                    int yearOfStudy = Convert.ToInt32(dr["YearOfStudy"].ToString());
                    string courseCode = dr["CourseCode"].ToString();
                    int age = Convert.ToInt32(dr["Age"].ToString());
                    int contactNo = Convert.ToInt32(dr["ContactNo"].ToString());
                    int emergCont = Convert.ToInt32(dr["EmergencyContact"].ToString());
                    string email = dr["Email"].ToString();
                    if (dr["IsStudentLeader"].ToString()[0].Equals("Y"))
                    {
                        isStudentLeader = true;
                    }
                    string tShirtSize = dr["TShirtSize"].ToString();
                    string nationality = dr["Nationality"].ToString();
                    string studentType = dr["StudentType"].ToString();

                    Student s = new Student(studentID, name, adminNo, password, gender, school, yearOfStudy, courseCode, age, contactNo, emergCont, email, isStudentLeader, tShirtSize, nationality, studentType);
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
        

    }

}