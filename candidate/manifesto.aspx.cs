using System;
using System.Collections.Generic;
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
        Class1 c = new Class1();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/home/myimages/" + FileUpload1.FileName));
        }
        c.data("insert into manifesto values('"+TextBox3.Text+"','"+TextBox4.Text+"','"+FileUpload1.FileName+"')");
        Response.Write("<script>alert('Manifesto successfully created!!');</script>");
    }
}