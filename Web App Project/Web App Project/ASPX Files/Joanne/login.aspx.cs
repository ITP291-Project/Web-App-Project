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
                    //get email input and password input store into variables
                    String inputemail = TextBox1.Text;
                    String inputpassword = TextBox2.Text;
                    String randomNo = "1234";
                    String OTPinput = textbox20.Text;

                    string query = "SELECT [Email], [Password], [Privilege] FROM [Accounts] WHERE [Email]='" + inputemail + "'";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);
                    myConnection.Open();
                    myCommand.CommandType = CommandType.Text;
                    SqlDataReader reader = myCommand.ExecuteReader();


                    String dbEmail = "";
                    String dbPassword = "";
                    String dbPrivilege = "";
                    String dbOrganization = "";
                    String dbMobile = "";

                    //read data from the db - put respective db data that we've retrieved into the variables to compare with input
                    if (reader.Read())
                    {
                        //dbMobile = reader["TelNo"].ToString(); //read mobile
                        dbEmail = reader["Email"].ToString(); //read db email
                        dbPassword = reader["Password"].ToString(); //read db password                
                        dbPrivilege = reader["Privilege"].ToString(); //read db privilege
                        //dbOrganization = reader["Organization"].ToString(); //read db 
                        dbOrganization = "SPCA";
                    }

                    //Do these print the correct values?
                    System.Diagnostics.Debug.WriteLine("dbEmail is " + dbEmail);
                    System.Diagnostics.Debug.WriteLine("dbPassword is " + dbPassword);
                    System.Diagnostics.Debug.WriteLine("dbPrivilege is " + dbPrivilege);
                    System.Diagnostics.Debug.WriteLine("dbOrganization is " + dbOrganization);

                    System.Diagnostics.Debug.WriteLine("");

                    //Replace the if else with the hash check method!

                    //check if the email they input is the same as the email in db
                    //check if the password they input is the same as the password in db                    
                    //if validated, means its a valid user. 
                    if (dbEmail.Equals(inputemail) && dbPassword.Equals(inputpassword))
                    {
                        ans = true;
                        //modal.Show(); - AJAX has no validation

                        if (OTPinput.Equals(randomNo))
                        {
                            modal.Hide();
                            //String url = "www.google.com";
                            //string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
                            //ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);

                            //Is this line being executed?
                            System.Diagnostics.Debug.WriteLine("Valid User"); //print out valid user
                            Session["Privilege"] = dbPrivilege; //make that particular privilege the session
                            Session["username"] = dbEmail; //make that particular email uid as the session
                            Session["Organization"] = dbOrganization;



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
                                Label1.Text = "Email and/or password is wrong";

                                myConnection.Close();
                            }

                        }
                        //else
                        //{
                        //    label1b.Text = "Wrong code";
                        //}
                    }
                    else
                    {
                        Label1.Text = "Email and/or password is wrong";
                        label1b.Visible = true;
                        //modal.Hide();
                    }
                }
            }
        }

        protected void submit_click(object sender, EventArgs e)
        {
            String randomNo = "1234";
            String OTPinput = textbox20.Text;

            //if (OTPinput.Equals(randomNo) && ans == true)
            if (OTPinput.Equals(randomNo))
            {
                //-if (ans == true)
                //-{
                modal.Hide();
                Button1_Click(sender, e);
                String url = "www.google.com";
                //string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
                //ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
                System.Diagnostics.Process.Start(url);
                //-}
                //else if (ans == false)
                //{
                //}
            }
            else if (!OTPinput.Equals(randomNo))
            {
                Label1.Text = "Email and/or password is wrong";
                label1b.Visible = true;
                //remain on page
            }
        }

        protected void Resend_Click(object sender, EventArgs e)
        {
            //String url = "http://172.20.128.62/SMSWebService/sms.asmx/sendMessage?MobileNo=" + dbMobile + "&Message=" + "Your OTP is: _______. Please enter within 2 minutes. Do not reply to this message." + "&SMSAccount=NSP10&SMSPassword=220867";
            String url = "www.google.com";
            //string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
            //ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
            System.Diagnostics.Process.Start(url);
        }

    }

    //to resend otp: just invoke the url again
    //protected void button_Click(object sender, EventArgs e)
    //{
    //    modal.Show();
    //}
}