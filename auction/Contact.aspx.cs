using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auction
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com/");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://twitter.com/");
        }
    }
}