using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.HtmlControls;

using System.Text;
using System.Threading;
using System.Threading.Tasks;

using System.Net;
using System.Net.Mail;


namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class enterEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["username"] == null)
            {
                System.Diagnostics.Debug.WriteLine("Username is null");

                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }*/
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                String inputEmail = TextBox1.Text;
                Session["emailinput"] = inputEmail;

                // Generate a new 12-character password with 1 non-alphanumeric character.
                String code = System.Web.Security.Membership.GeneratePassword(24, 0);


                string query = "SELECT [Email] FROM [Accounts] WHERE [Email] = '" + inputEmail + "'";
                string query1 = "UPDATE [Accounts] SET [randomEmailString] = @code WHERE [Email] = @email";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                SqlCommand myCommand1 = new SqlCommand(query1, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                myCommand1.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();

                String dbEmail = "";

                if (reader.Read())
                {
                    dbEmail = reader["Email"].ToString(); //read db email
                }
                myConnection.Close();
                myConnection.Open();

                myCommand1.Parameters.AddWithValue("@email", inputEmail);
                myCommand1.Parameters.AddWithValue("@code", code);
                myCommand1.ExecuteNonQuery();

                //if email input not equals to db email - email does not exist
                if (inputEmail != dbEmail)
                {
                    Label2.Text = "Email does not exist";
                }
                //if email input equals to db email, then email exists, and send an email to that email.
                else if (inputEmail == dbEmail)
                {
                    Label2.Text = "";
                    //Label2.Text = code;
                    Response.AppendHeader("Refresh", "5;url=VerifyEmailReset.aspx");
                    Label3.Text = "Email sent. Please check your email. You will now be redirected to verfiy code in 5 seconds";

                    var smtp = new System.Net.Mail.SmtpClient();
                    {
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                        smtp.Credentials = new NetworkCredential("joanne855902@gmail.com", "testing855902");
                        smtp.Timeout = 20000;
                    }

                    smtp.Send("joanne855902@gmail.com", inputEmail, "Please Verify Your Email", "Please copy this code to verify your email." + code);
                    //format - From, To, Subject, Body

                    //smtp.Send("limruoqijoanne54@gmail.com", "152225K@mymail.nyp.edu.sg", "Testing", code);

                    myConnection.Close();
                }

            }

        }

        public static string GeneratePassword(int length, int numberOfNonAlphanumericCharacters)
        {
            String s = "";
            return s;
        }
    }
}

