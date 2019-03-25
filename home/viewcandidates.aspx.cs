using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Class1 c = new Class1();
        string y = e.CommandArgument.ToString();
        //string z=c.scalar1("select manifesto from manifesto where votersid='"+y+"'");
        Image1.ImageUrl = "~/home/myimages/" + y;
        MultiView1.ActiveViewIndex = 1;
    }
}