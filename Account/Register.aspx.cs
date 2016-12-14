using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.HtmlControls;
using Microsoft.AspNet.Identity;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Threading;

public partial class Account_Register : Page
{
    SqlConnection con = new SqlConnection(@"Data Source=TIM\PERFECT;Initial Catalog=MuaBanXe;Integrated Security=True");
    protected void CreateUser_Click(object sender, EventArgs e)
    {

        int role=2;

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Account(HoTen, MatKhau, Sdt, DiaChi, Email,RoleID) values(N'" + UserName.Text + "',N'" + ConfirmPassword.Text + "',N'" + SĐT.Text + "',N'" + ĐịaChỉ.Text + "',N'" + Email.Text + "',N'"+role.ToString()+"')";
            cmd.ExecuteNonQuery();

            con.Close();
       
        
        
        
        WebMsgBox.Show("Đăng kí thành công - Login để tiếp tục");
    }

}