using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace earsBEEF
{
    public class OLEDBManager
    {

        static string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Book1.xls;Extended Properties=""Excel 8.0;HDR=Yes""";
        public static void massStudentImport()
        {
            OleDbCommand myCommand = new OleDbCommand("Select * from [Student$];");
            OleDbConnection myConnection = new OleDbConnection(connectionString);

            myConnection.Open();

            myCommand.Connection = myConnection;

            OleDbDataReader myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                string name ="";
                string adminNo ="";
                string password ="";
                char gender ='';
                string school ="";
                string courseCode ="";
                int contactNo = 0;
                int emergencyContact = 0 ;
                string email ="";
                char isStudentLeader ='';
                string tshirtSize ="";
                string studentType ="";
                DateTime dateOfBirth = DateTime.Today;
               
                for (int i = 0; i < 13; i++)
                {
                    if(i == 0)
                    {
                        name = myReader[i].ToString();
                    }
                    else if (i == 1)
                    {
                        adminNo = myReader[i].ToString();
                    }
                    else if (i == 2)
                    {
                        password = myReader[i].ToString();
                    }
                    else if (i == 3)
                    {
                        gender = myReader[i].ToString()[0];
                    }
                    else if (i == 4)
                    {
                        school = myReader[i].ToString();
                    }
                    else if (i == 5)
                    {
                        courseCode = myReader[i].ToString();
                    }
                    else if (i == 6)
                    {
                        contactNo = Convert.ToInt32(myReader[i].ToString());
                    }
                    else if (i == 7)
                    {
                        emergencyContact = Convert.ToInt32(myReader[i].ToString());
                    }
                    else if (i == 8)
                    {
                        email = myReader[i].ToString();
                    }
                    else if (i == 9)
                    {
                        isStudentLeader = myReader[i].ToString()[0];
                    }
                    else if (i == 10)
                    {
                        tshirtSize = myReader[i].ToString();
                    }
                    else if (i == 11)
                    {
                        studentType = myReader[i].ToString();
                    }
                    else if (i == 12)
                    {
                        dateOfBirth = DateTime.Parse(myReader[i].ToString());
                    }

                }
                EARS.DBManager.AddStudent(name, adminNo, password, gender, school, courseCode, contactNo, emergencyContact, email, isStudentLeader, tshirtSize, studentType, dateOfBirth)

            }

            myConnection.Close();
        }
    }
}