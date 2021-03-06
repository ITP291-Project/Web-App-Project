﻿using System;
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
using System.Timers;

namespace Web_App_Project.ASPX_Files.Joanne
{

    public partial class login : System.Web.UI.Page

    {
        bool isCaptchaValid = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label12.Visible = false;

            //if (Session["username"] == null)
            //{
            //    Response.Redirect("/ASPX Files/Joanne/login.aspx");
            //}
            //else if (Session["Privilege"].ToString() == "boss")
            //{
            //    Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
            //}


            if (Session["username"] == null)
            {
                Master.FindControl("logout").Visible = false;
            }
        }

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

                    //T I M E R 
                    //System.Timers.Timer Timer1 = new System.Timers.Timer(10000);
                    //Timer1.Elapsed += new ElapsedEventHandler(OnTimedEvent);
                    //Timer1.Enabled = true;
                    //Timer1.Start();


                    //string query = "SELECT * FROM [Accounts] WHERE [Email]='" + inputemail + "'";
                    string query = "SELECT * FROM [Accounts] WHERE [Email]= @email";
                    string query1 = "UPDATE [Accounts] SET [randomNo] = @randomNo where [Email] = @inputemail";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);
                    SqlCommand myCommand1 = new SqlCommand(query1, myConnection);
                    myConnection.Open();
                    myCommand.CommandType = CommandType.Text;
                    myCommand1.CommandType = CommandType.Text;
                    myCommand.Parameters.AddWithValue("@email", inputemail);

                    SqlDataReader reader = myCommand.ExecuteReader();

                    String dbEmail = "";
                    String dbPassword = "";
                    String dbPrivilege = "";
                    String dbOrganization = "";
                    String dbMobile = "";
                    String dbRandomNo = "";
                    String dbApproved = "";

                    //read data from the db - put respective db data that we've retrieved into the variables to compare with input
                    if (reader.Read())
                    {
                        dbMobile = reader["TelNo"].ToString(); //read mobile
                        dbEmail = reader["Email"].ToString(); //read db email
                        dbPassword = reader["Password"].ToString(); //read db password                
                        dbPrivilege = reader["Privilege"].ToString(); //read db privilege
                        dbOrganization = reader["Organization"].ToString(); //read db 
                        //dbOrganization = "SPCA";
                        dbRandomNo = reader["randomNo"].ToString();
                        dbApproved = reader["Approved"].ToString();
                    }

                    myConnection.Close();
                    myConnection.Open();

                    myCommand1.Parameters.AddWithValue("@randomNo", randomNo);
                    myCommand1.Parameters.AddWithValue("@inputemail", inputemail);
                    myCommand1.ExecuteNonQuery();

                    bool hashresult = SimpleHash.VerifyHash(inputpassword, "SHA512", dbPassword);

                    Session["username"] = dbEmail;
                    Session["Organization"] = dbOrganization;
                    Session["Privilege"] = dbPrivilege;

                    //C A P T C H A V A L I D A T I O N

                    isCaptchaValid = true;

                    /*if (Session["CaptchaText"] != null && Session["CaptchaText"].ToString() == TextBox21.Text)
                    {
                        isCaptchaValid = true;
                    }
                    else
                    {
                        isCaptchaValid = false;
                    }*/

                    //if (isCaptchaValid)
                    //{
                    //    //messageText.Text = "Successful";
                    //}

                    //else
                    //{
                    //    isCaptchaValid = false;
                    //    //messageText.Text = "Unsuccessful";
                    //}


                    //check if the email they input is the same as the email in db
                    //check if the password they input is the same as the password in db                    
                    //if validated, means its a valid user. 
                    
                    if (dbEmail.Equals(inputemail) && hashresult == true && dbApproved.Equals("approved") && isCaptchaValid == true)
                    {
                        //String url = "http://172.20.128.62/SMSWebService/sms.asmx/sendMessage?MobileNo=" + dbMobile + "&Message=" + "Your OTP is: " + randomNo + ". Please enter within 2 minutes. Do not reply to this message." + "&SMSAccount=NSP10&SMSPassword=220867";

                        String url = "www.google.com";
                        System.Diagnostics.Process.Start(url);

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

                                Response.Redirect("/ASPX Files/Angie/VolunteerDash/volunteerDash.aspx");
                            }
                            else 
                            {
                                modal.Hide();
                                Label1.Text = "Email and/or password is wrong";
                                //isCaptchaValid = false;
                                myConnection.Close();
                            }

                        }

                    }
                    else
                    {
                        Response.AppendHeader("Refresh", "3;url=login.aspx");
                        //Response.Redirect("login.aspx");
                        //if (dbApproved.Equals("locked"))
                        //{
                        //    Label12.Visible = true;
                        //}

                        if (!dbEmail.Equals(inputemail) || hashresult == false)
                        {
                            Label1.Text = "Email and/or password is wrong.";
                            //count++;
                        }

                        //else if (dbPrivilege.Equals("locked"))
                        //{
                        //    Label1.Text = "Your account has been locked. Contact administrator to help you unlock your account.";
                        //}


                        //C A P T C H A V A L I D A T I O N
                        isCaptchaValid = false;
                        if (Session["CaptchaText"] != null && Session["CaptchaText"].ToString() == TextBox21.Text)
                        {
                            isCaptchaValid = true;
                        }
                        else if ((!dbEmail.Equals(inputemail) || hashresult == false) && isCaptchaValid == false)
                        {
                            Label1.Text = "Email and/or password is wrong.";
                            Label11.Text = "Captcha entered is wrong.";
                        }

                        else
                        {
                            isCaptchaValid = false;
                            Label1.Text = "";
                            Label11.Text = "Captcha entered is wrong.";
                        }

                        //if (isCaptchaValid)
                        //{
                        //    isCaptchaValid = true;
                        //    //messageText.Text = "Successful";
                        //}

                        //else
                        //{
                        //    isCaptchaValid = false;
                        //    //messageText.Text = "Unsuccessful";

                        //}



                        // S T A T U S V A L I D A T I O N
                        if (dbApproved.Equals("pending"))
                        {
                            Label1.Text = "Your account has not been approved";
                        }
                        else if (dbApproved.Equals("approved"))
                        {
                            modal.TargetControlID = "Button1";
                            modal.Hide();
                            //Label1.Text = "Email and/or password is wrong";
                            //isCaptchaValid = false;
                            //label1b.Visible = true;
                        }

                        //else if (dbApproved.Equals("locked"))
                        //{
                        //    Label12.Visible=true;
                        //}


                        //if (count>=5)
                        //{
                        //    TextBox2.Enabled = false;
                        //}
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

                        Response.Redirect("/ASPX Files/Angie/VolunteerDash/volunteerDash.aspx");
                    }

                    else
                    {
                        modal.Hide();
                        Label1.Text = "Email and/or password is wrong";
                        //isCaptchaValid = false;
                        myConnection.Close();
                    }
                }
                else if (!OTPinput.Equals(dbRandomNo))
                {
                    Label1.Text = "Email and/or password is wrong";
                    label1b.Visible = true;
                    //isCaptchaValid = false;
                    //remain on page
                }
            }
        }



        //private static void OnTimedEvent (object source, ElapsedEventArgs e)
        //{
        //    String url = "www.google.com";
        //    System.Diagnostics.Process.Start(url);
        //    //Console.WriteLine("The Elapsed Event was raised at {0}", e.SignalTime);
        //}



        //generate otp code method
        private string GenerateRandomOTP(int iOTPLength, string[] saAllowedCharacters)

        {
            string sOTP = String.Empty;
            string sTempChars = String.Empty;
            //DateTime time = DateTime.Now;
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

                //string query = "SELECT * FROM [Accounts] WHERE [Email]='" + inputemail + "'";
                string query = "SELECT * FROM [Accounts] WHERE [Email]= @inputemail";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();
                myCommand.Parameters.AddWithValue("@inputemail", inputemail);

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

        //protected void Timer1_Tick(object sender, EventArgs e)
        //{
        //    Label12.Text = "Panel Refreshed at " + DateTime.Now.ToLongTimeString();

        //}
    }
}