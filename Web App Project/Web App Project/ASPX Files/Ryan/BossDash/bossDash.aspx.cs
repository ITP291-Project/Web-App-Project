using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class bossDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Username is " + Session["username"]);

            if (Session["username"] == null)
            {
                System.Diagnostics.Debug.WriteLine("Username is null");

                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "volunteer")
            {
                System.Diagnostics.Debug.WriteLine("Privilege is volunteer");

                Response.Redirect("/ASPX Files/Angie/VolunteerDash/volunteerDash.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsApproved.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PendingReports.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RejectedReports.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewApplicants.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster.aspx");
        }
    }
}