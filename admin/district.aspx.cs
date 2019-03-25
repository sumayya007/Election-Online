using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 c = new Class1();
       
        c.data("insert into district values('"+DropDownList1.SelectedValue+"','" + TextBox1.Text + "')");
        
        Response.Write("Data added successfully!!");
    }
}