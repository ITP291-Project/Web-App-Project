using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class TestHash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String input = TextBox1.Text;
            String algorithm = DropDownList1.Text;
            String selectedByte = DropDownList2.Text;
            Byte[] salt = new byte[8];

            String result = SimpleHash.ComputeHash(input, algorithm, salt);

            TextBox2.Text = result;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String plaintext = TextBox4.Text;
            String algorithm = DropDownList2.Text;
            String hashedText = TextBox5.Text;

            Boolean result = SimpleHash.VerifyHash(plaintext, algorithm, hashedText);

            if (result == true)
            {
                TextBox6.Text = "Hash check matches! You're verified!";
            }
            else if (result == false)
            {
                TextBox6.Text = "Hash check failed! Oh no!";
            }
            else
            {
                TextBox6.Text = "Check your inputs. Something went wrong";
            }
        }
    }
}