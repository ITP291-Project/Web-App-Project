using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Web_App_Project.Ryan.Volunteer
{
    public partial class ReportDrafts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "boss")
            {
                Response.Redirect("/ASPX Files/Ryan/VolunteerDash/volunteerDash.aspx");
            }

            Calendar1.Visible = false;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[2].Visible = false;
            e.Row.Cells[3].Visible = false;
            e.Row.Cells[4].Visible = false;
        }

        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox1.Text = row.Cells[0].Text;
            TextBox2.Text = row.Cells[1].Text;
            TextBox3.Text = row.Cells[2].Text;
            TextBox4.Text = row.Cells[3].Text;
            TextBox5.Text = row.Cells[4].Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
            }
            else
            {
                Calendar1.Visible = false;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                string caseNo = TextBox1.Text;
                string date = TextBox2.Text;
                string duration = TextBox3.Text;
                //string type = DropDownList1.Text;
                string feedback = TextBox5.Text;

                /*if (!FileUpload1.HasFile)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select Image File";    //checking if file uploader has no file selected
                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[length];


                    FileUpload1.PostedFile.InputStream.Read(pic, 0, length); */

                    string query = "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, Photo, AdditionalFeedback, IsDraft, Status)";
                    query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @Photo, @AdditionalFeedback, @IsDraft, @Status)";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@CaseNo", caseNo);
                    myCommand.Parameters.AddWithValue("@Date", date);
                    myCommand.Parameters.AddWithValue("@Duration", duration);
                    //myCommand.Parameters.AddWithValue("@TypeOfVolunteer", type);
                    //myCommand.Parameters.AddWithValue("@Photo", pic);
                    myCommand.Parameters.AddWithValue("@AdditionalFeedBack", feedback);
                    myCommand.Parameters.AddWithValue("@IsDraft", "false");
                    myCommand.Parameters.AddWithValue("@Status", "pending");
                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
                }
            }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                string caseNo = TextBox1.Text;
                string date = TextBox2.Text;
                string duration = TextBox3.Text;
                //string type = DropDownList1.Text;
                string feedback = TextBox5.Text;

                /*if (!FileUpload1.HasFile)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select Image File";    //checking if file uploader has no file selected
                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[length];


                    FileUpload1.PostedFile.InputStream.Read(pic, 0, length);*/

                    string query = "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, Photo, AdditionalFeedback, IsDraft)";
                    query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @Photo, @AdditionalFeedback, @IsDraft)";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@CaseNo", caseNo);
                    myCommand.Parameters.AddWithValue("@Date", date);
                    myCommand.Parameters.AddWithValue("@Duration", duration);
                    //myCommand.Parameters.AddWithValue("@TypeOfVolunteer", type);
                    //myCommand.Parameters.AddWithValue("@Photo", pic);
                    myCommand.Parameters.AddWithValue("@AdditionalFeedBack", feedback);
                    myCommand.Parameters.AddWithValue("@IsDraft", "true");
                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
                }
            }
        }
    }
    }
}