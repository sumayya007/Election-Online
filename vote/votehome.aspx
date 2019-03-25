<%@ Page Title="" Language="C#" MasterPageFile="~/vote/vote.master" AutoEventWireup="true" CodeFile="votehome.aspx.cs" Inherits="vote_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server" >
         
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="Welcome User!!"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#009900" Text="You can view Candidate Profiles here.."></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cid" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                    <asp:BoundField DataField="votersid" HeaderText="votersid" SortExpression="votersid" />
                    <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                    <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="slogan" HeaderText="slogan" SortExpression="slogan" />
                    <asp:TemplateField HeaderText="manifesto" SortExpression="manifesto">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("manifesto") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl='<%# "~/home/myimages/"+Eval("manifesto") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Preview">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("mid") %>' Text="Preview" OnClick="LinkButton1_Click"></asp:LinkButton>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString61 %>" SelectCommand="SELECT candidate.cid, candidate.candname, candidate.votersid, candidate.party, candidate.symbol, manifesto.mid, manifesto.slogan, manifesto.manifesto FROM candidate INNER JOIN manifesto ON candidate.votersid = manifesto.votersid"></asp:SqlDataSource>
         
        </asp:View>
        <asp:View ID="View2" runat="server" >

            <asp:Image ID="Image3" runat="server" Height="600px" Width="600px" />

            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Candidates List" style="background-color:deepskyblue;border-color:deepskyblue;color:white;border-radius:8px" />

        </asp:View>
    </asp:MultiView>
<br />
</asp:Content>

