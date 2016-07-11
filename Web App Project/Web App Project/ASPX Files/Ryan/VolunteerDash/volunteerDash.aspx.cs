using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class volunteerDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*(if (Session["username"] == null)
            {
                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "boss")
            {
                Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
            }*/

            //String organization = Session["Organization"].ToString();
            String organization = "SPCA";
            TextBox1.Text = organization;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportSubmission.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Organization.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ASPX Files/Joanne/updateParticulars.aspx");
        }
    }
}