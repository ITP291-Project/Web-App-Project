using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net.Mail;
using System.Web.UI.HtmlControls;

using Google.Apis.Auth.OAuth2;
using Google.Apis.Gmail.v1;
using Google.Apis.Gmail.v1.Data;
using Google.Apis.Services;
using Google.Apis.Util.Store;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

using System.Net.Mail;
using System.Text;


namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class enterEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_On(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                String inputEmail = TextBox1.Text;
                // Generate a new 12-character password with 1 non-alphanumeric character.
                String code = System.Web.Security.Membership.GeneratePassword(24, 0);


                string query = "SELECT [Email] FROM [Accounts] WHERE [Email] = '" + inputEmail + "'";

                myConnection.Open();
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();

                String dbEmail = "";

                if (reader.Read())
                {
                    dbEmail = reader["Email"].ToString(); //read db email
                }
                myConnection.Close();

                //string query1 = "UPDATE [Accounts] SET [randomEmailString] = @randomEmailString WHERE [Email] = @email";

                //myConnection.Open();
                //SqlCommand myCommand1 = new SqlCommand(query1, myConnection);
                //myCommand1.CommandType = CommandType.Text;
                //SqlDataReader reader1 = myCommand1.ExecuteReader();

                //myCommand1.Parameters.AddWithValue("@email", inputEmail);
                //myCommand1.Parameters.AddWithValue("@randomEmailString", code);
                //myCommand1.ExecuteNonQuery();
                //myConnection.Close();

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

                    MailMessage mail = new MailMessage();

                    SmtpClient client = new SmtpClient();
                    client.Port = 587;
                    client.Host = "smtp.gmail.com";
                    client.EnableSsl = true;
                    client.Timeout = 10000;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential("user@gmail.com", "password");
                    mail.From = new MailAddress("joannelimpotato@gmail.com");
                    mail.To.Add(new MailAddress(inputEmail));
                    mail.Subject = "testing";
                    mail.Body = "test";
                    client.Send(mail);
                    //mail.BodyEncoding = UTF8Encoding.UTF8;
                    //mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;


                    //Message email = new Message();
                    //GmailService service = new GmailService();
                    //Label2.Text = "Email exists";
                    //SendMessage(service, "limruoqijoanne54@gmail.com", email);
                    //Response.Redirect("emailSent.aspx");
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

