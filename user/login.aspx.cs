using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Class1 c = new Class1();
        //if(TextBox1.Text=="admin" && TextBox2.Text=="admin")
        //{
        //    Response.Redirect("adminhome.aspx");
        //}
        //int ad = Convert.ToInt32(c.scalar("select count(*) from login where name='admin' and password='admin',role='admin'"));
        //if (ad == 1)
        //{
        //    Response.Redirect("adminhome.aspx");
        //}
        //int bc = Convert.ToInt32(c.scalar("select count(*) from login where role = 'candidate'"));
        //if (bc == 1)
        //{
        //    Response.Redirect("candidatehome.aspx");
        //}
        Class2 b = new Class2();

        DataTable dd = b.select("select * from login where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
        if (dd.Rows[0]["role"].ToString() == "admin")
        {
            Session["logid"] = dd.Rows[0]["logid"].ToString();
            Response.Redirect("../admin/electionhome.aspx");


        }

        else if (dd.Rows[0]["role"].ToString() == "candidate")
        {

            Session["logid"] = dd.Rows[0]["logid"].ToString();
            Response.Redirect("../candidate/candidatehome.aspx");
        }
        else if (dd.Rows[0]["role"].ToString() == "user")
        {
            DataTable bb = b.select("select rid from reg where name='" + TextBox1.Text + "' ");
            Session["rid"] = bb.Rows[0]["rid"].ToString();
            Session["logid"] = dd.Rows[0]["logid"].ToString();
            Response.Redirect("../home/viewcandidates.aspx");
        }


    }
}