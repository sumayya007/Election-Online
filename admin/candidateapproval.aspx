<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="candidateapproval.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .abc{

            overflow:scroll;
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
    <div class="abc" style=" height:100%;width:100%">
<table class="table">
    <tr>
        <td class="text-center" colspan="2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="Admin Approval for Candidates"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="position:relative;left:-120px">
            <asp:GridView  ID="GridView1" runat="server"  CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cid" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="cid" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="candname" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" HeaderText="candname" SortExpression="candname" />
                    <asp:BoundField DataField="votersid" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" HeaderText="votersid" SortExpression="votersid" />
                    <asp:BoundField DataField="party" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" HeaderText="party" SortExpression="party" />
                    <asp:TemplateField HeaderText="symbol" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="symbol">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' Height="40px" Width="40px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="nomid1" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"  HeaderText="nomid1" SortExpression="nomid1" />
                    <asp:BoundField DataField="nomid1"  HeaderText="nomid1" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="nomid1" />
                    <asp:BoundField DataField="nomid2" HeaderText="nomid2" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="nomid2" />
                    <asp:BoundField DataField="annualincome" HeaderText="annualincome" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="annualincome" />
                    <asp:BoundField DataField="electionname" HeaderText="electionname" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="electionname" />
                    <asp:BoundField DataField="statename" HeaderText="statename" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="statename" />
                    <asp:BoundField DataField="districtname" HeaderText="districtname" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="districtname" />
                    <asp:BoundField DataField="villagename" HeaderText="villagename" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="villagename" />
                    <asp:BoundField DataField="password" HeaderText="password" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="password" />
                    <asp:BoundField DataField="status" HeaderText="status" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" SortExpression="status" />
                    <asp:ButtonField CommandName="abc" HeaderText="Approve" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" Text="Approve" />
                    <asp:ButtonField CommandName="def" HeaderText="Reject" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" Text="Reject" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString83 %>" SelectCommand="SELECT DISTINCT [cid], [candname], [votersid], [party], [symbol], [nomid1], [nomid2], [annualincome], [electionname], [statename], [districtname], [villagename], [password], [status] FROM [candidate]">
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
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

