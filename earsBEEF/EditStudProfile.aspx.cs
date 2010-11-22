using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace earsBEEF
{
    public partial class EditStudProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int contact = Convert.ToInt32(tbxContact.Text);
            int emgContact = Convert.ToInt32(tbxEmergContact.Text);
            string size = ddlsize.Text;

        }
    }
}