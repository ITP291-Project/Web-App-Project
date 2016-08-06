using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class testing2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Timers.Timer myTimer = new System.Timers.Timer();
            myTimer.Interval = 10000;
            myTimer.Enabled = true;
            if (TextBox1.Text.Equals("1"))
            {
                myTimer.Start();
            }

            if (myTimer.Interval.ToString().Equals("10000"))
            {
                Label1.Text = "Time's Up!";
            }
        }
    }
}