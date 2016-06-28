using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_App_Project.Ryan.Volunteer
{
    public partial class ReportSubmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                string caseNo = TextBox1.Text;
                string date = TextBox2.Text;
                string duration = TextBox3.Text;
                string type = DropDownList1.Text;
                string feedback = TextBox5.Text;

                string query = "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, Photo, AdditionalFeedback)";
                query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @Photo, @AdditionalFeedback)";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                
                myCommand.Parameters.AddWithValue("@CaseNo", caseNo);
                myCommand.Parameters.AddWithValue("@Date", date);
                myCommand.Parameters.AddWithValue("@Duration", duration);
                myCommand.Parameters.AddWithValue("@TypeOfVolunteer", "Test");
                myCommand.Parameters.AddWithValue("@Photo", "Test");
                myCommand.Parameters.AddWithValue("@AdditionalFeedBack", feedback);
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close();
                //Test
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportDrafts.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubmittedReport.aspx");
        }
    }
}