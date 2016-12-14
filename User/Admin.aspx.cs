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
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;




public partial class User_Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=TIM\PERFECT;Initial Catalog=MuaBanXe;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Convert.ToString(Session["taikhoan"]) == "")||((Convert.ToString(Session["matkhau"]) == "")))
        {
            Response.Redirect("/Account/login.aspx");
        }
        else
        {
            lbtaikhoan.Text = Convert.ToString(Session["taikhoan"]);
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    bool CheckFileType(string fileName)
    {

        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif":
                return true;
            case ".png":
                return true;
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;
        }
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {

        if (Page.IsValid && FileUpload1.HasFile && CheckFileType(FileUpload1.FileName))
        {
            string filePath;
            string fileName = "images\\" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + FileUpload1.FileName;
            filePath = MapPath(fileName);
            FileUpload1.PostedFile.SaveAs(filePath);
            

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into NoiDungTin(TieuDe,GiaBan,NoiBan,NoiDung,NgayDang,Duyet,DaBan,MaHangXe,MaUser,HinhAnh) values(N'" + TextBox1.Text + "',N'" + TextBox2.Text + "',N'" + DropDownList1.SelectedItem.ToString() + "',N'" + TextBox5.Text + "',getdate()," + (CheckBox1.Checked ? "1" : "0") + "," + (CheckBox2.Checked ? "1" : "0") + ",'" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+ "images\\" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + FileUpload1.FileName.ToString()+"')";
            cmd.ExecuteNonQuery();

            con.Close();
        }
        Response.Redirect("Admin.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Add("taikhoan", "");
        Session.Add("matkhau", "");
        Response.Redirect("/Account/Login.aspx");
        
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}


   
