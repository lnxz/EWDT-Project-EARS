using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace EARS
{
    public partial class LoginPage : System.Web.UI.Page
    {
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tbxLoginId.Text.ToString().Length == 8)
            {
                EARS.Student s = DBManager.loginStudent(tbxLoginId.Text, tbxLoginPw.Text);
                if (s != null)
                {
                    if (s.IsStudentLeader.Equals('Y'))
                    {
                        Session["Login"] = s;
                        Session["LoginType"] = "Student";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedInStudentSL.Master";
                    }
                    else
                    {
                        Session["Login"] = s;
                        Session["LoginType"] = "Student";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedInStudent.Master";
                    }
                    if (FormsAuthentication.GetRedirectUrl(s.Name, false).Equals("default.aspx"))
                    {
                        Response.Redirect("RegisteredEventStud.aspx");

                    }
                    else
                    {
                        Response.Redirect("RegisteredEventStud.aspx"); //home.aspx
                        //FormsAuthentication.RedirectFromLoginPage(s.Name, false);
                    }
                }
            }
            else
            {

                EARS.Staff st = DBManager.loginStaff(tbxLoginId.Text, tbxLoginPw.Text);
                if (st != null)
                {
                    if (st.Admin.Equals('Y'))
                    {
                        Session["Login"] = st;
                        Session["LoginType"] = "Staff";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedIn.Master";
                    }
                    else
                    {
                        Session["Login"] = st;
                        Session["LoginType"] = "Staff";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedInStaff.Master";
                    }
                    if (FormsAuthentication.GetRedirectUrl(st.Name, false).Equals("default.aspx"))
                    {
                        Response.Redirect("ViewEvents.aspx");

                    }
                    else
                    {
                        Response.Redirect("ViewEvents.aspx");
                        //FormsAuthentication.RedirectFromLoginPage(s.Name, false);
                    }
                }
                
            }
            Label2.Visible = true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            tbxLoginId.Focus();
        }
    }
}
