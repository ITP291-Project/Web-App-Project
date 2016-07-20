using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//using Google.Apis.Gmail.v1;
//using Google.Apis.Gmail.v1.Data;
using System.IO;
using System.Net.Mail;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class enterEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //public static Message SendMessage(GmailService service, String userId, Message email)
        //{
        //    try
        //    {
        //        return service.Users.Messages.Send(email, userId).Execute();
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine("An error occurred: " + e.Message);
        //    }

        //    return null;
        //}

        //public void SendIt()
        //{
        //    var msg = new AE.Net.Mail.MailMessage
        //    {
        //        Subject = "Your Subject",
        //        Body = "Hello, World, from Gmail API!",
        //        From = new MailAddress("[you]@gmail.com")
        //    };
        //    msg.To.Add(new MailAddress("yourbuddy@gmail.com"));
        //    msg.ReplyTo.Add(msg.From); // Bounces without this!!
        //    var msgStr = new StringWriter();
        //    msg.Save(msgStr);

        //    // Context is a separate bit of code the provides OAuth context;
        //    // your construction of GmailService will be different from mine.
        //    var gmail = new GmailService(Context.oauth2);
        //    var result = gmail.Users.Messages.Send(new Message
        //    {
        //        Raw = Base64UrlEncode(msgStr.ToString())
        //    }, "me").Execute();
        //    Console.WriteLine("Message ID {0} sent.", result.Id);

        //    gmail.Users.Messages.Send(new Message(), "limruoqijoanne54@gmail.com").Execute();
        //}

        //private static string Base64UrlEncode(string input)
        //{
        //    var inputBytes = System.Text.Encoding.UTF8.GetBytes(input);
        //    // Special "url-safe" base64 encode.
        //    return Convert.ToBase64String(inputBytes)
        //      .Replace('+', '-')
        //      .Replace('/', '_')
        //      .Replace("=", "");
        //}
        protected void Button1_On(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                String inputEmail = TextBox1.Text;

                string query = "SELECT [Email] FROM [Accounts] WHERE [Email]='" + inputEmail + "'";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();

                String dbEmail = "";

                if (reader.Read())
                {
                    dbEmail = reader["Email"].ToString(); //read db email
                }

                if (inputEmail!=dbEmail)
                {
                    Label2.Text = "Email does not exist";
                }
                else if (inputEmail==dbEmail)
                {
                    //Message email = new Message();
                    //GmailService service = new GmailService();
                    //Label2.Text = "Email exists";
                    //SendMessage(service, "limruoqijoanne54@gmail.com", email);
                    Response.Redirect("emailSent.aspx");

                }

            }
        }
    }
}