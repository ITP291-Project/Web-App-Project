using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using SRVTextToImage;

namespace Web_App_Project.ASPX_Files.Joanne
{
    public partial class captcha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CaptchaRandomImage CI = new CaptchaRandomImage();
            string captchaText = CI.GetRandomString(6);

            Session["CaptchaText"] = captchaText;
            CI.GenerateImage(captchaText, 200, 50, Color.DarkGray, Color.White);

            this.Response.Clear();
            this.Response.ContentType = "image/jpeg";
            CI.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            CI.Dispose();
        }

    }
}