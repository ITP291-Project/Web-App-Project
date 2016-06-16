using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class enterEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_On(object sender, EventArgs e)
        {
            Response.Redirect("emailSent.aspx");
        }
    }
}