using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Admin2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["taikhoan"]) == "")
        {
            Response.Redirect("/Account/login.aspx");
        }
        else
        {
            lbtaikhoan.Text = Convert.ToString(Session["taikhoan"]);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Add("taikhoan", "");
        Response.Redirect("/Account/Login.aspx");

    }
}