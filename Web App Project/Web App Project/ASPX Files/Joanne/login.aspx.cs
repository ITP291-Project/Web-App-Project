using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Security.Cryptography;
using System.Text;


namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                String inputemail = TextBox1.Text;
                String inputpassword = TextBox2.Text;

                //Hash
                //var hash = Hasher.Hash(inputpassword);

                //Verify
                //var result = SecurePasswordHasher.Verify("mypassword", hash);

                string query = "SELECT [Email], [Password], [Privilege] FROM [Accounts] WHERE [Email]='" + inputemail + "' AND [Password]='" + inputpassword + "'";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();
                

                String dbEmail = null;
                String dbPassword = null;
                String dbPrivilege = null;

                if (reader.Read())
                {
                    dbEmail = reader["Email"].ToString();
                    dbPassword = reader["Password"].ToString();
                    dbPrivilege = reader["Privilege"].ToString();
                }

                if (dbEmail.Equals(inputemail) && dbPassword.Equals(inputpassword))
                {
                    if (dbPrivilege.Equals("boss"))
                    {
                        Session["Privilege"] = dbPrivilege;
                        Session["username"] = dbEmail;
                        Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
                    }
                    else if (dbPrivilege.Equals("volunteer"))
                    {
                        Session["Privilege"] = dbPrivilege;
                        Session["username"] = dbEmail;
                        Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
                    }
                }
                else
                {
                    System.Console.WriteLine("Error");
                }

                myConnection.Close();


            }
        }
    }
}