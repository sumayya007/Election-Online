<%@ Page Title="" Language="C#" MasterPageFile="~/home/home.master" AutoEventWireup="true" CodeFile="viewcandidates.aspx.cs" Inherits="home_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <table class="nav-justified">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Blue" Text="View Candidate details"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="grid" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl='<%# "`/home/myimages/"+Eval("symbol") %>' Width="150px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="manifesto" SortExpression="manifesto">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("manifesto") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# "~/home/myimages/"+Eval("manifesto") %>' Width="150px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Preview">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("manifesto") %>' Font-Underline="True" Text="Preview"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString160 %>" SelectCommand="SELECT candidate.candname, candidate.party, candidate.symbol, manifesto.manifesto FROM candidate INNER JOIN manifesto ON candidate.votersid = manifesto.votersid"></asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">

            <asp:Image ID="Image1" runat="server" Height="600px" Width="600px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" ForeColor="#00CCFF" OnClick="Button1_Click" Text="Go back to Candidates List" CssClass="btn btn-primary" />

        </asp:View>
    </asp:MultiView>
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

