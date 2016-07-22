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

        Boolean ans = false;

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if not postback, means that it is loaded accurately rather than using the button to make the page postback
            if (IsPostBack)
            {
                using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
                {
                    string[] saAllowedCharacters = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };

                    Byte[] salt = new byte[8];
                    //get email input and password input store into variables
                    String inputemail = TextBox1.Text;
                    String inputpassword = TextBox2.Text;
                    String passwordHash = SimpleHash.ComputeHash(inputpassword, "SHA512", salt);
                    //String randomNo = "1234";
                    String randomNo = GenerateRandomOTP(6, saAllowedCharacters);
                    String OTPinput = textbox20.Text;

                    string query = "SELECT * FROM [Accounts] WHERE [Email]='" + inputemail + "'";
                    //string query1 = "INSERT INTO Accounts VALUES(" + "@randomNo)" + "WHERE [Email] = '" + inputemail + "'";
                    string query1 = "UPDATE [Accounts] SET [randomNo] = @randomNo where [Email] = @inputemail";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);
                    SqlCommand myCommand1 = new SqlCommand(query1, myConnection);
                    myConnection.Open();
                    myCommand.CommandType = CommandType.Text;
                    myCommand1.CommandType = CommandType.Text;
                    SqlDataReader reader = myCommand.ExecuteReader();
                    
                    String dbEmail = "";
                    String dbPassword = "";
                    String dbPrivilege = "";
                    String dbOrganization = "";
                    String dbMobile = "";
                    String dbRandomNo = "";

                    //read data from the db - put respective db data that we've retrieved into the variables to compare with input
                    if (reader.Read())
                    {
                        dbMobile = reader["TelNo"].ToString(); //read mobile
                        dbEmail = reader["Email"].ToString(); //read db email
                        dbPassword = reader["Password"].ToString(); //read db password                
                        dbPrivilege = reader["Privilege"].ToString(); //read db privilege
                        dbOrganization = reader["Organization"].ToString(); //read db 
                        dbOrganization = "SPCA";
                        dbRandomNo = reader["randomNo"].ToString();
                    }

                    myConnection.Close();
                    myConnection.Open();

                    myCommand1.Parameters.AddWithValue("@randomNo", randomNo);
                    myCommand1.Parameters.AddWithValue("@inputemail", inputemail);
                    myCommand1.ExecuteNonQuery();

                    //Replace the if else with the hash check method!
                    bool hashresult = SimpleHash.VerifyHash(inputpassword, "SHA512", dbPassword);

                    //check if the email they input is the same as the email in db
                    //check if the password they input is the same as the password in db                    
                    //if validated, means its a valid user. 

                    if (dbEmail.Equals(inputemail) && hashresult == true)
                    {
                        //String url = "http://172.20.128.62/SMSWebService/sms.asmx/sendMessage?MobileNo=" + dbMobile + "&Message=" + "Your OTP is: " + randomNo + ". Please enter within 2 minutes. Do not reply to this message." + "&SMSAccount=NSP10&SMSPassword=220867";

                        String url = "www.google.com";
                        System.Diagnostics.Process.Start(url);

                        ans = true;
                        modal.Show(); //- AJAX has no validation

                        if (OTPinput.Equals(dbRandomNo))
                        {
                            modal.Hide();

                            //if privilege is boss, redirect to boss page 
                            if (dbPrivilege.Equals("boss"))
                            {
                                //Is this line being executed?
                                System.Diagnostics.Debug.WriteLine("User is boss");
                                //modal.Show();
                                Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
                            }

                            //if privilege is boss, redirect to volunteer page 
                            else if (dbPrivilege.Equals("volunteer"))
                            {
                                //Is this line being executed?
                                System.Diagnostics.Debug.WriteLine("User is volunteer");

                                Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
                            }

                            else
                            {
                                modal.Hide();
                                Label1.Text = "Email and/or password is wrong";

                                myConnection.Close();
                            }

                        }

                    }
                    else
                    {
                        modal.TargetControlID = "Button1";
                        modal.Hide();
                        Label1.Text = "Email and/or password is wrong";
                        //label1b.Visible = true;

                    }
                }
            }
        }

        protected void submit_click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                //get email input and password input store into variables
                String inputemail = TextBox1.Text;
                String OTPinput = textbox20.Text;

                string query = "SELECT * FROM [Accounts] WHERE [Email]='" + inputemail + "'";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();


                String dbEmail = "";
                String dbPassword = "";
                String dbPrivilege = "";
                String dbMobile = "";
                String dbRandomNo = "";

                if (reader.Read())
                {
                    dbMobile = reader["TelNo"].ToString(); //read mobile
                    dbEmail = reader["Email"].ToString(); //read db email
                    dbPassword = reader["Password"].ToString(); //read db password                
                    dbPrivilege = reader["Privilege"].ToString(); //read db privilege
                    dbRandomNo = reader["randomNo"].ToString();

                }


                //if (OTPinput.Equals(randomNo) && ans == true)
                if (OTPinput.Equals(dbRandomNo))
                {
                    //-if (ans == true)
                    //-{
                    modal.Hide();
                    if (dbPrivilege.Equals("boss"))
                    {
                        //Is this line being executed?
                        System.Diagnostics.Debug.WriteLine("User is boss");
                        //modal.Show();
                        Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
                    }

                    //if privilege is boss, redirect to volunteer page 
                    else if (dbPrivilege.Equals("volunteer"))
                    {
                        //Is this line being executed?
                        System.Diagnostics.Debug.WriteLine("User is volunteer");

                        Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
                    }

                    else
                    {
                        modal.Hide();
                        Label1.Text = "Email and/or password is wrong";

                        myConnection.Close();
                    }
                    //Resend_Click(sender, e);
                    //Button1_Click(sender, e);
                    //string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
                    //ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);

                }
                else if (!OTPinput.Equals(dbRandomNo))
                {
                    Label1.Text = "Email and/or password is wrong";
                    label1b.Visible = true;
                    //remain on page
                }
            }
        }

        //generate otp code method
        private string GenerateRandomOTP(int iOTPLength, string[] saAllowedCharacters)

        {
            string sOTP = String.Empty;
            string sTempChars = String.Empty;
            Random rand = new Random();

            for (int i = 0; i < iOTPLength; i++)
            {
                int p = rand.Next(0, saAllowedCharacters.Length);
                sTempChars = saAllowedCharacters[rand.Next(0, saAllowedCharacters.Length)];
                sOTP += sTempChars;
            }

            return sOTP;
        }

        protected void Resend_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                //get email input and password input store into variables
                String inputemail = TextBox1.Text;

                string query = "SELECT * FROM [Accounts] WHERE [Email]='" + inputemail + "'";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();

                String dbMobile = "";
                String dbRandomNo = "";
                if (reader.Read())
                {
                    dbMobile = reader["TelNo"].ToString();
                    dbRandomNo = reader["randomNo"].ToString();
                }

                //String url = "http://172.20.128.62/SMSWebService/sms.asmx/sendMessage?MobileNo=" + dbMobile + "&Message=" + "Your OTP is: " + dbRandomNo + ". Please enter within 2 minutes. Do not reply to this message." + "&SMSAccount=NSP10&SMSPassword=220867";
                String url = "www.google.com";
                System.Diagnostics.Process.Start(url);
            }
        }

    }
}