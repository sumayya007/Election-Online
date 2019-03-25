using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    Class2 sc = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dd = sc.select("select * from state");
          
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 c = new Class1();

        c.data("insert into village values('" + DropDownList1.SelectedValue + "','"+DropDownList2.SelectedValue+"','" + TextBox1.Text + "')");

        Response.Write("Data added successfully!!");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dd1 = sc.select("select * from district where disid='"+DropDownList1.SelectedValue+"'");

    }
}
