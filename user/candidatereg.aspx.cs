﻿using System;
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
   

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
        Class2 b = new Class2();

        DataTable dd = b.select("select * from reg where votersid='" + TextBox7.Text + "'");

        TextBox10.Text = dd.Rows[0]["name"].ToString();
        TextBox11.Text = dd.Rows[0]["gender"].ToString();
        TextBox12.Text = dd.Rows[0]["email"].ToString();
        TextBox13.Text = dd.Rows[0]["dob"].ToString();
        TextBox14.Text = dd.Rows[0]["address"].ToString();
        TextBox15.Text = dd.Rows[0]["phone"].ToString();
        Image1.ImageUrl = /*"~/home/myimages/" +*/ dd.Rows[0]["photo"].ToString();
        Image2.ImageUrl = /*"~/home/myimages/" +*/ dd.Rows[0]["aadhar"].ToString();
    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        Class2 bc = new Class2();

        DataTable dd1 = bc.select("select * from reg where votersid='" + TextBox8.Text + "'");

        TextBox16.Text = dd1.Rows[0]["name"].ToString();
        TextBox17.Text = dd1.Rows[0]["gender"].ToString();
        TextBox18.Text = dd1.Rows[0]["email"].ToString();
        TextBox19.Text = dd1.Rows[0]["dob"].ToString();
        TextBox20.Text = dd1.Rows[0]["address"].ToString();
        TextBox21.Text = dd1.Rows[0]["phone"].ToString();
        Image3.ImageUrl = /*"~/home/myimages/" +*/ dd1.Rows[0]["photo"].ToString();
        Image5.ImageUrl = /*"~/home/myimages/" +*/ dd1.Rows[0]["aadhar"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string img;
        Class1 c = new Class1();
        //img = "~/home/myimages/" + FileUpload1.FileName;
        if (FileUpload1.HasFile)
        {
            
            FileUpload1.SaveAs(Server.MapPath("~/home/myimages/" + FileUpload1.FileName));
        }
        
        if (TextBox7.Text == TextBox8.Text)
        {
            Response.Write("<script>alert('Nominees should be different!!');</script>");
        }
        c.data("insert into candidate values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text + "','" + FileUpload1.FileName + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox5.Text + "','" + DropDownList6.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox9.Text + "','pending','0')");
        c.data("insert into party values('" + TextBox6.Text + "','" + FileUpload1.FileName + "')");
        c.data("insert into login values('" + TextBox1.Text + "','" + TextBox9.Text + "','candidate')");
        Response.Write("<script>alert('Candidate registered successfully!!');</script>");
    }
}