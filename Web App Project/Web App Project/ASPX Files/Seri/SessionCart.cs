using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.SessionState;

namespace Web_App_Project.ASPX_Files.Seri
{
    public class SessionCart
    {
        //current session variable
        HttpSessionState Sess { get; set; }
        //cart items list
        BindingList<CartItem> CartItems { get; set; }

        public SessionCart(HttpSessionState mysession)
        {
            //set the current session
            this.Sess = mysession;
            //check if the cart is already in the session
            if (this.Sess["VoucherCart"] != null)
            {
                //get the current cart from the session
                this.CartItems = (BindingList<CartItem>)this.Sess["VoucherCart"];
            }
            else
            {
                //create a new cart for the session
                CartItems = new BindingList<CartItem>();
            }
        }

        //get the current items list
        public BindingList<CartItem> GetItems()
        {
            return this.CartItems;
        }

        //add or increment an item based on the id
        protected void AddToID(int id, int amount)
        {
            foreach(var item in CartItems)
            {
                if(item.ItemID == id)
                {
                    item.SetCount(item.Quantity + amount);
                    return;
                }
            }
            this.CartItems.Add(CartItem.GetNewItem(id));
        }

        //add an item based on id
        public void AddItem(int id, int amount)
        {
            AddToID(id, amount);
            // set the session variable to the item list
            this.Sess["VoucherCart"] = GetItems();
        }
        
        //return the total amount of vouchers in the cart (including quantity)
        public int GetItemCount()
        {
            int Count = 0;
            foreach(CartItem item in CartItems)
            {
                Count += item.Quantity;
            }
            return Count;
        }

        //set the quantity of an item based on id
        public void SetItemCount(int id, int amount)
        {
            this.CartItems[id].Quantity = amount;
        }

        //get the total cart cost (including quantity)
        public int GetCartCost()
        {
            int Cost = 0;
            foreach (CartItem item in CartItems)
            {
                Cost += (item.Quantity * item.ItemCost);
            }
            return Cost;
        }

        //display a basic table of the current items (debugging)
        public string GetCartHtml()
        {
            var builder = new StringBuilder();
            builder.Append("<tr><th>Name</th><th>Quantity</th><th>Item Cost</th><th>Total Cost</th></tr>");
            foreach(var item in CartItems)
            {
                builder.Append(string.Format("<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th></tr>",item.ItemName, item.Quantity,item.ItemCost,item.ItemCost * item.ItemID));
            }
            return builder.ToString();
        }
    }

    //a class to represent an item
    public class CartItem
    {
        public int ItemID { get;  set; }
        public string ItemName { get; protected set; }
        public int Quantity { get; set; }
        public int ItemCost { get; protected set; }
        public int TotalCost { get { return ItemCost * Quantity; } }

        //creates a new voucher item based on the id
        public static CartItem GetNewItem(int id)
        {
            SqlCommand myVoucher = new SqlCommand(string.Format("Select voucherName, pointsRequired from VoucherTypes where voucherId = '{0}'", id), 
                new SqlConnection(ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString));
            myVoucher.Connection.Open();
            var reader = myVoucher.ExecuteReader();
            if(reader.Read())
            {
                var myItem = new CartItem(id);
                myItem.Quantity = 1;
                myItem.ItemName = reader["voucherName"].ToString();
                myItem.ItemCost = int.Parse(reader["pointsRequired"].ToString());
                return myItem;
            }
            return null;
        }
        
        //set the quantity of the current item
        public void SetCount(int i)
        {
            this.Quantity = i;
        }

        //cart item constructor
        public CartItem(int ItemID)
        {
            this.ItemID = ItemID;
        }
    }
}