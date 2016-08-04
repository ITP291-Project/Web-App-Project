using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.Ryan
{
    public partial class PendingReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "volunteer")
            {
                Response.Redirect("/ASPX Files/Angie/VolunteerDash/volunteerDash.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportsApproved.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RejectedReports.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewApplicants.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roster.aspx");
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
                }
            }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                string caseno = TextBox1.Text;
                string query = "UPDATE Report SET Status='approved' WHERE CaseNo='" + caseno + "'";

                SqlCommand cmd = new SqlCommand(query, myConnection);
                myConnection.Open();
                cmd.ExecuteNonQuery();
                myConnection.Close();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString))
            {
                string caseno = TextBox1.Text;
                string query = "UPDATE Report SET Status='rejected' WHERE CaseNo='" + caseno + "'";

                SqlCommand cmd = new SqlCommand(query, myConnection);
                myConnection.Open();
                cmd.ExecuteNonQuery();
                myConnection.Close();
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string caseNo = TextBox1.Text;
            //Response.Redirect("ftp://FTP:ftp@demonius.dlinkddns.com/" + caseNo + ".jpg");
            Response.Redirect("http://demonius.dlinkddns.com/ReportPictures/" + caseNo + ".jpg");
        }
    }
}