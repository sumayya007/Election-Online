<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="district.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 482px;
    }
    .abc{
     -webkit-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
-moz-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);

 }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<table class="nav-justified abc" style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px " >
    <tr>
        <td class="text-center" colspan="2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#3399FF" Text="District details"></asp:Label>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" ForeColor="#33CCFF" Text="Select State"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="stateid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString7 %>" SelectCommand="SELECT * FROM [state]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" ForeColor="#33CCFF" Text="Add District"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-center" colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" CssClass="btn btn-primary"/>
        </td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

