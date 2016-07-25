using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //check if password and reconfirm password is the same
            string password = TextBox2.Text;
            string passwordretype = TextBox3.Text;

            if (password != passwordretype)
            {

            }

            //if password matches : 1) go to resetPasswordConfirmation page and 2) update the password in accounts where email is - username (of session)
            else
            {
                using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
                {
                    //please undo this (below - session) as now it is hardcoded. 
                    //string userid = Session["username"].ToString();
                    string userid = "limruoqijoanne54@gmail.com";

                    Byte[] salt = new byte[8];
                    String pwd = TextBox3.Text;
                    String pwdHash = SimpleHash.ComputeHash(pwd, "SHA512", salt);

                    myConnection.Open();

                    string query = "UPDATE Accounts SET Password=@Password WHERE email='" + userid + "'";
                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@Password", pwdHash);
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();

                }

                Response.Redirect("resetPasswordConfirmation.aspx");

            }


        }
    }
}
