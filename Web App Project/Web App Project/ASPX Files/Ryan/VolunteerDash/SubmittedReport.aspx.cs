﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace Web_App_Project.Ryan.Volunteer
{
    public partial class SubmittedReport : System.Web.UI.Page
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
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
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                GridViewRow row = GridView1.SelectedRow;
                TextBox1.Text = row.Cells[0].Text;
                TextBox2.Text = row.Cells[1].Text;
                TextBox3.Text = row.Cells[2].Text;
                TextBox4.Text = row.Cells[3].Text;
                TextBox5.Text = row.Cells[4].Text;

                myConnection.Open();

                string caseno = row.Cells[0].Text;
                string Scmd = "SELECT Photo FROM Report WHERE CaseNo='" + caseno + "'";
                SqlCommand cmd = new SqlCommand(Scmd, myConnection);

                SqlDataReader reader = cmd.ExecuteReader();

                reader.Read();

                if (reader.HasRows)
                {
                    Label1.Text = reader[0].ToString();
                    byte[] imagem = (byte[])(reader[1]);
                    string base64String = Convert.ToBase64String(imagem);

                    MemoryStream ms = new MemoryStream(imagem);

                    Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);
                }
            }
        }
    }
}