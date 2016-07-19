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
            //System.Diagnostics.Debug.WriteLine("Username is " + Session["username"]);

            //if (Session["username"] == null)
            //{
            //    System.Diagnostics.Debug.WriteLine("Username is null");

            //    Response.Redirect("/ASPX Files/Joanne/login.aspx");
            //}

            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                //string userid = Session["username"].ToString();
                string userid = "someone@gmail.com";

                //string query = "SELECT * FROM [Accounts] WHERE [Email] = '" + userid + "'";
                string query = "SELECT [FName] FROM [Accounts] WHERE [Email] = 'someone@gmail.com'";

                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();
               
                //problem with lname
                String lname = reader["Lname"].ToString();
                if (reader.Read())
                {
                    Label2.Text = reader["FName"].ToString() + " " + lname;
                    Label4.Text = reader["Birthdate"].ToString();
                    Label6.Text = reader["Email"].ToString();
                    Label8.Text = reader["Address"].ToString();
                    Label10.Text = reader["TelNo"].ToString();
                    Label11.Text = reader["Occupation"].ToString();
                    Label12.Text = reader["Language"].ToString();

                    reader.Close();
                    myConnection.Close();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateParticulars.aspx");
        }
    }
}
