using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class updateParticulars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //System.Diagnostics.Debug.WriteLine("Username is " + Session["username"]);

            //if (Session["username"] == null)
            //{
            //    System.Diagnostics.Debug.WriteLine("Username is null");

            //    Response.Redirect("/ASPX Files/Joanne/login.aspx");
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                //string userid = Session["username"].ToString();
                //pls undo after session working^

                //hardcode
               string userid = "euniceannabelle@gmail.com";

                //When they press SAVE
                //Retrieve data from text box input to update the database information
                string fName = TextBox1.Text;
                string lName = TextBox2.Text;
                string email = TextBox3.Text;
                string addr = TextBox4.Text;
                string phonenum = TextBox5.Text;
                string language = TextBox6.Text;

                //string query = "UPDATE Accounts (fName, lName, email, telNo, addr, phonenum, language) WHERE email='" + userid + "'";
                //query += "VALUES (@FName, @LName, @Gender, @NRIC, @Birthdate, @Email, @TelNo, @Password, @Occupation, @Address, @Salutation)";
                myConnection.Open();
                string query = "UPDATE Accounts SET FName=@FName, LName=@LName, Email=@Email, Address=@Address, TelNo=@Phone, Language=@Language WHERE email = '" + userid + "'";
                SqlCommand myCommand = new SqlCommand(query, myConnection);

                //SqlCommand cmd = new SqlCommand("UPDATE Accounts SET FName = @FName, LName = @LName, Email = @Email, Address = @Address, Phone = @Phone, Language = @Language", myConnection);

                myCommand.Parameters.AddWithValue("@FName", fName);
                myCommand.Parameters.AddWithValue("@LName", lName);
                myCommand.Parameters.AddWithValue("@Email", email);
                myCommand.Parameters.AddWithValue("@Address", addr);
                myCommand.Parameters.AddWithValue("@Phone", phonenum);
                myCommand.Parameters.AddWithValue("@Language", language);

                
                myCommand.ExecuteNonQuery();
                myConnection.Close();

                /* 
                string fName = TextBox1.Text;
                string lName = TextBox2.Text;
                string email = TextBox3.Text;
                string addr = TextBox4.Text;
                string phonenum = TextBox5.Text;
                string language = TextBox6.Text;

                SqlCommand cmd = new SqlCommand("UPDATE Accounts SET FName = @FName, LName = @LName, Email = @Email, Address = @Address, Phone = @Phone, Language = @Language", myConnection);

                //Sqlstring query = "UPDATE Accounts ";
                //SqlCommand myCommand = new SqlCommand(query, myConnection);

                cmd.Parameters.AddWithValue("@FName", fName);
                cmd.Parameters.AddWithValue("@LName", lName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Address", addr);
                cmd.Parameters.AddWithValue("@Phone", phonenum);
                cmd.Parameters.AddWithValue("@Language", language);

                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close(); */
            }
            Response.Redirect("updatedText.aspx");
        }
    }
}

