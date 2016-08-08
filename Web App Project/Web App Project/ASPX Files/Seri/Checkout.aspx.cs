using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Seri
{
    public partial class Checkout : System.Web.UI.Page
    {
        SessionCart myCart { get; set; }
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

            //create session cart object
            myCart = new SessionCart(this.Session);
            //create account manager object
            myManager = new AccountManager(this.Session);
            //set the data source for the item grid to the cart
            this.CheckoutGrid.DataSource = myCart.GetItems();
            if (!IsPostBack)
            {
                //only bind if it is the inital load
                this.CheckoutGrid.DataBind();
            }
          
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (myCart.GetItemCount() < 1)
            {
                //redirect back to choice of vouchers if the cart has no items
                Response.Redirect("ChoiceOfVouchers.aspx");
            }
            //set the cart details
            this.CurrentItems.InnerText = string.Format("Items in Cart: {0}", myCart.GetItemCount());
            this.CurrentCost.InnerText = string.Format("Total Cart Cost: {0} Points", myCart.GetCartCost());
            this.CurrentBalance.InnerText = string.Format("Current Balance: {0}", myManager.GetCurrentUser().Points);
            this.CheckoutBtn.OnClientClick = string.Format("return confirm('You are about to withdraw {0} points from your account!');", myCart.GetCartCost());
        }

        protected void ReturnBtn_Click(object sender, EventArgs e)
        {
            //return to the choice of vouchers page
            Response.Redirect("ChoiceOfVouchers.aspx");
        }


        protected void CheckoutBtn_Click(object sender, EventArgs e)
        {
            //get the current user
            var usr = this.myManager.GetCurrentUser();
            //get the points remaining after purchase
            int totalCost = usr.Points - myCart.GetCartCost();
            //check if user can afford the purchase
            if(totalCost >= 0)
            {
                //update user points
                usr.UpdatePoints(totalCost);
                //add purchases to the table
                new PurchaseManager(this.Session).PurchaseCart(usr, myCart);
                //clear the items in cart
                myCart.GetItems().Clear();
                //redirect to purcahses page
                Response.Redirect("Purchases.aspx");
            }
            //bind checkout grid to updated data
            this.CheckoutGrid.DataBind();
        }

        public void CheckoutGrid_UpdateItem(int id)
        {
            System.Diagnostics.Debug.WriteLine(id);
        }

        protected void CheckoutGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.CheckoutGrid.EditIndex = e.NewEditIndex;
            this.CheckoutGrid.DataBind();
        }

        protected void CheckoutGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.CheckoutGrid.EditIndex = -1;
            this.CheckoutGrid.DataBind();
        }

        protected void CheckoutGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var myRow = this.CheckoutGrid.Rows[e.RowIndex];
            int myInt = -1;
            if (int.TryParse(e.NewValues["Quantity"].ToString(), out myInt)){
                myCart.SetItemCount(e.RowIndex, myInt);
            }
            this.CheckoutGrid.EditIndex = -1;
            this.CheckoutGrid.DataBind();
        }

        protected void CheckoutGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            this.myCart.GetItems().RemoveAt(e.RowIndex);
            this.CheckoutGrid.DataBind();
        }
    }
}