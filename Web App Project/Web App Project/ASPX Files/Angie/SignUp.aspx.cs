using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {


                string fName = firstName.Text;
                string lName = lastName.Text;
                string gender = RadioButtonList1.SelectedValue;
                string nric = nricInput.Text;
                string bDate = bDateInput.Text;
                string email = emailInput.Text;
                string telNo = telephone.Text;
                string pw = password.Text;
                string occupation = job.Text;
                string address1 = addr1.Text;
                string address2 = addr2.Text;
                string salutn = DropDownList1.SelectedItem.Text;


                string query = "INSERT INTO Accounts (fName + ' ' + lName name, gender, nric, bDate, email, telNo, pw, occupation, addr1 + ' ' + addr2, salutn)";
                query += "VALUES (@FName, @LName, @Gender, @NRIC, @Birthdate, @Email, @TelNo, @Password, @Occupation, @Address, @Salutation)";

                SqlCommand myCommand = new SqlCommand(query, myConnection);

                myCommand.Parameters.AddWithValue("@FName", fName);
                myCommand.Parameters.AddWithValue("@LName", lName);
                myCommand.Parameters.AddWithValue("@Gender", gender);
                myCommand.Parameters.AddWithValue("@NRIC", nric);
                myCommand.Parameters.AddWithValue("@Birthdate", bDate);
                myCommand.Parameters.AddWithValue("@Email", email);
                myCommand.Parameters.AddWithValue("@TelNo", telNo);
                myCommand.Parameters.AddWithValue("@Password", pw);
                myCommand.Parameters.AddWithValue("@Occupation", occupation);
                myCommand.Parameters.AddWithValue("@Address", addr1);
                myCommand.Parameters.AddWithValue("@Address", addr2);
                myCommand.Parameters.AddWithValue("@Salutation", salutn);

                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close();
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