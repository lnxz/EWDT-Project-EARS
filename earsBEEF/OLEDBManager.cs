using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Collections;

namespace earsBEEF
{
    public class OLEDBManager
    {

        static string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=e:\Book2.xlsx;Extended Properties=""Excel 12.0;HDR=Yes""";
        public static ArrayList massStudentImport(string filePath)
        {
            
           connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+filePath+";Extended Properties=\"Excel 8.0;HDR=Yes\"";
            ArrayList errorList = new ArrayList();
            OleDbCommand myCommand = new OleDbCommand("Select * from [Student$];");
            OleDbConnection myConnection = new OleDbConnection(connectionString);
            try
            {
                myConnection.Open();

                myCommand.Connection = myConnection;

                OleDbDataReader myReader = myCommand.ExecuteReader();
                Boolean checkRepeat = false;
                while (myReader.Read() && checkRepeat == false)
                {
                    string name = "";
                    string adminNo = "";
                    string password = "";
                    char gender = 'M';
                    string school = "";
                    string courseCode = "";
                    int contactNo = 0;
                    int emergencyContact = 0;
                    string email = "";
                    char isStudentLeader = 'N';
                    string tshirtSize = "";
                    string studentType = "";
                    DateTime dateOfBirth = DateTime.Today;


                    for (int i = 0; i < 12; i++)
                    {
                        if (i == 0)
                        {
                            name = myReader[i].ToString();
                            if (name.Equals(""))
                            {
                                checkRepeat = true;
                                break;

                            }
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
                            string genderTemp = myReader[i].ToString();
                            if (genderTemp.Equals("F"))
                            {
                                gender = 'F';
                            }

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
                            string testcont = myReader[i].ToString();
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


                    } if (checkRepeat == true)
                    {
                    }
                    else
                    {
                        if (EARS.DBManager.CheckAdmin(adminNo))
                        {
                            EARS.DBManager.AddStudent(name, adminNo, password, gender, school, courseCode, contactNo, emergencyContact, email, isStudentLeader, tshirtSize, studentType, dateOfBirth);
                            errorList.Add("Successfully Added!");
                        }
                        else
                        {
                            errorList.Add("Duplicate AdminNo: " + adminNo + " already exists");
                        }
                    }
                }

            }
            catch (OleDbException ex)
            {
                string exceptionOle = ex.ToString();
            }
            finally
            {

                myConnection.Close();
            }
            return errorList;
        }

        public static ArrayList massStaffImport()
        {
            ArrayList errorList = new ArrayList();
            OleDbCommand myCommand = new OleDbCommand("Select * from [staff$];");
            OleDbConnection myConnection = new OleDbConnection(connectionString);
            try
            {
                myConnection.Open();

                myCommand.Connection = myConnection;

                OleDbDataReader myReader = myCommand.ExecuteReader();
                Boolean checkRepeat = false;
                while (myReader.Read() && checkRepeat == false)
                {
                    string name = "";
                    string staffEmail = "";
                    string password = "";
                    char gender = 'M';
                    string school = "";
                    string contactNo = "";
                    string personalEmail = "";
                    string position = "";
                    char isAdmin = 'N';
                    DateTime dateOfBirth = DateTime.Today;
                    string officeNo = "";

                    for (int i = 0; i < 10; i++)
                    {
                        if (i == 0)
                        {
                            name = myReader[i].ToString();
                            if (name.Equals(""))
                            {
                                checkRepeat = true;
                                break;

                            }
                        }
                        else if (i == 1)
                        {
                            staffEmail = myReader[i].ToString();
                        }
                        else if (i == 2)
                        {
                            password = myReader[i].ToString();
                        }
                        else if (i == 3)
                        {
                            string genderTemp = myReader[i].ToString();
                            if (genderTemp.Equals("F"))
                            {
                                gender = 'F';
                            }
                        }
                        else if (i == 4)
                        {
                            school = myReader[i].ToString();
                        }
                        else if (i == 5)
                        {
                            contactNo = myReader[i].ToString();
                        }
                        else if (i == 6)
                        {
                            personalEmail = myReader[i].ToString();
                        }
                        else if (i == 7)
                        {
                            position = myReader[i].ToString();
                        }
                        else if (i == 8)
                        {
                            isAdmin = myReader[i].ToString()[0];
                        }
                        else if (i == 9)
                        {
                            dateOfBirth = DateTime.Parse(myReader[i].ToString());
                        }
                        else if (i == 10)
                        {
                            officeNo = myReader[i].ToString();
                        }

                    } if (checkRepeat == true)
                    {
                    }
                    else
                    {
                        if (EARS.DBManager.CheckStaffEmail(staffEmail))
                        {
                            EARS.DBManager.AddStaff(name, staffEmail, password, gender, school, contactNo, personalEmail, position, isAdmin, officeNo, dateOfBirth);
                            errorList.Add("Successfully Added!");
                        }
                        else
                        {
                            errorList.Add("Duplicate Staff Email: " + staffEmail + " already exists");
                        }
                    }
                }

            }
            catch (OleDbException ex)
            {

            }
            finally
            {

                myConnection.Close();
            }
            return errorList;
        }
        public static ArrayList massEventImport()
        {
            ArrayList errorList = new ArrayList();
            OleDbCommand myCommand = new OleDbCommand("Select * from [event$];");
            OleDbConnection myConnection = new OleDbConnection(connectionString);
            try
            {
                myConnection.Open();

                myCommand.Connection = myConnection;

                OleDbDataReader myReader = myCommand.ExecuteReader();
                Boolean checkRepeat = false;
                while (myReader.Read() && checkRepeat == false)
                {
                    string name = "";
                    string venue = "";
                    double regCost = 0.0;
                    string cateID = "";
                    string desc = "";
                    string eventDates = "";
                    DateTime regStart = DateTime.Today; 
                    DateTime regEnd = DateTime.Today;
                    int quota = 0;
                    int ccaID = 0;
                    int orgStudentID = -1;
                    int orgStaffID = -1;
                    DateTime dateCreated = DateTime.Today;


                    for (int i = 0; i < 12; i++)
                    {
                        if (i == 0)
                        {
                            name = myReader[i].ToString();
                            if (name.Equals(""))
                            {
                                checkRepeat = true;
                                break;

                            }
                        }
                        else if (i == 1)
                        {
                            venue = myReader[i].ToString();
                        }
                        else if (i == 2)
                        {
                            regCost = Convert.ToDouble(myReader[i].ToString());
                        }
                        else if (i == 3)
                        {
                            cateID = myReader[i].ToString();
                        }
                        else if (i == 4)
                        {
                            desc = myReader[i].ToString();
                        }
                        else if (i == 5)
                        {
                            eventDates = myReader[i].ToString();
                        }
                        else if (i == 6)
                        {
                            regStart = DateTime.Parse(myReader[i].ToString());
                        }
                        else if (i == 7)
                        {
                            regEnd = DateTime.Parse(myReader[i].ToString());
                        }
                        else if (i == 8)
                        {
                            quota = Convert.ToInt32(myReader[i].ToString());
                        }
                        else if (i == 9)
                        {
                            ccaID = Convert.ToInt32(myReader[i].ToString());
                        }
                        else if (i == 10)
                        {
                            orgStudentID = Convert.ToInt32(myReader[i].ToString());
                        }
                        else if (i == 11)
                        {
                            orgStaffID = Convert.ToInt32(myReader[i].ToString());
                        }
                        else if (i == 12)
                        {
                            dateCreated = DateTime.Parse(myReader[i].ToString());
                        }


                    } if (checkRepeat == true)
                    {
                    }
                    else
                    {
                        if (orgStudentID == -1 && orgStaffID == -1)
                        {
                            errorList.Add("Invalid Event : " + name + " , No organizer indicated");
                        }
                        else if (orgStudentID == -1)
                        {
                            EARS.DBManager.AddEvents(name, venue, regCost, cateID, desc, eventDates, regStart, regEnd, quota, ccaID, dateCreated, orgStaffID, "Available");
                            errorList.Add("Successfully Added!");
                        }
                        else
                        {
                            EARS.DBManager.AddEvents(name, venue, regCost, cateID, desc, eventDates, regStart, regEnd, quota, ccaID,orgStudentID, dateCreated, "Available");
                            errorList.Add("Successfully Added!");
                        }
                        //if (EARS.DBManager.CheckStaffEmail(staffEmail))
                        //  {

                        // }
                        //  else
                        // {
                        // errorList.Add("Duplicate Staff Email: " + staffEmail + " already exists");
                        //}
                    }
                }

            }
            catch (OleDbException ex)
            {

            }
            finally
            {

                myConnection.Close();
            }
            return errorList;
        }
    }
}