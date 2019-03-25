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
   

    
    

   
    public void delete()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";

        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        DropDownList4.SelectedIndex = -1;
        FileUpload1.Attributes.Clear();
        FileUpload2.Attributes.Clear();
    }

   
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 c = new Class1();
        Class2 b = new Class2();
        int x = c.scalar("select count(*) from reg where name='" + TextBox1.Text + "' and votersid='" + TextBox2.Text + "'");
        if (x == 1)
        {
            Response.Write("User already exists");
        }
        if (DropDownList4.SelectedValue == "state level")
        {
            DataTable dd1 = b.select("select userlastdate from stateelectionn where statename='" + DropDownList1.SelectedValue + "'");
            DateTime aa = Convert.ToDateTime(dd1.Rows[0]["userlastdate"].ToString());
            if (DateTime.Now.Date > aa.Date)
            {
                Response.Write("<script>alert('Last date for User Registration has exceeded');</script>");
            }
        }
        else if (DropDownList4.SelectedValue == "district level")
        {
            DataTable dd2 = b.select("select userlastdate from districtelectionn");
            DateTime bb = Convert.ToDateTime(dd2.Rows[0]["userlastdate"].ToString());
            if (DateTime.Now.Date > bb.Date)
            {
                Response.Write("<script>alert('Last date for User Registration has exceeded');</script>");
            }
        }
        else if (DropDownList4.SelectedValue == "village level")
        {
            DataTable dd3 = b.select("select userlastdate from villageelectionn");
            DateTime cc = Convert.ToDateTime(dd3.Rows[0]["userlastdate"].ToString());
            if (DateTime.Now.Date > cc.Date)
            {
                Response.Write("<script>alert('Last date for User Registration has exceeded');</script>");
            }
        }

        string adhar = "",img="";
        if (FileUpload1.HasFile)
        {
             img = "~/home/myimages/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/home/myimages/"  + FileUpload1.FileName));
        }
        if (FileUpload2.HasFile)
        {
             adhar = "~/home/myimages/" + FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath("~/home/myimages/"  + FileUpload2.FileName));
        }
        
        

        c.data("insert into login values('" + TextBox1.Text + "','" + TextBox7.Text + "','user')");
        string g = c.scalar1("select logid from login where name='" + TextBox1.Text + "'");
        //if (g != "")
        //{

            c.data("insert into reg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + img + "','" + adhar + "','pending','failure','" + g + "')");
        Response.Redirect("register.aspx");
        Response.Write("<script>alert('User registered successfully!!');</script>");
            //delete();

        //}
       
    }
}