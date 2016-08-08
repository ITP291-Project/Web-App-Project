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
    public partial class PayPalLogin : System.Web.UI.Page
    {
        AccountManager myManager { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //set the current user (REMOVE THIS AFTER LOGIN PAGE WORKS)
            //Session["Username"] = "someone@gmail.com";

            if (Session["username"] == null)
            {
                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "boss")
            {
                Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
            }


            //create an account manager object
            myManager = new AccountManager(this.Session);
            //get the current user from the account manager
            var myUser = myManager.GetCurrentUser();
            if(myUser != null)
            {
                //set the page contents to match the user details
                int TotalWithdraw = (myUser.Points / 300) * 5;
                int TotalWithdrawPoints = (myUser.Points / 300) * 300;
                this.TotalCash.InnerText = string.Format("You can withdraw upto ${0}, at a cost of {1} points", TotalWithdraw, TotalWithdrawPoints);
                this.CurrentPoints.InnerText = string.Format("You currently have {0} points!", myUser.Points);
                this.WithdrawBtn.OnClientClick = string.Format("return confirm('You are about to withdraw {0} points from your account!');", TotalWithdrawPoints);
            }
        }

        protected void GotoPayPal(object sender, EventArgs e)
        {
            //get current user
            var user = myManager.GetCurrentUser();
            //get if user is logged in
            if(user != null)
            {
                //subtract purchase points from user
                int withdraw = (user.Points / 300) * 300;
                user.UpdatePoints(user.Points - withdraw);
            }
            //redirect to paypal
            Response.Redirect("https://www.paypal.com/signin");
        }

        protected void ReturnRewards(object sender, EventArgs e)
        {
            //redirect to the rewards page
            Response.Redirect("Rewards.aspx");
        }
    }
}