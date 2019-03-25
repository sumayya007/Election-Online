<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="userapproval.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <table class="nav-justified">
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="Admin Approval for Users"></asp:Label>
                &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CssClass="grid" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="rid" DataSourceID="SqlDataSource2" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="rid" HeaderText="rid" InsertVisible="False" ReadOnly="True" SortExpression="rid" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="votersid" HeaderText="votersid" SortExpression="votersid" />
                            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:TemplateField HeaderText="photo" SortExpression="photo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("photo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/home/myimages/"+Eval("photo") %>' Width="100px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="aadhar" SortExpression="aadhar">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("aadhar") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# "~/home/myimages/"+Eval("aadhar") %>' Width="100px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="stateid" HeaderText="stateid" SortExpression="stateid" />
                            <asp:BoundField DataField="disid" HeaderText="disid" SortExpression="disid" />
                            <asp:BoundField DataField="villid" HeaderText="villid" SortExpression="villid" />
                            <asp:ButtonField CommandName="abc" HeaderText="Approve" Text="Approve">
                            <ControlStyle Font-Underline="True" />
                            </asp:ButtonField>
                            <asp:ButtonField CommandName="def" HeaderText="Reject" Text="Reject">
                            <ControlStyle Font-Underline="True" />
                            </asp:ButtonField>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString53 %>" SelectCommand="SELECT [rid], [name], [votersid], [gender], [email], [dob], [address], [phone], [photo], [aadhar], [stateid], [disid], [villid] FROM [reg]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
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

