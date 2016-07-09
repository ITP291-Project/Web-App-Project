using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Web_App_Project.ASPX_Files.Ryan.VolunteerDash
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;

            //String organization = Session["Organization"].ToString();
            String organization = "Pioneer Generation";
            TextBox1.Text = organization;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                DataTable timeslot = new DataTable();
                String selectedday = DropDownList2.Text;
                String organization = Session["Organization"].ToString();

                SqlDataAdapter adapter = new SqlDataAdapter("SELECT [Time] FROM [Timetable] WHERE " + selectedday + "='" + organization + "'", myConnection);
                adapter.Fill(timeslot);

                String query = "SELECT [Time] FROM [Timetable] WHERE " + selectedday + "='" + organization + "'";

                SqlCommand myCommand = new SqlCommand(query, myConnection);

                myConnection.Open();
                myCommand.ExecuteNonQuery();

                DropDownList1.DataSource = timeslot;
                DropDownList1.DataTextField = "Time";
                DropDownList1.DataValueField = "Time";
                DropDownList1.DataBind();

                myConnection.Close();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                //String username = Session["username"].ToString();
                String username = "stupid@idiot.com";
                String organization = TextBox1.Text;
                String day = DropDownList2.Text;
                String time = DropDownList1.Text;

                    string query = "INSERT INTO EventSignUp (Id, Username, Organization, Day, Time)";
                    query += "VALUES (@Id, @Username, @Organization, @Day, @Time)";
                    //query += "WHERE (SELECT * FROM Timetable WHERE " + day + "='" + organization + "' AND Time='" + time + "')";
                    int i = 1;

                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@Id", i++);
                    myCommand.Parameters.AddWithValue("@Username", username);
                    myCommand.Parameters.AddWithValue("@Organization", organization);
                    myCommand.Parameters.AddWithValue("@Day", day);
                    myCommand.Parameters.AddWithValue("@Time", time);

                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
            }
        }
    }
}