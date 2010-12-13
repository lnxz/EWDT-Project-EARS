using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.IO.Path;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Data.SqlClient;


namespace earsBEEF
{

    public partial class AddEventForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Boolean imageUploaded = false;
            if (Session["LoginType"].Equals("Staff"))
            {

                //initialize CCA dropdown list
                ddlCCA.Items.Clear();
                EARS.Staff s = (EARS.Staff)(Session["Login"]);
                ddlCCA.DataSource = EARS.DBManager.GetCCAofStaff(s.StaffID);
                ddlCCA.DataTextField = "Name";
                ddlCCA.DataValueField = "CCAID";
                ddlCCA.DataBind();
            }
            else
            {
                //initialize CCA dropdown list
                ddlCCA.Items.Clear();
                EARS.Student s = (EARS.Student)(Session["Login"]);
                ddlCCA.DataSource = EARS.DBManager.GetCCAofStudent(s.StudentID);
                ddlCCA.DataTextField = "Name";
                ddlCCA.DataValueField = "CcaID";
                ddlCCA.DataBind();
            }


            //initialize category dropdown list
            ddlCate.Items.Clear();

            ddlCate.DataSource = EARS.DBManager.GetAllCategory();
            ddlCate.DataTextField = "Name";
            ddlCate.DataValueField = "CategoryID";
            ddlCate.DataBind();


            if (Page.IsPostBack)
            { }
            else
            {
                DateTime tempDate = DateTime.Today;
                for (int x = 0; x < 3; x++)
                {
                    if (tempDate.Month.ToString().Equals("1"))
                    {
                        DdlMonth.Items.Add("Jan");
                        DdlMonth0.Items.Add("Jan");
                        DdlMonth1.Items.Add("Jan");
                    }
                    else if (tempDate.Month.ToString().Equals("2"))
                    {
                        DdlMonth.Items.Add("Feb");
                        DdlMonth0.Items.Add("Feb");
                        DdlMonth1.Items.Add("Feb");
                    }
                    else if (tempDate.Month.ToString().Equals("3"))
                    {
                        DdlMonth.Items.Add("Mar");
                        DdlMonth0.Items.Add("Mar");
                        DdlMonth1.Items.Add("Mar");
                    }
                    else if (tempDate.Month.ToString().Equals("4"))
                    {
                        DdlMonth.Items.Add("Apr");
                        DdlMonth0.Items.Add("Apr");
                        DdlMonth1.Items.Add("Apr");
                    }
                    else if (tempDate.Month.ToString().Equals("5"))
                    {
                        DdlMonth.Items.Add("May");
                        DdlMonth0.Items.Add("May");
                        DdlMonth1.Items.Add("May");
                    }
                    else if (tempDate.Month.ToString().Equals("6"))
                    {
                        DdlMonth.Items.Add("Jun");
                        DdlMonth0.Items.Add("Jun");
                        DdlMonth1.Items.Add("Jun");
                    }
                    else if (tempDate.Month.ToString().Equals("7"))
                    {

                        DdlMonth.Items.Add("Jul");
                        DdlMonth0.Items.Add("Jul");
                        DdlMonth1.Items.Add("Jul");
                    }
                    else if (tempDate.Month.ToString().Equals("8"))
                    {

                        DdlMonth.Items.Add("Aug");
                        DdlMonth1.Items.Add("Aug");
                        DdlMonth0.Items.Add("Aug");
                    }
                    else if (tempDate.Month.ToString().Equals("9"))
                    {
                        DdlMonth.Items.Add("Sep");
                        DdlMonth0.Items.Add("Sep");
                        DdlMonth1.Items.Add("Sep");
                    }
                    else if (tempDate.Month.ToString().Equals("10"))
                    {

                        DdlMonth.Items.Add("Oct");
                        DdlMonth0.Items.Add("Oct");
                        DdlMonth1.Items.Add("Oct");
                    }
                    else if (tempDate.Month.ToString().Equals("11"))
                    {
                        DdlMonth.Items.Add("Nov");
                        DdlMonth0.Items.Add("Nov");
                        DdlMonth1.Items.Add("Nov");
                    }
                    else if (tempDate.Month.ToString().Equals("12"))
                    {

                        DdlMonth.Items.Add("Dec");
                        DdlMonth1.Items.Add("Dec");
                        DdlMonth0.Items.Add("Dec");
                    }

                    tempDate = tempDate.AddMonths(1);
                }

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            if (DdlMonth.SelectedIndex != 0)
            {
                if (lbDate.Items.Count == 0)
                {
                    lbDate.Items.Add(DdlDay.Text + "-" + DdlMonth.Text + "-" + DdlYear.Text);
                }
                else
                {
                    Boolean repeat = false;
                    for (int x = 0; x < lbDate.Items.Count; x++)
                    {
                        if (lbDate.Items[x].ToString().Equals(DdlDay.Text + "-" + DdlMonth.Text + "-" + DdlYear.Text))
                        {
                            repeat = true;
                        }
                    }
                    if (repeat == false)
                    {

                        lbDate.Items.Add(DdlDay.Text + "-" + DdlMonth.Text + "-" + DdlYear.Text);
                    }
                }
            }
        }





        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //get cost of event
            double cost = 0;
            if (RadioButton1.Checked) { }
            else
            {
                if (tbxDol.Text.Equals(""))
                {

                }
                else
                {
                    cost = Convert.ToDouble(tbxDol.Text);
                }
            }

