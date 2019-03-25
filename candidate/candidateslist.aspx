<%@ Page Title="" Language="C#" MasterPageFile="~/candidate/candidate.master" AutoEventWireup="true" CodeFile="candidateslist.aspx.cs" Inherits="candidate_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 158px;
            height: 25px;
        }
        .auto-style3 {
        text-align: left;
        width: 391px;
            height: 25px;
        }
        .auto-style4 {
            text-align: left;
            height: 25px;
        }
        .auto-style5 {
            width: 158px;
        }
        .auto-style6 {
            width: 479px;
        }
        .auto-style7 {
            width: 479px;
            height: 22px;
        }
        .auto-style8 {
            height: 22px;
        }
        .auto-style9 {
            width: 477px;
        }
        .auto-style10 {
            width: 477px;
            height: 22px;
        }
        .auto-style11 {
            width: 477px;
            height: 27px;
        }
        .auto-style12 {
            height: 27px;
        }
        .auto-style13 {
            text-align: center;
            height: 79px;
        }
.abc{
     -webkit-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
-moz-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);

 } 
        .auto-style14 {
            position: relative;
            left: 0px;
            top: 0px;
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
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go to District Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False"/> 
            <br />
            <table class="table abc" style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px ">
                <tr>
                    <td class="text-center" colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="View Candidate details "></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="STATE ELECTION"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FF9900" Text="Select State"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="stateid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString101 %>" SelectCommand="SELECT DISTINCT * FROM [state]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF9900" Text="Select Election name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown" AutoPostBack="True">
                            <asp:ListItem>Election for MLA</asp:ListItem>
                            <asp:ListItem>Election for MP</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="Button4" runat="server" BackColor="#00CCFF" Text="Search" OnClick="Button4_Click" CssClass="btn btn-primary" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" CssClass="grid" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString102 %>" SelectCommand="SELECT DISTINCT candname, party, symbol FROM candidate WHERE (statename = @statename) AND (electionname = @electionname)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="statename" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="electionname" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />

        </asp:View>
        <asp:View ID="View2" runat="server">

            <asp:Button ID="Button2" runat="server" Text="Go to Village Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False" OnClick="Button2_Click"/>

            <br />
            <br />
            <table class="nav-justified abc" style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px ">
                <tr>
                    <td class="auto-style13" colspan="3">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="View Candidate details "></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="DISTRICT ELECTION"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" ForeColor="#FF9900" Text="Select  State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="statename" DataValueField="stateid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString137 %>" SelectCommand="SELECT DISTINCT stateid, statename FROM state"></asp:SqlDataSource>
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label8" runat="server" ForeColor="#FF9900" Text="Select District"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style14" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="districtname" DataValueField="disid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString140 %>" SelectCommand="SELECT DISTINCT disid, stateid, districtname FROM district WHERE (stateid = @stateid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList3" Name="stateid" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label14" runat="server" ForeColor="#FF9900" Text="Select Election Name"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="auto-style14">
                            <asp:ListItem>Election for coorporation</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Search" />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView2" runat="server" CssClass="grid" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("symbol") %>' />
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString105 %>" SelectCommand="SELECT DISTINCT [candname], [party], [symbol] FROM [candidate] WHERE (([statename] = @statename) AND ([districtname] = @districtname) AND ([electionname] = @electionname))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList3" Name="statename" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList4" Name="districtname" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList8" Name="electionname" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View3" runat="server">

            <asp:Button ID="Button3" runat="server" Text="Go to State Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False" OnClick="Button3_Click"/>

            <br />
            <table class="nav-justified abc" style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px ">
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#0066FF" Text="View Candidate Details"></asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="VILLAGE ELECTION"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label11" runat="server" ForeColor="#FF9966" Text="Select  State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="statename" DataValueField="stateid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString144 %>" SelectCommand="SELECT DISTINCT * FROM [state]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label12" runat="server" ForeColor="#FF9966" Text="Select  District"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="districtname" DataValueField="disid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString145 %>" SelectCommand="SELECT DISTINCT * FROM [district] WHERE ([stateid] = @stateid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList5" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label13" runat="server" ForeColor="#FF9966" Text="Select  Village"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdown" DataSourceID="SqlDataSource8" DataTextField="villagename" DataValueField="villid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString146 %>" SelectCommand="SELECT DISTINCT * FROM [village] WHERE ([disid] = @disid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList6" Name="disid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label15" runat="server" ForeColor="#FF9966" Text="Select Election Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="auto-style14">
                            <asp:ListItem>Election for panchayat</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <asp:Button ID="Button6" runat="server" Text="Search" OnClick="Button6_Click" CssClass="btn btn-primary"/>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView3" runat="server" CssClass="grid" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Visible="False" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                            <Columns>
                                <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' />
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
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
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
</asp:Content>

