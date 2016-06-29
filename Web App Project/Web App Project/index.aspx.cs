using System;
using System.Linq;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class preview_dotnet_templates_the_big_picture_index : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
        {


            //string fName = firstName.Text;
            

            string query = "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, Photo, AdditionalFeedback, IsDraft, Status)";
            query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @Photo, @AdditionalFeedback, @IsDraft, @Status)";

            SqlCommand myCommand = new SqlCommand(query, myConnection);

            //myCommand.Parameters.AddWithValue("@FName", firstName);
            myConnection.Open();
            myCommand.ExecuteNonQuery();
            myConnection.Close();
        }
    }
}