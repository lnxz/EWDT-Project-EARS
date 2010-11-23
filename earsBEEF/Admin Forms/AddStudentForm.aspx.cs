using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class AddStudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Session["LoginType"].Equals("StaffYes"))
            //{
            //    Response.Redirect("Home.aspx");
            //}
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string adminNo = tbxAdminNum.Text;
            string studType = DdlStudType.Text;
            string school = ddlSchool.Text;
            string course = DdlCourse.Text;
            string name = tbxName.Text;

            string s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            string p = "";
            Random r = new Random();
            for (int i = 0; i < 8; i++)
            {
                p = p + s.Substring(r.Next(0, s.Length - 1), 1);
            }

            string password = p;
            int day = Convert.ToInt32(DdlDay.Text);
            int month = Convert.ToInt32(DdlMonth.SelectedValue);
            int year = Convert.ToInt32(DdlYear.Text);
            string size = ddlSize.Text;
            int contract = Convert.ToInt32( tbxContact.Text);
            string email = tbxEmail.Text;
            int emgContract = Convert.ToInt32(tbxEmergContact.Text);

            char gender;
            if (rbMale.Checked) { gender = 'M'; }
            else { gender = 'F'; }

            char leader;
            if (rbYes.Checked){leader = 'Y';}
            else {leader = 'N';}

            string dob = DdlDay.Text + "" + DdlMonth.Text + "" + DdlMonth.Text;

            DateTime dateOfBirth = new DateTime(year, month, day);

            //EARS.Student s = new EARS.Student(name, adminNo, matricNo, gender, school, course, 
            //                    contract, emgContract, email, leader, size, studType, dateOfBirth);

            EARS.DBManager.AddStudent(name, adminNo, password, gender, school, course,
                                contract, emgContract, email, leader, size, studType, dateOfBirth); ;

           // EARS.DBManager.AddStudent();
        }

        protected void ddlSchool_SelectedIndexChanged(object sender, EventArgs e)
        {
            DdlCourse.Items.Clear();

            if (ddlSchool.SelectedIndex == 0)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("Diploma In Applied Food Science & Nutrition (T26)");
                DdlCourse.Items.Add("Diploma in Baking & Culinary Science (T44)");
                DdlCourse.Items.Add("Diploma in Biomedical Science (T27)");
                DdlCourse.Items.Add("Diploma in Biotechnology (T31)");
                DdlCourse.Items.Add("Diploma in Chemical Engineering (T33)");
                DdlCourse.Items.Add("Diploma in Consumer Science & Technology");
                DdlCourse.Items.Add("Diploma in Pharmaceutical Science (T25)");
                DdlCourse.Items.Add("Diploma in Veterinary Technology (T45)");
            }

            else if (ddlSchool.SelectedIndex == 1)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("Diploma in Accounting & Finance (T02)");
                DdlCourse.Items.Add("Diploma in Business (T01)");
                DdlCourse.Items.Add("Diploma in Business Information Technology (T36)");
                DdlCourse.Items.Add("Diploma in Communications & Media Management (T40)");
                DdlCourse.Items.Add("Diploma in Culinary & Catering Management (T18)");
                DdlCourse.Items.Add("Diploma in Hospitality & Tourism Management (T08)");
                DdlCourse.Items.Add("Diploma in Hospitality & Tourism Business");
                DdlCourse.Items.Add("Diploma in Law & Management (T09)");
                DdlCourse.Items.Add("Diploma in Leisure & Resort Management (T19)");
                DdlCourse.Items.Add("Diploma in Marketing (T01)");
                DdlCourse.Items.Add("Diploma in Retail Management (T39)");
                DdlCourse.Items.Add("Diploma in Baking & culinary Science ()");
                DdlCourse.Items.Add("Business Studies Grouping");
            }

            else if (ddlSchool.SelectedIndex == 2)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("Diploma in Apparel Design & Merchandising (T20)");
                DdlCourse.Items.Add("Diploma in Environment Design (T46)");
                DdlCourse.Items.Add("Diploma in Interior Architecture & Design  (T22)");
                DdlCourse.Items.Add("Diploma in Interactive Media Design  (T21)");
                DdlCourse.Items.Add("Diploma in Moving Images  (T23)");
                DdlCourse.Items.Add("Diploma in Product & Industrial Design  (T35)");
                DdlCourse.Items.Add("Diploma in Retail & Hospitality Design  (T47)");
                DdlCourse.Items.Add("Diploma in Visual Communication  (T24)");
            }



            else if (ddlSchool.SelectedIndex == 3)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("Diploma in Common Engineering Programme (T56)");
                DdlCourse.Items.Add("Diploma in Electrical & Electronic Engineering Programme (T05");
                DdlCourse.Items.Add("Diploma in Mechatronics & Aerospace Progamme (T06)");
                DdlCourse.Items.Add("#D Interactive Media Technology (T49)");
                DdlCourse.Items.Add("Infocomm & Network Engineering (T37)");
                DdlCourse.Items.Add("Aerospace Electronics (T50)");
                DdlCourse.Items.Add("Aerospace Engineeing (T51)");
                DdlCourse.Items.Add("Aviation Management & Services (T04)");
                DdlCourse.Items.Add("Biomedical Informatic & Engineeing (T38)");
                DdlCourse.Items.Add("Business Process & Systems Engineering (T43)");
                DdlCourse.Items.Add("Clean Energy (T52)");
                DdlCourse.Items.Add("Computer Engineering (T13)");
                DdlCourse.Items.Add("Electronics (T05)");
                DdlCourse.Items.Add("Green Buliding & Sustainability (T29)");
                DdlCourse.Items.Add("Intergrated Facility Management (T28)");
                DdlCourse.Items.Add("Mechatronics");
                DdlCourse.Items.Add("Microelectronics (T05)");
                DdlCourse.Items.Add("Media & Communication Technonlgy (T05)");
            }


            else if (ddlSchool.SelectedIndex == 4)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("Diploma in Early Childhood Studies  (T54)");
                DdlCourse.Items.Add("Diploma in Gerontological Management Studies  (T53)");
                DdlCourse.Items.Add("Diploma in Psychology Studies  (T48)");
            }
            else if (ddlSchool.SelectedIndex == 5)
            {
                DdlCourse.Items.Clear();
                DdlCourse.Items.Add("Diploma in Digital Forensics(T55)");
                DdlCourse.Items.Add("Diploma in Cyber & Digital Security(T15)");
                DdlCourse.Items.Add("Diploma in Game  & Enterainment (T16)");
                DdlCourse.Items.Add("Diploma in Financial Business Informatics");
                DdlCourse.Items.Add("Diploma in Information Technology (T30)");
                DdlCourse.Items.Add("Diploma in INteractive Media Informatics (T34)");
                DdlCourse.Items.Add("Moblie& Network Services (T24)");
            }
        }
    }
}