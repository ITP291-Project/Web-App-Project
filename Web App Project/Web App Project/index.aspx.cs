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

            /* DO NOT TOUCH!
            string fName = firstName.Text;
            string lName = lastName.Text;
            string gender = gender.Text;
            string nric = nric.Text;
            string bDate = birthDate.Text;
            string email = email.Text;
            string telNo = telephone.Text;
            string pw = password.Text;
            string occupation = occupation.Text;
            string addr = address.Text;
            string salutn = salutation.Text;


            string query = "INSERT INTO Accounts (fName, lName, gender, nric, bDate, email, telNo, pw, occupation, addr, salutn)";
            query += "VALUES (@FName, @LName, @Gender, @NRIC, @Birthdate, @Email, @TelNo, @Password, @Occupation, @Address, @Salutation)";

            SqlCommand myCommand = new SqlCommand(query, myConnection);

            myCommand.Parameters.AddWithValue("@FName", fName);
            myCommand.Parameters.AddWithValue("@LName", lName);
            myCommand.Parameters.AddWithValue("@Gender", gender);
            myCommand.Parameters.AddWithValue("@NRIC", nric);
            myCommand.Parameters.AddWithValue("@Birthdate", bDate);
            myCommand.Parameters.AddWithValue("@Email", email);
            myCommand.Parameters.AddWithValue("@TelNo", telNo);
            myCommand.Parameters.AddWithValue("@Password", pw);
            myCommand.Parameters.AddWithValue("@Occupation", occupation);
            myCommand.Parameters.AddWithValue("@Address", addr);
            myCommand.Parameters.AddWithValue("@Salutation", salutn);
           
            myConnection.Open();
            myCommand.ExecuteNonQuery();
            myConnection.Close();
            */
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("/ASPX Files/Angie/SignUp.aspx");
    }

}