            if (DdlDay0.SelectedValue.Equals("Day") || DdlDay1.SelectedValue.Equals("Day"))
            {
                lblDateError1.Visible = true;
            }
            else
            {
                lblDateError1.Visible = false;
                DateTime month1 = DateTime.Today.AddMonths(DdlMonth0.SelectedIndex - 1);
                int monthStart = month1.Month;
                DateTime month2 = DateTime.Today.AddMonths(DdlMonth1.SelectedIndex - 1);
                int monthEnd = month2.Month;
                DateTime startDate = new DateTime(Convert.ToInt32(DdlYear0.Text), monthStart, DdlDay0.SelectedIndex + 1);
                DateTime endDate = new DateTime(Convert.ToInt32(DdlYear1.Text), monthEnd, DdlDay1.SelectedIndex + 1);
                if (endDate < startDate)
                {
                    lblDateError.Visible = true;
                }
                else
                {
                    lblDateError.Visible = false;
                }

                string eventDatesString = "";
                for (int x = 0; x < lbDate.Items.Count; x++)
                {
                    eventDatesString = eventDatesString +";"+ lbDate.Items[x].ToString();
                }


                if (Session["LoginType"].ToString().Equals("Staff"))
                {
                    EARS.Staff tempStaff = (EARS.Staff)(Session["Login"]);
                    EARS.DBManager.AddEvents(tbxName.Text, tbxVenue.Text, cost, ddlCate.SelectedValue, tbxDes.Text, eventDatesString, startDate, endDate, Convert.ToInt32(tbxQuota.Text),
                        Convert.ToInt32(ddlCCA.SelectedValue), DateTime.Today, tempStaff.StaffID, "Available");

                    tbxName.Text = "";
                    tbxVenue.Text = "";
                    tbxDes.Text = "";
                    tbxDol.Text = "";
                    tbxQuota.Text = "";

                    string successAdd = "Successfully added an event";
                    Response.Redirect("SuccessPage.aspx?successAdd="+successAdd);
                }
                else
                {
                    EARS.Student tempStudent = (EARS.Student)(Session["Login"]);
                    EARS.DBManager.AddEvents(tbxName.Text, tbxVenue.Text, cost, ddlCate.SelectedValue, tbxDes.Text, eventDatesString, startDate, endDate,
                        Convert.ToInt32(tbxQuota.Text), Convert.ToInt32(ddlCCA.SelectedValue), tempStudent.StudentID, DateTime.Today, "Available");

                    tbxName.Text = "";
                    tbxVenue.Text = "";
                    tbxDes.Text = "";
                    tbxDol.Text = "";
                    tbxQuota.Text = "";
                    string successAdd = "Successfully added an event";
                    Response.Redirect("./SuccessPage.aspx?successAdd=" + successAdd);
                }
            }



        }
        protected void DdlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlDay.Items.Clear();
            DdlYear.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(DdlMonth.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            do
            {
                DdlDay.Items.Add(tempDate.Day.ToString());
                tempDate = tempDate.AddDays(1);
            }
            while (tempDate.Month == tempMonthDate.Month);

            DateTime tempMonth = DateTime.Today;
            if (tempMonth.Month <= 10)
            {
                DdlYear.Items.Add(DateTime.Today.Year.ToString());
            }
            else if (tempMonth.Month == 11)
            {
                if (DdlMonth.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear.Items.Add(DateTime.Today.Year.ToString());
                }

            }
            else if (tempMonth.Month == 12)
            {
                if (DdlMonth.SelectedIndex == 2 || DdlMonth.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear.Items.Add(DateTime.Today.Year.ToString());
                }
            }

        }

        protected void DdlMonth0_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlDay0.Items.Clear();
            DdlYear0.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(DdlMonth0.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            do
            {
                DdlDay0.Items.Add(tempDate.Day.ToString());
                tempDate = tempDate.AddDays(1);
            }
            while (tempDate.Month == tempMonthDate.Month);

            DateTime tempMonth = DateTime.Today;
            if (tempMonth.Month <= 10)
            {
                DdlYear0.Items.Add(DateTime.Today.Year.ToString());
            }
            else if (tempMonth.Month == 11)
            {
                if (DdlMonth0.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear0.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear0.Items.Add(DateTime.Today.Year.ToString());
                }

            }
            else if (tempMonth.Month == 12)
            {
                if (DdlMonth0.SelectedIndex == 2 || DdlMonth0.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear0.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear0.Items.Add(DateTime.Today.Year.ToString());
                }
            }
        }

        protected void DdlMonth1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlDay1.Items.Clear();
            DdlYear1.Items.Clear();
            DateTime tempMonthDate = DateTime.Today;
            tempMonthDate = tempMonthDate.AddMonths(DdlMonth1.SelectedIndex - 1);
            DateTime tempDate = new DateTime(DateTime.Today.Year, tempMonthDate.Month, 1);
            do
            {
                DdlDay1.Items.Add(tempDate.Day.ToString());
                tempDate = tempDate.AddDays(1);
            }
            while (tempDate.Month == tempMonthDate.Month);

            DateTime tempMonth = DateTime.Today;
            if (tempMonth.Month <= 10)
            {
                DdlYear1.Items.Add(DateTime.Today.Year.ToString());
            }
            else if (tempMonth.Month == 11)
            {
                if (DdlMonth1.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear1.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear1.Items.Add(DateTime.Today.Year.ToString());
                }

            }
            else if (tempMonth.Month == 12)
            {
                if (DdlMonth1.SelectedIndex == 2 || DdlMonth1.SelectedIndex == 3)
                {
                    DateTime tempYear = DateTime.Today;
                    tempYear = tempYear.AddYears(1);
                    DdlYear1.Items.Add(tempYear.Year.ToString());
                }
                else
                {
                    DdlYear1.Items.Add(DateTime.Today.Year.ToString());
                }
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                tbxDol.Enabled = true;
            }
        }

        protected void ddlCate_SelectedIndexChanged(object sender, EventArgs e)
        {
        }


        protected void Page_PreInit()
        {
            this.MasterPageFile = Session["MyPage_Master"].ToString();
        }



        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            tbxDol.Enabled = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            tbxName.Text = "";
            tbxVenue.Text = "";
            tbxDes.Text = "";
            tbxDol.Text = "";
            tbxQuota.Text = "";
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            try
            {
                int x = lbDate.SelectedIndex;
                lbDate.Items.RemoveAt(x);
                
            }
            catch (Exception)
            {
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddCategory.aspx");
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //if (FileUpload1.PostedFile != null)
            //{
                //int fileSize = FileUpload1.PostedFile.ContentLength;
                //byte[] myData = new byte[fileSize];
                //FileUpload1.PostedFile.InputStream.Read(myData, 0, fileSize);
                //FileStream newFile = new FileStream(@"C:\ewdt\EventImage",FileMode.Create);
                //byte[] Buffer;
                //newFile.Write(Buffer, 0, Buffer.Length);
            //}
            try
            {
                //Read Image Bytes into a byte array
                byte[] imageData = ReadFile(FileUpload1.PostedFile.FileName);

                //Initialize SQL Server Connection
                SqlConnection CN = new SqlConnection( EARS.DBManager.DBCONNSTR);
 
                //Set insert query
                string qry = "insert into ImagesStore (OriginalPath,ImageData) values(@OriginalPath, @ImageData)";

                //Initialize SqlCommand object for insert.
                SqlCommand SqlCom = new SqlCommand(qry, CN);

                //We are passing Original Image Path and Image byte data as sql parameters.
                SqlCom.Parameters.Add(new SqlParameter("@OriginalPath", (object)FileUpload1.PostedFile.FileName));
                SqlCom.Parameters.Add(new SqlParameter("@ImageData", (object)imageData));

                //Open connection and execute insert query.
                CN.Open();
                SqlCom.ExecuteNonQuery();
                CN.Close();

                //Close form and return to list or images.
                
            }
            catch (Exception ex)
            {
             //   MessageBox.Show(ex.ToString());
            }

        }
        byte[] ReadFile(string sPath)
        {
            //Initialize byte array with a null value initially.
            byte[] data = null;

            //Use FileInfo object to get file size.
            FileInfo fInfo = new FileInfo(sPath);
            long numBytes = fInfo.Length;

            //Open FileStream to read file
            FileStream fStream = new FileStream(sPath, FileMode.Open, FileAccess.Read);

            //Use BinaryReader to read file stream into byte array.
            BinaryReader br = new BinaryReader(fStream);

            //When you use BinaryReader, you need to supply number of bytes to read from file.
            //In this case we want to read entire file. So supplying total number of bytes.
            data = br.ReadBytes((int)numBytes);
            return data;
        }

    }
}