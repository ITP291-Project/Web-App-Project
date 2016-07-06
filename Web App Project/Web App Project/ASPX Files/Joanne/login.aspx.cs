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
                Session["username"] = TextBox1.Text;

                //Hash
                var hash = Hasher.Hash(inputpassword);

                //Verify
                //var result = SecurePasswordHasher.Verify("mypassword", hash);

                string query = "SELECT [Email], [Password], [Privilege] FROM  [Accounts] WHERE [Email]='" + inputemail + "', [Password]='" + hash + "'";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                SqlDataReader reader = myCommand.ExecuteReader();
                myConnection.Open();
                myCommand.ExecuteNonQuery();

                string dbEmail = reader["Email"].ToString();
                string dbPassword = reader["Password"].ToString();
                string dbPrivilege = reader["Privilege"].ToString();
                Session["Privilege"] = dbPrivilege;

                if (dbEmail == inputemail && dbPassword == inputpassword)
                {
                    if (dbPrivilege.Equals("boss"))
                    {
                        Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
                    }
                    else if (dbPrivilege.Equals("volunteer"))
                    {
                        Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
                    }
                }
                else
                {
                    //Popup box for error
                }

                myConnection.Close();


            }
        }
    }
}