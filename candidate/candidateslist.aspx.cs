using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class candidate_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Class2 c = new Class2();
        //string d = GridView2.DataKeys[GridView2.SelectedIndex].Value.ToString();
        ////string d1 = GridView2.Rows[GridView2.SelectedIndex].Cells[1].Text;
        ////Class1 b = new Class1();
        ////string n=b.scalar1("select stateid from state where statename='"+d1+"'");
        //DataTable dd = c.select("select candname from candidate where electionname='" + d + "' and stateid='"+n+"'");
        //GridView1.DataSource = dd;
        //GridView1.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }

   

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        GridView3.Visible = true;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }
}