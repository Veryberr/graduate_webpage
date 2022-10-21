using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

namespace projectAll
{
    public partial class FindID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckUserIdExists();
        }
        private void CheckUserIdExists()
        {
            if (IsValid) // 이 페이지가 유효하면
            {
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; 
                SqlConnection con = new SqlConnection(conStr); 
                string sql = "Select * from Info02 where UserID = @UserID"; 
                SqlCommand cmd = new SqlCommand(sql, con); 
                cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);
                con.Open(); 
                if (cmd.ExecuteScalar() == null)
                    // select 결과로 넘어오는 첫 번째 필드 값을 받아옴
                { 
                    Label1.Text = "신청하신 아이디는 사용가능합니다."; 
                    Button2.Visible = true; 
                }
                else
                { 
                    Label1.Text = "사용 중인 아이디입니다.."; 
                    Button2.Visible = false; 
                }
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = "<script> "
            + " opener.document.getElementById('ContentPlaceHolder1_TextBox1').value ='"
            + TextBox1.Text + "'; " + " self.close( ); </script>"; 
            Response.Write(str);
        }
    }
}