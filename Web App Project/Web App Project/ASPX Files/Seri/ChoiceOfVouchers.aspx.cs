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
    public partial class ChoiceOfVouchers : System.Web.UI.Page
    {
        SessionCart MyCart { get; set; }
        AccountManager myManager { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //set the current user (REMOVE AFTER LOGIN PAGE IS FINISHED)
            /*if (Session["Username"] == null)
            {
                Session["Username"] = "someone@gmail.com";
            }*/

            if (Session["username"] == null)
            {
                Response.Redirect("/ASPX Files/Joanne/login.aspx");
            }
            else if (Session["Privilege"].ToString() == "boss")
            {
                Response.Redirect("/ASPX Files/Ryan/BossDash/bossDash.aspx");
            }


            //create account manager object
            myManager = new AccountManager(this.Session);
            //create session cart object
            MyCart = new SessionCart(this.Session);
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            //set current cart details
            this.CurrentItems.InnerText = string.Format("Items in Cart: {0}", MyCart.GetItemCount());
            this.CurrentCost.InnerText = string.Format("Total Cart Cost: {0} Points", MyCart.GetCartCost());
            this.CurrentBalance.InnerText = string.Format("Current Balance: {0}", myManager.GetCurrentUser().Points);
        }

        protected void AddToCart(object sender, EventArgs e)
        {
            //add an item to cart based on the button clicked
            var MyButton = sender as Button;
            ///get the voucher id from the button
            string VoucherID = MyButton.CommandArgument;
            System.Diagnostics.Debug.WriteLine(VoucherID);
            int vouchID;
            bool didParse = int.TryParse(VoucherID, out vouchID);
            if (didParse)
            {
                //check if user has enough points
                if (myManager.GetCurrentUser().Points < (MyCart.GetCartCost() + 300))
                {
                    //alert user they dont have enough points
                    ClientScript.RegisterStartupScript(GetType(), "NotEnough", "alert('You do not have enough points!');", true);
                }
                else
                {
                    //add the item to the cart
                    MyCart.AddItem(vouchID, 1);
                }
            }
        }

        protected void GotoCheckout(object sender, EventArgs e)
        {
            //redirect to the checkout
            Response.Redirect("Checkout.aspx");
        }

        protected void ReturnRewards(object sender, EventArgs e)
        {

            //redirect to the rewards page
            Response.Redirect("Rewards.aspx");
        }

        protected void TermsBtn_Click(object sender, EventArgs e)
        {
            //show the terms and conditions page for the selected voucher
            var MyButton = sender as Button;
            string VoucherID = MyButton.CommandArgument;
            Response.Redirect(string.Format("DisplayVoucher.aspx?VoucherID={0}", VoucherID));
        }
    }
}