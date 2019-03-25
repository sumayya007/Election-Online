using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Security.Cryptography;

public partial class home_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        //if (Session["rid"] != null)
        //{
        //    Encrypt(Session["rid"].ToString());
        //}
        
        Class1 b = new Class1();
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox1.Text + "'");
        DataTable cc = v.select("select * from candidate where cid='"+GridView2.SelectedValue+"'");
        if (dd.Rows[0]["votestatus"].ToString() == "success")
        {
            Response.Write("<script>alert('You have already cast your vote!!');</script>");
            
        }
        else 
        {
            string enc = Encrypt(TextBox1.Text);

            if (CheckBox1.Checked == false && dd.Rows[0]["status"].ToString() == "approved")
            {
                b.data("insert into statevote values('" + enc + "','" + DropDownList2.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + GridView2.SelectedValue + "')");
                b.data("update reg set votestatus='success'");
                int c=Convert.ToInt32(cc.Rows[0]["kcount"]);
                c += 1;
                b.data("update candidate set kcount='"+c+"' where cid='"+GridView2.SelectedValue+"'");
                Response.Write("<script>alert('You have cast your vote successfully..Thank you!!');</script>");
              
            }


            else if (CheckBox1.Checked == true && dd.Rows[0]["status"].ToString() == "approved")
            {
                b.data("insert into statevote values('" + enc + "','" + DropDownList2.SelectedValue + "','" + DropDownList1.SelectedValue + "','NOTA')");
                b.data("update reg set votestatus='success'");
                int c = Convert.ToInt32(cc.Rows[0]["kcount"]);
                c += 1;
                b.data("update candidate set kcount='" + c + "' where cid='" + GridView2.SelectedValue + "'");
                Response.Write("<script>alert('You have cast your vote successfully..Thank you!!');</script>");
            }
            
        }
       if(dd.Rows[0]["status"].ToString() != "approved")
        {
            Response.Write("<script>alert('Voter not approved by admin');</script>");
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Panel1.Visible = false;
        }
        if (CheckBox1.Checked == false)
        {
            Panel1.Visible = true;
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox1.Text + "'");
        
            if (dd.Rows[0]["stateid"].ToString() != DropDownList2.SelectedValue)
            {
                Response.Write("<script>alert('Invalid State Selection');</script>");

            }
     
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 v = new Class2();
        
        DataTable dd3 = v.select("select electiondate from stateelectionn where statename='"+DropDownList2.SelectedValue+"'");
        DateTime cc = Convert.ToDateTime(dd3.Rows[0]["electiondate"].ToString());
        if (DateTime.Now.Date > cc.Date)
        {
            Response.Write("<script>alert('Election date has exceeded');</script>");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Class1 b = new Class1();
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox2.Text + "'");
        DataTable cc = v.select("select * from candidate where cid='" + GridView4.SelectedValue + "'");
        if (dd.Rows[0]["votestatus"].ToString() == "success")
        {
            Response.Write("<script>alert('You have already cast your vote!!');</script>");

        }
        else
        {
            string enc = Encrypt(TextBox2.Text);
            if (CheckBox2.Checked == false && dd.Rows[0]["status"].ToString() == "approved")
            {
                b.data("insert into districtvote values('" + enc + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + GridView4.SelectedValue + "')");
                b.data("update reg set votestatus='success'");
                int c = Convert.ToInt32(cc.Rows[0]["kcount"]);
                c += 1;
                b.data("update candidate set kcount='" + c + "' where cid='" + GridView4.SelectedValue + "'");
                Response.Write("<script>alert('You have cast your vote successfully..Thank you!!');</script>");

            }


            else if (CheckBox2.Checked == true && dd.Rows[0]["status"].ToString() == "approved")
            {
                b.data("insert into districtvote values('" +enc+  "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','NOTA')");
                b.data("update reg set votestatus='success'");
                int c = Convert.ToInt32(cc.Rows[0]["kcount"]);
                c += 1;
                b.data("update candidate set kcount='" + c + "' where cid='" + GridView4.SelectedValue + "'");
                Response.Write("<script>alert('You have cast your vote successfully..Thank you!!');</script>");
            }
            if (dd.Rows[0]["status"].ToString() != "approved")
            {
                Response.Write("<script>alert('Voter not approved by admin');</script>");
            }
            
        }
    }


    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
        {
            Panel2.Visible = false;
        }
        if (CheckBox2.Checked == false)
        {
            Panel2.Visible = true;
        }
    }


    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox2.Text + "'");
        if (dd.Rows[0]["stateid"].ToString() != DropDownList3.SelectedValue)
        {
            Response.Write("<script>alert('Invalid State Selection');</script>");

        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox2.Text + "'");
        if (dd.Rows[0]["disid"].ToString() != DropDownList4.SelectedValue)
        {
            Response.Write("<script>alert('Invalid district Selection');</script>");

        }
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 j = new Class2();

        DataTable dd4 = j.select("select electiondate from districtelectionn where districtname='" + DropDownList4.SelectedValue + "'");
        DateTime gg = Convert.ToDateTime(dd4.Rows[0]["electiondate"].ToString());
        if (DateTime.Now.Date > gg.Date)
        {
            Response.Write("<script>alert('Election date has exceeded');</script>");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Class1 b = new Class1();
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox3.Text + "'");
        DataTable cc = v.select("select * from candidate where cid='" + GridView6.SelectedValue + "'");
        if (dd.Rows[0]["votestatus"].ToString() == "success")
        {
            Response.Write("<script>alert('You have already cast your vote!!');</script>");

        }
        else
        {
            string enc = Encrypt(TextBox3.Text);
            if (CheckBox3.Checked == false && dd.Rows[0]["status"].ToString() == "approved")
            {
                b.data("insert into villagevote values('" + enc + "','" + DropDownList6.SelectedValue + "','" + DropDownList7.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + DropDownList9.SelectedValue + "','" + GridView6.SelectedValue + "')");
                b.data("update reg set votestatus='success'");
                int c = Convert.ToInt32(cc.Rows[0]["kcount"]);
                c += 1;
                b.data("update candidate set kcount='" + c + "' where cid='" + GridView6.SelectedValue + "'");
                Response.Write("<script>alert('You have cast your vote successfully..Thank you!!');</script>");

            }


            else if (CheckBox3.Checked == true && dd.Rows[0]["status"].ToString() == "approved")
            {
                b.data("insert into villagevote values('" + enc + "','" + DropDownList6.SelectedValue + "','" + DropDownList7.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + DropDownList9.SelectedValue + "','NOTA')");
                
                b.data("update reg set votestatus='success'");
                int c = Convert.ToInt32(cc.Rows[0]["kcount"]);
                c += 1;
                b.data("update candidate set kcount='" + c + "' where cid='" + GridView6.SelectedValue + "'");
                Response.Write("<script>alert('You have cast your vote successfully..Thank you!!');</script>");
            }
            if (dd.Rows[0]["status"].ToString() != "approved")
            {
                Response.Write("<script>alert('Voter not approved by admin');</script>");
            }
        }
    }
    

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox3.Checked == true)
        {
            Panel3.Visible = false;
        }
        if (CheckBox3.Checked == false)
        {
            Panel3.Visible = true;
        }
    }


    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox3.Text + "'");
        if (dd.Rows[0]["stateid"].ToString() != DropDownList6.SelectedValue)
        {
            Response.Write("<script>alert('Invalid State Selection');</script>");

        }
    }


    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox3.Text + "'");
        if (dd.Rows[0]["disid"].ToString() != DropDownList7.SelectedValue)
        {
            Response.Write("<script>alert('Invalid district Selection');</script>");

        }
    }


    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 v = new Class2();
        DataTable dd = v.select("select * from reg where votersid='" + TextBox3.Text + "'");
        if (dd.Rows[0]["villid"].ToString() != DropDownList8.SelectedValue)
        {
            Response.Write("<script>alert('Invalid village Selection');</script>");

        }
    }





    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class2 k = new Class2();

        DataTable dd5 = k.select("select electiondate from districtelectionn where districtname='" + DropDownList4.SelectedValue + "'");
        DateTime uu = Convert.ToDateTime(dd5.Rows[0]["electiondate"].ToString());
        if (DateTime.Now.Date > uu.Date)
        {
            Response.Write("<script>alert('Election date has exceeded');</script>");
        }
    }
}