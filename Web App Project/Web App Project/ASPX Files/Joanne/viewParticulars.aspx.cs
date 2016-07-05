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
    public partial class viewParticulars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                /* string fName = TextBox1.Text;
                string lName = TextBox2.Text;
                string email = TextBox3.Text;
                string addr = TextBox4.Text;


                string query = "SELECT Accounts (fName, lName, email, telNo, addr, nric, address, occupation, language)";
                SqlCommand myCommand = new SqlCommand(query, myConnection);

                myCommand.Parameters.AddWithValue("@FName", fName);
                myCommand.Parameters.AddWithValue("@LName", lName);
                myCommand.Parameters.AddWithValue("@Email", email);
                myCommand.Parameters.AddWithValue("@Address", addr);

                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close(); */
            }

                Response.Redirect("updateParticulars.aspx");
            }
        }
    }