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





    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    Class1 b = new Class1();
    //    string str = GridView1.DataKeys[e.RowIndex].Value.ToString();
    //    b.data("delete from candidate where id='" + str + "'");
    //}

    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GridView1.EditIndex = -1;

    //}

    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    GridView1.EditIndex = e.NewEditIndex;
    //}

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{

    //}

    //protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    //{
    //    Class1 c = new Class1();

    //    string str = GridView1.DataKeys[e.RowIndex].Value.ToString();
    //    TextBox Box1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
    //    c.data("update candidate set candname='" + Box1.Text + "' where id='" + str + "");
    //}

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Class1 b = new Class1();
        string str = GridView1.DataKeys[e.RowIndex].Value.ToString();
        b.data("delete from candidate where cid='" + str + "'");
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Class1 c = new Class1();
        string str = GridView1.DataKeys[e.RowIndex].Value.ToString();
        TextBox Box1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        c.data("update candidate set candname='" + Box1.Text + "' where cid='" + str + "'");
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }
}