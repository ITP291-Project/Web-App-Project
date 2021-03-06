﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Text;
using System.Collections.Specialized;

namespace Web_App_Project.Ryan.Volunteer
{
    public partial class ReportSubmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "boss")
            {
                Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
            }

            TextBox6.Text = Session["username"].ToString();
            Calendar1.Visible = false;
            Label1.Visible = false;
        }

        protected void HTTPUpload()
        {
            string caseNo = TextBox1.Text;

            if (IsPostBack)
            {
                Boolean fileOK = false;
                String path = "C:/Web Apps/ReportPictures/";
                if (FileUpload1.HasFile)
                {
                    String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                    String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                        }
                    }
                }

                if (fileOK)
                {
                    try
                    {
                        String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                        FileUpload1.PostedFile.SaveAs(path + caseNo + fileExtension);
                        Label1.Text = "File uploaded!";
                        Label1.Visible = true;

                        /*
                          //Adding watermark to the image and saving it into the specified folder!!!!
                          string path = "C:/Web Apps/ReportPictures/" + caseNo + ".jpg";
                          Image image = Image.FromStream(FileUpload1.PostedFile.InputStream);
                          int width = image.Width;
                          int height = image.Height;
                          Bitmap bmp = new Bitmap(width, height);
                          Graphics graphics = Graphics.FromImage((Image)bmp);
                          graphics.InterpolationMode = InterpolationMode.High;
                          graphics.SmoothingMode = SmoothingMode.HighQuality;
                          graphics.Clear(Color.Transparent);
                          graphics.DrawImage(image, 0, 0, width, height);
                          Font font = new Font("Arial", 8, FontStyle.Bold);
                          SolidBrush brush = new SolidBrush(Color.FromArgb(100, 255, 222, 173));
                          graphics.DrawString("Voices of Singapore", font, brush, 0.0F, 75.0F); // string, font style, brush used, x and y position for the string to be written
                          Image newImage = (Image)bmp;
                          newImage.Save(Server.MapPath("C:/Web Apps/ReportPictures/" + FileUpload1.PostedFile.FileName));
                          graphics.Dispose();

                          ClientScript.RegisterClientScriptBlock(csType, csName, "<script>alert('Image added successfully to the folder.')</script>");
                      }
                     */


                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "File could not be uploaded.";
                        Label1.Visible = true;

                        /*
                         ClientScript.RegisterClientScriptBlock(csType, csName, "<script>alert('Some problem occured while adding the image!!! Please try again!!!')</script>");
                         Response.Write(ex.Message);
                         */
                    }
                }
                else
                {
                    Label1.Text = "Cannot accept files of this type.";
                    Label1.Visible = true;
                }
            }
        }

        protected void FTPUpload()
        {
            //Store username so that user folder will be created and/or written to
            //string username = Session["username"].ToString();
            string caseNo = TextBox1.Text;

            //FTP Server URL.
            string ftp = "ftp://demonius.dlinkddns.com/";

            //FTP Folder name. Leave blank if you want to upload to root folder.
            //string ftpFolder = username + "/";
            string ftpFolder = "";

            byte[] fileBytes = null;

            //Read the FileName and convert it to Byte array.
            string fileName = Path.GetFileName(FileUpload1.FileName);
            using (StreamReader fileStream = new StreamReader(FileUpload1.PostedFile.InputStream))
            {
                fileBytes = Encoding.UTF8.GetBytes(fileStream.ReadToEnd());
                fileStream.Close();
            }

            try
            {
                //Create FTP Request.
                //FtpWebRequest request = (FtpWebRequest)WebRequest.Create(ftp + ftpFolder + fileName);
                FtpWebRequest request = (FtpWebRequest)WebRequest.Create("ftp://demonius.dlinkddns.com/" + caseNo + ".jpg");
                request.Method = WebRequestMethods.Ftp.UploadFile;

                //Enter FTP Server credentials.
                request.RenameTo = caseNo + ".jpg";
                request.Credentials = new NetworkCredential("Administrator", "password");
                request.ContentLength = fileBytes.Length;
                request.UsePassive = true;
                request.UseBinary = true;
                request.ServicePoint.ConnectionLimit = fileBytes.Length;
                request.EnableSsl = false;
                // Still need to Enable SSL

                using (Stream requestStream = request.GetRequestStream())
                {
                    requestStream.Write(fileBytes, 0, fileBytes.Length);
                    requestStream.Close();
                }

                FtpWebResponse response = (FtpWebResponse)request.GetResponse();

                response.Close();
            }
            catch (WebException ex)
            {
                throw new Exception((ex.Response as FtpWebResponse).StatusDescription);
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {

                string caseNo = TextBox1.Text;
                string date = TextBox2.Text;
                string duration = DropDownList2.Text;
                string type = DropDownList1.Text;
                string feedback = TextBox5.Text;
                string username = Session["username"].ToString();

                //FTPUpload();
                HTTPUpload();
                string query = "IF NOT EXISTS (SELECT * FROM Report WHERE CaseNo = @CaseNo)";
                query += "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, AdditionalFeedback, IsDraft, Status, Username)";
                query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @AdditionalFeedback, @IsDraft, @Status, @Username)";

                SqlCommand myCommand = new SqlCommand(query, myConnection);

                myCommand.Parameters.AddWithValue("@CaseNo", caseNo);
                myCommand.Parameters.AddWithValue("@Date", date);
                myCommand.Parameters.AddWithValue("@Duration", duration);
                myCommand.Parameters.AddWithValue("@TypeOfVolunteer", type);
                myCommand.Parameters.AddWithValue("@AdditionalFeedBack", feedback);
                myCommand.Parameters.AddWithValue("@IsDraft", "false");
                myCommand.Parameters.AddWithValue("@Status", "pending");
                myCommand.Parameters.AddWithValue("@Username", username);
                myConnection.Open();
                int a = myCommand.ExecuteNonQuery();

                if (a > -1)
                {
                    lblErrorMsg.Text = "A report for this case number has been submitted before. Please check drafts.";
                }

                else
                {
                    lblErrorMsg.Text = "Report submitted successfully.";
                }
                myConnection.Close();
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

                HTTPUpload();

                string query = "INSERT INTO Report (CaseNo, Date, Duration, TypeOfVolunteer, AdditionalFeedback, IsDraft)";
                    query += "VALUES (@CaseNo, @Date, @Duration, @TypeOfVolunteer, @AdditionalFeedback, @IsDraft)";

                    SqlCommand myCommand = new SqlCommand(query, myConnection);

                    myCommand.Parameters.AddWithValue("@CaseNo", caseNo);
                    myCommand.Parameters.AddWithValue("@Date", date);
                    myCommand.Parameters.AddWithValue("@Duration", duration);
                    myCommand.Parameters.AddWithValue("@TypeOfVolunteer", type);
                    myCommand.Parameters.AddWithValue("@AdditionalFeedBack", feedback);
                    myCommand.Parameters.AddWithValue("@IsDraft", "true");
                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string selecteddate = Calendar1.SelectedDate.ToString();
            TextBox2.Text = selecteddate;
        }

        protected void Button8_Click(object sender, EventArgs e)
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

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ASPX Files/Joanne/viewParticulars.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ASPX Files/Seri/Rewards.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Organization.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportSubmission.aspx");
        }
    }
}