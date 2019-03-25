using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for selectclass
/// </summary>
public class Class2
{

    SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=online;Integrated Security=True");
    public DataTable select(string a)
    {
        conn.Open();
        SqlCommand obj = new SqlCommand(a, conn);
        SqlDataAdapter myobj = new SqlDataAdapter(obj);
        DataTable obj1 = new DataTable();
        myobj.Fill(obj1);
        conn.Close();
        return (obj1);
       
    }
    
}