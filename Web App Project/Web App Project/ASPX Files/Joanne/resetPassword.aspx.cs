using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //check if password and reconfirm password is the same
            string password = TextBox2.Text;
            string passwordretype = TextBox3.Text;
            if (password != passwordretype)
            {
                // MessageBoxShow("Enter same password in both", this);
                //MessageBox.Show("Enter same password in both");
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Enter same password in both');</script>");
            }

            Response.Redirect("resetPasswordConfirmation.aspx");
        }
    }
}