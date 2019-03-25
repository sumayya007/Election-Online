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
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button8_Click1(object sender, EventArgs e)
    {
        Class1 c = new Class1();

        c.data("insert into stateelectionn values('" + TextBox9.Text + "','" + DropDownList5.SelectedValue + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','"+TextBox31.Text+"')");

        Response.Write("State details added successfully!!");
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {
        Class1 c = new Class1();

        c.data("insert into districtelectionn values('" + TextBox16.Text + "','" + DropDownList9.SelectedValue + "','" + DropDownList7.SelectedValue + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','"+TextBox30.Text+"')");

        Response.Write("District details added successfully!!");
    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        Class1 c = new Class1();

        c.data("insert into villageelectionn values('" + TextBox23.Text + "','" + DropDownList10.SelectedValue + "','" + DropDownList11.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox29.Text + "','"+TextBox32.Text+"')");

        Response.Write("Village details added successfully!!");
    }
}