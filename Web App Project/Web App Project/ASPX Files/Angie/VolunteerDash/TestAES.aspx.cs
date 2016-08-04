using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Ryan.VolunteerDash
{
    public partial class TestAES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string plainText = TextBox1.Text;

            string cipherText = AES.Encrypt(plainText);

            TextBox2.Text = cipherText;
        }
    }
}