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
                    if(dr["IsStudentLeader"].ToString()[0].Equals("Y"))
                    {
                    isStudentLeader = true;
                    }
                    string tShirtSize = dr["TShirtSize"].ToString(); 
                    string nationality = dr["Nationality"].ToString(); 
                    string studentType = dr["StudentType"].ToString(); 

                    Student s = new Student(studentID,name,adminNo,password,gender,school,yearOfStudy,courseCode,age,contactNo,emergCont,email,isStudentLeader,tShirtSize,nationality,studentType);
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


    }

}