using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_App_Project.ASPX_Files.Ryan.VolunteerDash
{
    public partial class Organization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "boss")
            {
                Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
            }

            Label2.Visible = false;
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
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                string inputorganization;
                string dbOrganization = Session["Organization"].ToString();
                string username = Session["username"].ToString();

                if (RadioButton1.Checked)
                {
                    inputorganization = "Pioneer Generation";
                }
                else if (RadioButton2.Checked)
                {
                    inputorganization = "Salvation Army";
                }
                else if (RadioButton3.Checked)
                {
                    inputorganization = "Ren Ci";
                }
                else if (RadioButton4.Checked)
                {
                    inputorganization = "SPCA";
                }
                else if (RadioButton5.Checked)
                {
                    inputorganization = "Touch Home Care";
                }
                else if (RadioButton6.Checked)
                {
                    inputorganization = "Red Cross Society";
                }
                else
                {
                    inputorganization = null;
                    Response.Redirect("Organization.aspx");
                }

                if (inputorganization.Equals(dbOrganization))
                {
                    string query = "UPDATE Accounts SET Organization='" + inputorganization + "' WHERE Email='" + username + "'";
                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.ExecuteNonQuery();

                    Label1.Text = "Changes updated!";
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Text = "You are already enrolled for this organization!";
                    Label1.Visible = true;
                }
            }
        }
    }
}