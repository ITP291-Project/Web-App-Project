using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Seri
{
    public partial class Rewards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //set the current user (DELETE AFTER LOGIN PAGE IS FINISHED)
            if (Session["Username"] == null)
            {
                Session["Username"] = "someone@gmail.com";
            }

            //check the current user information 
            var SessionUser = Session["Username"];
            if (SessionUser == null) SessionUser = "NotLoggedIn";
            // get the user from the database
            SqlCommand FullName = new SqlCommand(string.Format("Select FName,Lname,Points from Accounts where Email = '{0}'", SessionUser), new SqlConnection(ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString));
            FullName.Connection.Open();
            var rowReader = FullName.ExecuteReader();
            //check if data is returned
            if (rowReader.HasRows) {
                //read the first row
                rowReader.Read();
                var firstName = rowReader["FName"];
                var lastName = rowReader["lname"];
                var userPoints = rowReader["Points"];
                this.WelcomeHeading.InnerText = string.Format("Welcome {0} {1}", firstName, lastName);
                this.UsersPoints.InnerText = string.Format("You currently have {0} Points!", userPoints);
            }
            FullName.Connection.Close();
        }


        protected void ShowPaypalWithdraw(object sender, EventArgs e)
        {
            //redirect to the paypal page
            Response.Redirect("PayPalLogin.aspx");
        }

        protected void ViewVoucherHistory(object sender, EventArgs e)
        {
            //redirect to the purchases page
            Response.Redirect("Purchases.aspx");
        }

        protected void ShowChooseVouchers(object sender, EventArgs e)
        {
            //redirect to choice of vouchers page
            Response.Redirect("ChoiceOfVouchers.aspx");
        }
    }
}