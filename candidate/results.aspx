<%@ Page Title="" Language="C#" MasterPageFile="~/candidate/candidate.master" AutoEventWireup="true" CodeFile="results.aspx.cs" Inherits="candidate_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 485px;
    }
    .auto-style2 {
        text-align: center;
        height: 35px;
    }
        .auto-style3 {
            width: 399px;
        }
        .auto-style5 {
            width: 1162px;
        }
        .auto-style6 {
            text-align: center;
            height: 47px;
        }
        .auto-style7 {
            text-align: center;
            height: 43px;
        }
        .auto-style8 {
            width: 660px;
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
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Button ID="Button1" runat="server" Text="Go to District Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False" OnClick="Button1_Click"/>
            <table class="nav-justified">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#993399" Text="State Election"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Expr1" HeaderText="Total votes" SortExpression="Expr1" />
                                <asp:BoundField DataField="candname" HeaderText="Candidate Name" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="Party" SortExpression="party" />
                                <asp:TemplateField HeaderText="Symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' Height="200px" Width="200px" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString129 %>" SelectCommand="SELECT SUM(kcount) AS Expr1, candname, party, symbol FROM candidate WHERE (electiontype = 'state level') GROUP BY candname, party, symbol ORDER BY Expr1 DESC"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="700px" Width="500px">
                            <series>
                                <asp:Series Name="Series1" XValueMember="candname" YValueMembers="Expr1" BackImageTransparentColor="Black" LabelBorderColor="Blue">
                                </asp:Series>
                            </series>
                            <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </chartareas>
                        </asp:Chart>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View2" runat="server">

            <asp:Button ID="Button2" runat="server" Text="Go to Village Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False" OnClick="Button2_Click"/>

            <br />
            <br />
            <table class="nav-justified">
                <tr>
                    <td class="text-center" colspan="4">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#993399" Text="District Election"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <Columns>
                                <asp:BoundField DataField="Expr1" HeaderText="Total Votes" ReadOnly="True" SortExpression="Expr1" />
                                <asp:BoundField DataField="candname" HeaderText="Candidate Name" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="Party" SortExpression="party" />
                                <asp:TemplateField HeaderText="Symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' Width="200px" />
                                        &nbsp;
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString130 %>" SelectCommand="SELECT SUM(kcount) AS Expr1, candname, party, symbol FROM candidate WHERE (electiontype = 'district level') GROUP BY candname, party, symbol ORDER BY Expr1 DESC"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="700px" Width="500px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="candname" YValueMembers="Expr1">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View3" runat="server">

            <asp:Button ID="Button3" runat="server" Text="Go to State Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False" OnClick="Button3_Click"/>

            <br />
            <br />
            <table class="nav-justified">
                <tr>
                    <td class="text-center" colspan="3">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#993399" Text="Village Election"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:BoundField DataField="Expr1" HeaderText="Total Votes" ReadOnly="True" SortExpression="Expr1" />
                                <asp:BoundField DataField="candname" HeaderText="Candidate Name" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="Party" SortExpression="party" />
                                <asp:TemplateField HeaderText="Symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' Width="200px" />
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
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString131 %>" SelectCommand="SELECT SUM(kcount) AS Expr1, candname, party, symbol FROM candidate WHERE (electiontype = 'village level') GROUP BY candname, party, symbol ORDER BY Expr1 DESC"></asp:SqlDataSource>
                    </td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Height="700px" Width="500px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="candname" YValueMembers="Expr1">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </td>
                   
                </tr>
            </table>

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
    <br />
    <br />
    <br />
</asp:Content>