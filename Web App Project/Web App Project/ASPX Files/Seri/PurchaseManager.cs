using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace Web_App_Project.ASPX_Files.Seri
{
    //class for managing the accounts table
    public class PurchaseManager
    {
        public HttpSessionState Sess { get; set; }
        SqlConnection MyConn { get; set; }

        public PurchaseManager(HttpSessionState mySess)
        {
            this.Sess = mySess;
            this.MyConn = new SqlConnection(ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString);
        }

        //gets the purchases for that user
        //returns a list of voucher objects
        public List<VoucherPurchase> GetPurchases(string username)
        {
            //get the rows that match the username
            var Purchases = new SqlCommand(string.Format("Select * from Vouchers where Email = '{0}'", username), this.MyConn);
            Setup();
            var rowRead = Purchases.ExecuteReader();
            var myPurchases = new List<VoucherPurchase>();
            //create objects for each row
            while (rowRead.Read())
            {
                try
                {
                    var ID = rowRead["voucherID"].ToString();
                    var Email = rowRead["Email"].ToString();
                    var voucherName = rowRead["voucherName"].ToString();
                    var pointsRequired = rowRead["pointsRequired"].ToString();
                    var redeemQty = rowRead["redeemQty"].ToString();
                    var dateRedeemed = rowRead["dateRedeemed"].ToString();
                    var voucherCode = rowRead["voucherCode"].ToString();
                    //create row object
                    var newItem = new VoucherPurchase(ID, Email, voucherName, pointsRequired, redeemQty, dateRedeemed, voucherCode);
                    myPurchases.Add(newItem);
                }
                catch (Exception e)
                {

                }

            }
            this.MyConn.Close();
            //return object list
            return myPurchases;
        }

        //Add item purchases to the Vouchers table
        public void PurchaseCart(UserClass user, SessionCart myCart)
        {
            //get the current date
            var currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            Setup();
            foreach(CartItem item in myCart.GetItems())
            {
                //get unique coupon code
                var code = GetUniqueCode();
                //insert into database
                var Insert = new SqlCommand(string.Format("INSERT INTO Vouchers ([Email], [voucherName], [pointsRequired], [redeemQty], [dateRedeemed], [voucherCode]) VALUES ('{0}', '{1}', {2}, {3}, '{4}', '{5}')", user.Username, item.ItemName, item.ItemCost, item.Quantity, currentDate, code), this.MyConn);
                Insert.ExecuteNonQuery();
            }
        }

        //generates a random code for the coupon voucher
        protected string GetUniqueCode()
        {
            string codes = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            Random r = new Random(DateTime.Now.Millisecond);
            string Code = "VOS";
            for(int i = 0; i < 9; i++)
            {
                Code += codes[r.Next(codes.Length)];
            }
            return Code;
        }

        //connects to the database if not already connected
        protected void Setup()
        {
            if (MyConn.State != System.Data.ConnectionState.Open)
            {
                MyConn.Open();
            }
        }

    }

    //Voucher Purchase class
    //represents an sql voucher row
    public class VoucherPurchase
    {
        public string ID { get; protected set; }
        public string Email { get; protected set; }
        public string Name { get; protected set;  }
        public string Cost { get; protected set; }
        public string Amount { get; protected set; }
        public string Date { get; protected set; }
        public string VoucherCode { get; protected set; }

        public VoucherPurchase(string id, string email, string name, string cost,string Amount, string date, string vouchercode)
        {
            this.ID = id; this.Email = email; this.Name = name; this.Cost = cost; this.Amount = Amount; this.Date = date; this.VoucherCode = vouchercode;
        }

    }
}