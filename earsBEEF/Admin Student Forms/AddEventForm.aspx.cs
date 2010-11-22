using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class AddEventForm : System.Web.UI.Page
    {
        public static int datesAdded = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Session["LoginType"].Equals("StudentNo")){
            //    Response.Redirect("Home.aspx");
            //}
         //   this.MasterPageFile = Session["MyPage_Master"].ToString();
            if (Page.IsPostBack)
            { }
            else
            {
                for (int x = 0; x < 3; x++)
                {
                    DateTime tempDate = DateTime.Today;
                    DdlMonth.Items.Add(tempDate.Month.ToString());
                    tempDate.AddMonths(1);
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DdlDay.SelectedIndex != 0 && DdlMonth.SelectedIndex != 0 && DdlYear.SelectedIndex != 0)
            {
                if (datesAdded == 0)
                {
                    Label1.Text = DdlDay.Text + " " + DdlMonth + " " + DdlYear;
                }
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int cost = 0;
            if(RadioButton1.Checked){}
            else{
            cost = Convert.ToInt32(tbxDol.Text);
            }
            //EARS.DBManager.AddEvents(tbxName.Text,tbxVenue.Text,cost,ddlCate,tbxDes,
        }

        protected void tbxName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DdlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}