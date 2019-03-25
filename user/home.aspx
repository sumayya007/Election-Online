<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <marquee scrolldirection="left">
<asp:Label ID="Label1" runat="server" Text="Last date for user registration is June 05 " Font-Underline="True" ForeColor="Red" Font-Size="X-Large"></asp:Label></marquee>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table align="center" class="nav-justified">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#CC0099" BorderStyle="Ridge" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0099" PostBackUrl="~/user/register.aspx">USER REGISTRATION</asp:LinkButton>
            </td>
            <td class="auto-style2">
                <asp:LinkButton ID="LinkButton3" runat="server" BorderColor="#CC0099" BorderStyle="Ridge" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0099" Width="200px" PostBackUrl="~/user/candidatereg.aspx">CANDIDATE REGISTRATION</asp:LinkButton>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
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
</asp:Content>