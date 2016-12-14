using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;



using MuaBanXe;

public partial class Account_Login : Page
{
    SqlConnection con = new SqlConnection(@"Data Source=TIM\PERFECT;Initial Catalog=MuaBanXe;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterHyperLink.NavigateUrl = "Register";
        
        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }

    protected void LogIn(object sender, EventArgs e)
    {

                
                dataProvider.cmd = new System.Data.SqlClient.SqlCommand("login_form", dataProvider.GetCon());
                dataProvider.cmd.CommandType = System.Data.CommandType.StoredProcedure;
                dataProvider.cmd.Parameters.AddWithValue("@HoTen",UserName.Text);
                dataProvider.cmd.Parameters.AddWithValue("@MatKhau",Password.Text);
                
                dataProvider.rd = dataProvider.cmd.ExecuteReader();
                bool login = dataProvider.rd.Read();
                if(login)
                {
                    int check = PhanQuyen_asp(UserName.Text);
                    switch (check)
                    {
                        case 0:
                    FailureText.Text = "tài khoản bị vô hiệu";
                    ErrorMessage.Visible = true;
                    break;
                case 1:
                            Response.Write("<script>arlert('Đăng Nhập thành công!')</script>");

                            Session.Add("taikhoan", UserName.Text);
                            Session.Add("matkhau", Password.Text);

                            Response.Redirect("/User/Admin.aspx");

                    break;
                        case 2:
                            Response.Write("<script>arlert('Đăng Nhập thành công!')</script>");
                            Session.Add("taikhoan", UserName.Text);
                             Session.Add("matkhau", "");
                             Response.Redirect("/KhachHang/KhachHang.aspx");
                            break;
                        

                    }

                }
                 else
                {
                    FailureText.Text = "Invalid username or password.";
                     ErrorMessage.Visible = true;
                 }











    }

    


    

    public int PhanQuyen_asp(string input)
    {
        
        dataProvider.cmd = new System.Data.SqlClient.SqlCommand("kiemtraquyen",dataProvider.GetCon());
        dataProvider.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        dataProvider.cmd.Parameters.AddWithValue("@HoTen",input);
        int MaQuyen = (int)dataProvider.cmd.ExecuteScalar();
        return MaQuyen;
        

    }
}