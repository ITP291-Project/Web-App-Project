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
            if (!Page.IsPostBack)
            {
                //your code here 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
                {
                    String inputemail = TextBox1.Text;
                    String inputpassword = TextBox2.Text;

                    //Hash
                    string hash = Hasher.Hash(inputpassword);

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

                    //Do these print the correct values?
                    System.Diagnostics.Debug.WriteLine("dbEmail is " + dbEmail);
                    System.Diagnostics.Debug.WriteLine("dbPassword is " + dbPassword);
                    System.Diagnostics.Debug.WriteLine("dbPrivilege is " + dbPrivilege);

                    System.Diagnostics.Debug.WriteLine("");

                    if (dbEmail.Equals(inputemail) && dbPassword.Equals(inputpassword))
                    {
                        //Is this line being executed?
                        System.Diagnostics.Debug.WriteLine("Valid User");

                        if (dbPrivilege.Equals("boss"))
                        {
                            //Is this line being executed?
                            System.Diagnostics.Debug.WriteLine("User is boss");

                            Session["Privilege"] = dbPrivilege;
                            Session["username"] = dbEmail;
                            Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
                        }
                        else if (dbPrivilege.Equals("volunteer"))
                        {
                            //Is this line being executed?
                            System.Diagnostics.Debug.WriteLine("User is volunteer");

                            Session["Privilege"] = dbPrivilege;
                            Session["username"] = dbEmail;
                            Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
                        }
                    }
                    else
                    {
                        //We already know what dbPrivilege contains, but let's add this else block anyway
                        System.Diagnostics.Debug.WriteLine("User is unknown");
                    }

                    myConnection.Close();
                }
            }
        }
    }
}