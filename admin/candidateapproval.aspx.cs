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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Class1 c = new Class1();
        int x = Convert.ToInt32(e.CommandArgument);
        string str = GridView1.DataKeys[x].Value.ToString();
        if (e.CommandName == "abc")
        {
            c.data("update candidate set status='approved' where cid='" + str + "'");
        }
        if (e.CommandName == "def")
        {
            c.data("update candidate set status='rejected' where cid='" + str + "'");
        }
    }
}