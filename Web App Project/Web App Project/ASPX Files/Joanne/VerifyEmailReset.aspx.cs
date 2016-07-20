using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class VerifyEmailReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //verify if input is equals to random generated number sent to person's email

            // Generate a new 12-character password with 1 non-alphanumeric character.
            string password = System.Web.Security.Membership.GeneratePassword(24, 0);

            //print out the password and replace label3 to test :)
            Label3.Text = password;
        }

        public static string GeneratePassword(int length, int numberOfNonAlphanumericCharacters)
        {
            String s = "";
            return s;
        }
    }
}