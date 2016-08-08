using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security;
using System.Security.Policy;
using System.Security.Cryptography;
using Web_App_Project.ASPX_Files.Joanne;
using Web_App_Project.ASPX_Files.Angie;
using System.Net;
using System.IO;

namespace Web_App_Project.ASPX_Files.Angie
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            birthDate.Visible = false;
            lblRecordStatus.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection;
            using (myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                Byte[] salt = new byte[8];

                string fName = firstName.Text;
                string lName = lastName.Text;
                string gender = RadioButtonList1.SelectedValue;
                string nric = nricInput.Text;
                string BirthDate = bDateInput.Text;
                string email = emailInput.Text;
                int telNo = Convert.ToInt32(telephone.Text);
                telNo = int.Parse(telephone.Text);
                string inputpassword = password.Text;
                String passwordHash = SimpleHash.ComputeHash(inputpassword, "SHA512", salt);
                string occupation = job.Text;
                string address = addr.Text;
                string salutn = DropDownList1.SelectedItem.Text;
                string privilege = "volunteer";
                string approved = "pending";
                string language = lang.Text;
                int points = 0;
                String organization = " ";
                string pointsId = "1";
                

                myConnection.Open();
                //SqlDataReader reader = null;
                string query = "IF NOT EXISTS (SELECT * FROM Accounts WHERE Email = @Email AND NRIC = @NRIC)";
                query += "INSERT INTO Accounts (FName, Lname, Password, Email, TelNo, NRIC, Address, Occupation, Language, Gender, Privilege, Salutation, BirthDate, Approved, Organization, Points, pointsId)";
                query += " VALUES (@FName, @LName, @Password, @Email, @TelNo, @NRIC, @Address, @Occupation, @Language, @Gender, @Privilege, @Salutation, @BirthDate, @Approved, @Organization, @Points, @pointsId)";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
              
                //reader = myCommand.ExecuteReader();

                //myCommand.Parameters.Clear();
                myCommand.Parameters.AddWithValue("@FName", fName);
                myCommand.Parameters.AddWithValue("@LName", lName);
                myCommand.Parameters.AddWithValue("@Password", passwordHash);
                myCommand.Parameters.AddWithValue("Email", email);
                myCommand.Parameters.AddWithValue("@TelNo", telNo);
                myCommand.Parameters.AddWithValue("@NRIC", nric);
                myCommand.Parameters.AddWithValue("@Address", address);
                myCommand.Parameters.AddWithValue("@Occupation", occupation);
                myCommand.Parameters.AddWithValue("@Language", language);
                myCommand.Parameters.AddWithValue("@Gender", gender);
                myCommand.Parameters.AddWithValue("@Privilege", privilege);
                myCommand.Parameters.AddWithValue("@Salutation", salutn);
                myCommand.Parameters.AddWithValue("@BirthDate", BirthDate);
                myCommand.Parameters.AddWithValue("@Approved", approved);
                myCommand.Parameters.AddWithValue("@Organization", organization);
                myCommand.Parameters.AddWithValue("@Points", points);
                myCommand.Parameters.AddWithValue("@pointsId", pointsId);


                //myConnection.Close();

                if (ctrlGoogleReCaptcha.Validate())
                {
                    //submit form success
                    lblStatus.Visible = true;
                    lblStatus.Text = "Success";
                    int a = myCommand.ExecuteNonQuery();

                    if (a > 0) {
                        lblRecordStatus.Visible = true;
                        lblRecordStatus.Text = "Sign up success! Please wait for approval before you logon.";
                    }

                    else
                    {
                        lblRecordStatus.Visible = true;
                        lblRecordStatus.Text = "Applicant already exists. Please check your email and nric.";
                    }
                }
                else 
                {
                    //captcha challenge failed
                    lblStatus.Text = "Captcha Failed!! Please try again!!";
                }
               
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (birthDate.Visible == false)
            {
                birthDate.Visible = true;
            }
            else
            {
                birthDate.Visible = false;
            }
        }

        protected void birthDate_SelectionChanged(object sender, EventArgs e)
        {
            string selecteddate = birthDate.SelectedDate.ToString("dd/MM/yyyy");
            bDateInput.Text = selecteddate;
        }

    }
}