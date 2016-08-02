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

                String dbEmail = "";

                myConnection.Open();
                SqlDataReader reader = null;
                /* string query = "IF NOT EXISTS (SELECT * FROM Accounts WHERE Email = '" + emailInput.Text + "')"; */
                string query = "INSERT INTO Accounts (FName, Lname, Password, Email, TelNo, NRIC, Address, Occupation, Language, Gender, Privilege, Salutation, BirthDate, Approved, Organization, Points, pointsId)";
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

                myCommand.ExecuteNonQuery();
                //myConnection.Close();

               /* if (reader.Read())
                {
                    dbEmail = reader["Email"].ToString();
                }


                if (dbEmail.Equals(email))
                {
                    Response.Write("You have signed up successfully!");
                }

                else
                {
                    Response.Write("Username already exists. Please use another email to sign up.");
                }

                string EncodedResponse = Request.Form["g-Recaptcha-Response"];
                bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);
                string validateMsg = "";
                if (IsCaptchaValid)
                {
                    validateMsg = "Verified!";
                }

                else
                {
                    validateMsg = "Please try again.";
                }


                Response.Redirect("index.aspx");
                */
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
            string selecteddate = birthDate.SelectedDate.ToString();
            bDateInput.Text = selecteddate;
        }

    }
}