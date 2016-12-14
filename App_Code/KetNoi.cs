
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

/// <summary>
/// Summary description for KetNoi
/// </summary>
public class KetNoi
{
    public static SqlConnection con = null;
    public static SqlCommand cmd;
    public static SqlDataReader rd;
    public static DataSet ds;

    public KetNoi()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}