using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class KhachHang_DangTin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=TIM\PERFECT;Initial Catalog=MuaBanXe;Integrated Security=True");
    int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Convert.ToString(Session["taikhoan"]) == ""))
        {
            Response.Redirect("/Account/login.aspx");
        }
        else
        {
            lbtaikhoan.Text = Convert.ToString(Session["taikhoan"]);
            ID = (int)Session["ID"];
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
            string fileName = "~/User/images/" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + FileUpload1.FileName;
            filePath = MapPath(fileName);
            FileUpload1.PostedFile.SaveAs(filePath);


            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into NoiDungTin(TieuDe,GiaBan,NoiBan,NoiDung,NgayDang,MaHangXe,HinhAnh) values(N'" + TextBox1.Text + "',N'" + TextBox2.Text + "',N'" + DropDownList1.SelectedItem.ToString() + "',N'" + TextBox5.Text + "',getdate(),'" + DropDownList2.SelectedValue + "','" + "images\\" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + FileUpload1.FileName.ToString() + "')";
            cmd.ExecuteNonQuery();

            con.Close();
        }
        Response.Redirect("~/KhanhHang/KhachHang.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Add("taikhoan", "");
        Session.Add("matkhau", "");
        Response.Redirect("/KhachHang/KhachHang.aspx");

    }

    public int getID_asp(string input)
    {

        dataProvider.cmd = new System.Data.SqlClient.SqlCommand("get_ID_Acc", dataProvider.GetCon());
        dataProvider.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        dataProvider.cmd.Parameters.AddWithValue("@HoTen", lbtaikhoan);
        int ID = (int)dataProvider.cmd.ExecuteScalar();
        return ID;

    }
}