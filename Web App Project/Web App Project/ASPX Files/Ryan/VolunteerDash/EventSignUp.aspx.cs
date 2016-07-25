using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Web_App_Project.ASPX_Files.Ryan.VolunteerDash
{
    public partial class SignUp : System.Web.UI.Page
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

            Label3.Visible = false;

            String organization = Session["Organization"].ToString();
            //String organization = "Pioneer Generation";
            TextBox1.Text = organization;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                String username = Session["username"].ToString();
                //String username = "stupid@idiot.com";
                String organization = TextBox1.Text;
                String dbOrganization = Session["Organization"].ToString();
                String day = DropDownList2.Text;
                String time = DropDownList1.Text;

                    string query = "INSERT INTO EventSignUp (Id, Username, Organization, Day, Time)";
                    query += "VALUES (@Id, @Username, @Organization, @Day, @Time)";
                    //query += "WHERE (SELECT * FROM Timetable WHERE " + day + "='" + organization + "' AND Time='" + time + "')";
                    int i = 1;

                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@Id", i++);
                    myCommand.Parameters.AddWithValue("@Username", username);
                    myCommand.Parameters.AddWithValue("@Organization", organization);
                    myCommand.Parameters.AddWithValue("@Day", day);
                    myCommand.Parameters.AddWithValue("@Time", time);

                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ASPX Files/Joanne/viewParticulars.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ASPX Files/Seri/Rewards.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Organization.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportSubmission.aspx");
        }
    }
}