﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_App_Project.Ryan.Volunteer
{
    public partial class ReportSubmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                string caseNo = TextBox1.Text;
                string date = TextBox2.Text;
                string duration = TextBox3.Text;
                string type = DropDownList1.Text;
                string feedback = TextBox5.Text;

                if (!FileUpload1.HasFile)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select Image File";    //checking if file uploader has no file selected
                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[length];


                    FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                    string query = "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, Photo, AdditionalFeedback, IsDraft)";
                    query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @Photo, @AdditionalFeedback, @IsDraft)";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@CaseNo", caseNo);
                    myCommand.Parameters.AddWithValue("@Date", date);
                    myCommand.Parameters.AddWithValue("@Duration", duration);
                    myCommand.Parameters.AddWithValue("@TypeOfVolunteer", type);
                    myCommand.Parameters.AddWithValue("@Photo", pic);
                    myCommand.Parameters.AddWithValue("@AdditionalFeedBack", feedback);
                    myCommand.Parameters.AddWithValue("@IsDraft", "false");
                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportDrafts.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubmittedReport.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                string caseNo = TextBox1.Text;
                string date = TextBox2.Text;
                string duration = TextBox3.Text;
                string type = DropDownList1.Text;
                string feedback = TextBox5.Text;

                if (!FileUpload1.HasFile)
                {
                    Label1.Visible = true;
                    Label1.Text = "Please Select Image File";    //checking if file uploader has no file selected
                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[length];


                    FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                    string query = "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, Photo, AdditionalFeedback, IsDraft)";
                    query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @Photo, @AdditionalFeedback, @IsDraft)";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@CaseNo", caseNo);
                    myCommand.Parameters.AddWithValue("@Date", date);
                    myCommand.Parameters.AddWithValue("@Duration", duration);
                    myCommand.Parameters.AddWithValue("@TypeOfVolunteer", type);
                    myCommand.Parameters.AddWithValue("@Photo", pic);
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