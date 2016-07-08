﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_App_Project.ASPX_Files.Ryan.VolunteerDash
{
    public partial class Organization : System.Web.UI.Page
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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("volunteerDash.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportSubmission.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                string organization;
                string username = Session["username"].ToString();

                if (RadioButton1.Checked)
                {
                    organization = "PG House Visit";
                }
                else if (RadioButton2.Checked)
                {
                    organization = "SPCA";
                }
                else if (RadioButton3.Checked)
                {
                    organization = "Sun Love Home";
                }
                else
                {
                    organization = null;
                    Response.Redirect("Organization.aspx");
                }

                string query = "UPDATE Accounts SET Organization='" + organization + "' WHERE Email='" + username + "'";
                SqlCommand myCommand = new SqlCommand(query, myConnection);

                myCommand.ExecuteNonQuery();

                Response.Redirect("volunteerDash.aspx");
            }
        }
    }
}