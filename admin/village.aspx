<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="village.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 467px;
        }
        .auto-style2 {
            width: 467px;
            height: 46px;
        }
        .auto-style3 {
            height: 46px;
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
    <br />
    <br />
    <br />
    <br />
    <table class="nav-justified abc" style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px ">
        <tr>
            <td class="text-center" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#0099FF" Text="VILLAGE DETAILS"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" ForeColor="#33CCFF" Text="Select State"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="stateid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString10 %>" SelectCommand="SELECT * FROM [state]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" ForeColor="#33CCFF" Text="Select District"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="districtname" DataValueField="disid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString13 %>" SelectCommand="SELECT * FROM [district] WHERE ([stateid] = @stateid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" ForeColor="#33CCFF" Text="Add Village"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Submit" />
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
</asp:Content>

