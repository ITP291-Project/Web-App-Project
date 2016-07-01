using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Ryan.VolunteerDash
{
    public partial class Organization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("volunteerDash.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportSubmission.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                string organization = "PG House Visit";
            }
            else if (RadioButton2.Checked)
            {
                String organization = "SPCA";
            }
            else if (RadioButton3.Checked)
            {
                String organization = "Sun Love Home";
            }
        }
    }
}