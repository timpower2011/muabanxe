using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class dataProvider

{
    public static SqlConnection con;
    public static SqlDataAdapter da;
    public static SqlDataReader rd;
    public static DataSet ds;
    public static SqlCommand cmd;
    public void  connect()
    {
        if (con == null)
            con = new SqlConnection("sever=localhost; database=MuaBanXe; intergrated security= true;");
        if (con.State == ConnectionState.Closed)
            con.Open();
    }

    public void disconnect()
    {
        if ((con != null) && (con.State == ConnectionState.Open))
            con.Close();
    }

    public static SqlConnection GetCon()
    {
        string conn = ConfigurationManager.ConnectionStrings["MuaBanXeConnectionString"].ToString();
        con = new SqlConnection(conn);
        con.Open();
        return con;
    }

    public DataSet get(string sql)
    {
        connect();
        da = new SqlDataAdapter(sql, con);
        ds = new DataSet();
        da.Fill(ds);
        disconnect();
        return ds;

    }

    public void ExecuteNonQuery(string sql)
    {
        connect();
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        disconnect();
    }


}

