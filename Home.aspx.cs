using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace proj02
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                Label2.Text = Page.User.Identity.Name + "님, 환영합니다.";
                ImageButton3.Visible = true;
            }
            else
            {
                Label2.Text = "";
                ImageButton3.Visible = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/Mainpage.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/Mainpage.aspx");
        }

        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {

        }
    }
}