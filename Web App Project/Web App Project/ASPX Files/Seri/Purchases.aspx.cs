using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Seri
{
    public partial class Purchases : System.Web.UI.Page
    {
        AccountManager myManage { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //set the current user (REMOVE AFTER LOGIN PAGE IS FINISHED)
            Session["Username"] = "someone@gmail.com";

            //create account manager object
            myManage = new AccountManager(this.Session);
            //get the current purchases for the current user
            var purchases = new PurchaseManager(this.Session).GetPurchases(myManage.GetCurrentUser().Username);
            //set the datasource for the checkoutgrid to the purcases list
            this.CheckoutGrid.DataSource = purchases;
            //bind the grid to the data
            this.CheckoutGrid.DataBind();
        }

        protected void ReturnBtn_Click(object sender, EventArgs e)
        {
            //return to the rewards page
            Response.Redirect("Rewards.aspx");
        }
    }
}