using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;  // 추가


namespace proj02
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                Label1.Text = Page.User.Identity.Name + " 님";
                Panel2.Visible = false;
                Panel3.Visible = true;
            }
            else 
            {
                Label1.Text = "";
                Panel2.Visible = true;
                Panel3.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {//로그인 버튼
            Response.Redirect("~/myLogin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {// 회원가입 버튼
            Response.Redirect("~/Register.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {// 로그아웃 버튼
            FormsAuthentication.SignOut();  // 로그아웃 시켜 줌
            Response.Redirect(Request.UrlReferrer.ToString());  // 화면갱신
        }

        protected void Button4_Click(object sender, EventArgs e)
        {// 정보변경 버튼
            Response.Redirect("~/MemberOnly/Modify.aspx");
        }


        protected void ImageButton1_Click3(object sender, ImageClickEventArgs e)
        {// 회원가입
            Response.Redirect("~/Register.aspx");
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {// 로그인
            Response.Redirect("~/myLogin.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {// 로그아웃
            FormsAuthentication.SignOut();  // 로그아웃 시켜 줌
            Response.Redirect(Request.UrlReferrer.ToString());  // 화면갱신
            Response.Redirect("~/Mainpage.aspx");
        }
    }
}