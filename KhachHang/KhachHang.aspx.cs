using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MOONLY.Common;
using MOONLY.BusinessLogic;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class KhachHang_KhachHang : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=TIM\PERFECT;Initial Catalog=MuaBanXe;Integrated Security=True");

    public string gia(string date)
    {
        string C;
        C = String.Format("{0:0,0}", date);
        return C;

    }

    private DataSet GetPhanTrang_DataSet(
    string strTenStore,
    int currentPage,
    int recordPerpage,
    int pageSize,
    int CateID)
    {
        string strConnect = @"Data Source=TIM\PERFECT;Initial Catalog=MuaBanXe;Integrated Security=True";
        DataSet ds = new DataSet();
        SqlConnection sqlCn = new SqlConnection(strConnect);
        try
        {
            //Mo ket noi
            sqlCn.Open();
            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.Connection = sqlCn;
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.CommandText = strTenStore;
            sqlCmd.Parameters.Add(new SqlParameter("@currPage", currentPage));
            sqlCmd.Parameters.Add(new SqlParameter("@recodperpage", recordPerpage));
            sqlCmd.Parameters.Add(new SqlParameter("@Pagesize", pageSize));
            sqlCmd.Parameters.Add(new SqlParameter("@CateID", CateID));
            SqlDataAdapter sqlDa = new SqlDataAdapter();
            sqlDa.SelectCommand = sqlCmd;
            sqlDa.Fill(ds);
        }
        catch { }
        finally
        {
            if (sqlCn.State == ConnectionState.Open)
                sqlCn.Close();
            sqlCn.Dispose();
        }
        return ds;
    }


    public string strPaging = "";
    private int page = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strMaSP = Request.QueryString["Id"];
        page = (Request.QueryString["page"] + "" != "") ? int.Parse("0" + Request.QueryString["page"]) : 1;
        DataSet ds = GetPhanTrang_DataSet("TB_News_PagingByCateID", page, 8, 7, 4);
        if (ds.Tables.Count > 0)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                dtlSanPhamDM.DataSource = ds.Tables[0];
                dtlSanPhamDM.DataBind();
            }
            if (ds.Tables[1].Rows.Count > 0)
            {
                strPaging = ds.Tables[1].Rows[0][0] + "";
            }
            
        }
    }
}
