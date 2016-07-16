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
    public partial class DisplayVoucher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //get the posted voucher id
            var VoucherID = Request["VoucherID"];
            if(VoucherID != null)
            {
                //if there is a requested voucher, display that voucher information
                DisplayVoucherByID(VoucherID.ToString());
            }
        }

        //display a voucher's information
        protected void DisplayVoucherByID(string id)
        {
            //get the voucher from the database based on id
            SqlCommand GetVoucher = new SqlCommand(string.Format("Select * from VoucherTypes where voucherId = {0}", id), new SqlConnection(ConfigurationManager.ConnectionStrings["localdbConnectionString1"].ConnectionString));
            GetVoucher.Connection.Open();
            var ReadVouch = GetVoucher.ExecuteReader();
            if (ReadVouch.Read())
            {
                //set the voucher information
                this.VoucherName.InnerText = ReadVouch["voucherName"].ToString();
                this.VoucherImage.Src = "Images\\" + ReadVouch["voucherPic"].ToString();
                this.VoucherCost.InnerText = string.Format("Cost: {0} Points", ReadVouch["pointsRequired"]);
            }
        }

        protected void ReturnBtn_Click(object sender, EventArgs e)
        {
            //redirect to the choice of vouchers page
            Response.Redirect("ChoiceOfVouchers.aspx");
        }
    }
}