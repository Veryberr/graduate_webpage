using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient; //추가
using System.Data; //추가
using System.Configuration; // web.config 사용
using System.IO;    // 파일 저장 관련

namespace projectAll
{
    public partial class myLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
                Response.Redirect(FormsAuthentication.DefaultUrl);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {   // 로그인 버튼
            //FormsAuthentication.SetAuthCookie("ykchoi", false); 


            if (IsAuthenticated(TextBox1.Text, TextBox2.Text))
            {
                // 로그인 시켜줌(1)인증쿠키 생성 (2) 요청한 페이지로 이동 (3)
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Label2.Text = "ID 또는 비밀번호가 틀립니다";
            }
        }

        private bool IsAuthenticated(string userID, string password) 
        {
            bool result = false;

            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = @"select * from Info02
                            where UserID=@UserID and Password = @Password";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", userID);
            cmd.Parameters.AddWithValue("@Password", password);


            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
                result = true;
            else
                result = false;

            rd.Close();
            con.Close();

            return result;

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

            if (IsAuthenticated(TextBox1.Text, TextBox2.Text))
            {
                // 로그인 시켜줌(1)인증쿠키 생성 (2) 요청한 페이지로 이동 (3)
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Label2.Text = "ID 또는 비밀번호가 틀립니다";
            }
        }
    }
}