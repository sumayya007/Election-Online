using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class Class1
{
    SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=online;Integrated Security=True");
    public void data(string a)
    {
        conn.Open();
        SqlCommand obj = new SqlCommand(a, conn);
        obj.ExecuteNonQuery();
        conn.Close();
    }
    public int scalar(string a)
    {
        conn.Open();
        SqlCommand obj = new SqlCommand(a, conn);
        int c=Convert.ToInt32(obj.ExecuteScalar());
        conn.Close();
        return c;
    }
    public string scalar1(string a)
    {
        conn.Open();
        SqlCommand obj = new SqlCommand(a, conn);
        string c = Convert.ToString(obj.ExecuteScalar());
        conn.Close();
        return c;
    }
}