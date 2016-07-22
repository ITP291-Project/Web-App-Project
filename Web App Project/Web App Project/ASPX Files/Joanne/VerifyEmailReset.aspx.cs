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
    public partial class VerifyEmailReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //verify if input is equals to random generated number sent to person's email

            String codeInput = TextBox1.Text;
            string userid = Session["username"].ToString();

            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                string query = "SELECT * FROM [Accounts] WHERE [Email]='" + userid + "'";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myConnection.Open();
                myCommand.CommandType = CommandType.Text;
                SqlDataReader reader = myCommand.ExecuteReader();

                String dbCode = "";
                if (reader.Read())
                {
                    dbCode = reader["randomEmailString"].ToString();
                }

                if (dbCode.Equals(codeInput))
                {
                    Response.AppendHeader("Refresh", "5;url=VerifyEmailReset.aspx");
                    Label3.Text = "Your email has been verified. You will be redirected to reset password page in 5 seconds.";
                }
                else
                {
                    Label2.Text = "Wrong code";
                }
            }

        }
    }
}