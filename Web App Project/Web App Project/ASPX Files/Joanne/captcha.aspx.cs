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
            string captchaText = CI.GetRandomString(5);

            Session["CaptchaText"] = captchaText;
            CI.GenerateImage(captchaText, 200, 50, Color.DarkGray, Color.White);

            this.Response.Clear();
            this.Response.ContentType = "image/jpeg";
            CI.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            CI.Dispose();
        }

        //validate captcha
        //protected void Button_Click(object sender, EventArgs e)
        //{
        //    bool isCaptchaValid = false;
        //    if (Session["CaptchaText"]!=null && Session["CaptchaText"].ToString() == TextBox1.Text)
        //    {
        //        isCaptchaValid = true;
        //    }

        //    if (isCaptchaValid)
        //    {
        //        Label3.Text = "Successful";
        //    }

        //    else
        //    {
        //        Label3.Text = "Unsuccessful";
        //    }

        //}

        protected void Captcha_Click(object sender, EventArgs e)
        {
            /*CaptchaRandomImage CI = new CaptchaRandomImage();
            string captchaText = CI.GetRandomString(5);

            Session["CaptchaText"] = captchaText;
            CI.GenerateImage(captchaText, 200, 50, Color.DarkGray, Color.White);

            this.Response.Clear();
            this.Response.ContentType = "image/jpeg";
            CI.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            CI.Dispose();*/

        }

    }
}