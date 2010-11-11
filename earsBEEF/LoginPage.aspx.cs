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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (Student s in DBManager.GetAllStudents())
            {
                if (tbxLoginId.Text.Equals(s.AdminNo) && tbxLoginPw.Text.Equals(s.Password))
                {

                    FormsAuthentication.SetAuthCookie(s.Name, false);
                    Session["loginUserName"] = tbxLoginId.Text;
                    if (s.IsStudentLeader)
                    {
                        Session["LoginType"] = "StudentYes";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedInStudentSL.Master";
                    }
                    else
                    {
                        Session["LoginType"] = "StudentNo";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedInStudent.Master";
                    }
                    if (FormsAuthentication.GetRedirectUrl(s.Name, false).Equals("LoginPage.aspx"))
                    {   Response.Redirect("Home.aspx");
                       
                    }
                    else{
                        Response.Redirect("Home.aspx");
                        //FormsAuthentication.RedirectFromLoginPage(s.Name, false);
                    }
                }
            }

            foreach (Staff st in DBManager.GetAllStaff())
            {
                if (tbxLoginId.Text.Equals(st.StaffEmail) && tbxLoginPw.Text.Equals(st.Password))
                {
                    FormsAuthentication.SetAuthCookie(st.Name, false);
                     Session["loginUserName"] = tbxLoginId.Text;
                    if (st.Admin.Equals('Y'))
                    {
                        Session["LoginType"] = "StaffYes";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedIn.Master";
                    }
                    else
                    {
                        Session["LoginType"] = "StaffNo";
                        Session["MyPage_Master"] = "~/MasterPage/LoggedInStaff.Master";
                    } 
                    if (FormsAuthentication.GetRedirectUrl(st.Name, false) == "/LoginPage.aspx")
                    {   Response.Redirect("Home.aspx");
                       
                    }
                    else{
                        Response.Redirect("Home.aspx");
                        //FormsAuthentication.RedirectFromLoginPage(st.Name, false);
                    }
                }
                
            }

        }
    }
}