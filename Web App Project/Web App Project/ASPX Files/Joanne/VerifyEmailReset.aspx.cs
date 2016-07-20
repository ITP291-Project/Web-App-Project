using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class VerifyEmailReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            //{
            //    //verify if input is equals to random generated number sent to person's email

            String pwdInput = TextBox1.Text;
            //    // Generate a new 12-character password with 1 non-alphanumeric character.
            string password = System.Web.Security.Membership.GeneratePassword(24, 0);

            //    string query = "INSERT INTO Accounts (randomNumber)";
            //    query += "VALUES (@randomNumber)" + "WHERE userid=;

            //    SqlCommand myCommand = new SqlCommand(query, myConnection);

            //    myCommand.Parameters.AddWithValue("@randomNumber", password);


            //    myConnection.Open();
            //    myCommand.ExecuteNonQuery();
            //    myConnection.Close();


            //    //print out the password and replace label3 to test :)
            Label3.Text = password;
            //}
        }

        public static string GeneratePassword(int length, int numberOfNonAlphanumericCharacters)
        {
            String s = "";
            return s;
        }
    }
}