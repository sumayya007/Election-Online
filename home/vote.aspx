<%@ Page Title="" Language="C#" MasterPageFile="~/home/home.master" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="home_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 472px;
        }
        .auto-style2 {
            width: 473px;
        }
        .auto-style3 {
            width: 473px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
            width: 447px;
        }
        .auto-style7 {
            width: 447px;
        }
        .auto-style8 {
            position: relative;
            left: 0px;
            top: 0px;
        }
        .auto-style9 {
            position: relative;
            display: block;
            margin-top: 10px;
            margin-bottom: 10px;
            left: 0px;
            top: 0px;
        }
        .auto-style10 {
            width: 473px;
            height: 71px;
        }
        .auto-style11 {
            height: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go to District Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False"/>

            <br />
            <br />
            <table align="center" class="nav-justified">
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Label ID="Label50" runat="server" Text="STATE ELECTION" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#0066FF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label51" runat="server" ForeColor="#FF9900" Text="Voters ID" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" CssClass="grid" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource5">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                <asp:BoundField DataField="aadhar" HeaderText="aadhar" SortExpression="aadhar" />
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString50 %>" SelectCommand="SELECT [name], [gender], [email], [dob], [address], [phone], [photo], [aadhar] FROM [reg] WHERE ([votersid] = @votersid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="votersid" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString46 %>" SelectCommand="SELECT [name], [gender], [email], [dob], [address], [phone], [photo], [aadhar] FROM [reg]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label52" runat="server" ForeColor="#FF9900" Text="State" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="statename" DataValueField="stateid" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString51 %>" SelectCommand="SELECT * FROM [state]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label53" runat="server" ForeColor="#FF9900" Text="Election date" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="electiondate" DataValueField="delectionid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString119 %>" SelectCommand="SELECT DISTINCT * FROM [districtelectionn]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label54" runat="server" ForeColor="#FF9900" Text="Vote for Candidate" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" CssClass="auto-style9"/>
                        <asp:Label ID="Label55" runat="server" ForeColor="#FFFF99" Text="Select this if you want to cast a NOTA vote"></asp:Label>
                        <asp:Panel ID="Panel1" runat="server">
                        <asp:GridView ID="GridView2" runat="server" CssClass="grid" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cid" DataSourceID="SqlDataSource4" AllowPaging="True">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                                <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                                <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' Height="150px" Width="150px" />
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
                            </asp:Panel>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString49 %>" SelectCommand="SELECT cid, candname, party, symbol FROM candidate WHERE (status = 'approved')  and (electiontype='State level')"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="Button5" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button5_Click"/>
                    </td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View2" runat="server">

            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Go to Village Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False"/>

            <br />
            <br />
            <table class="nav-justified">
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Label ID="Label56" runat="server" Text="DISTRICT ELECTION" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#0066FF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label57" runat="server" Text="Voters ID" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:GridView ID="GridView3" runat="server" CssClass="grid" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource6">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="votersid" HeaderText="votersid" SortExpression="votersid" />
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                <asp:BoundField DataField="aadhar" HeaderText="aadhar" SortExpression="aadhar" />
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
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString113 %>" SelectCommand="SELECT DISTINCT [name], [votersid], [gender], [email], [dob], [address], [phone], [photo], [aadhar] FROM [reg] WHERE ([votersid] = @votersid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox2" Name="votersid" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label58" runat="server" Text="State" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="statename" DataValueField="stateid" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString114 %>" SelectCommand="SELECT DISTINCT * FROM [state]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label59" runat="server" Text="District" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource8" DataTextField="districtname" DataValueField="disid" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString115 %>" SelectCommand="SELECT DISTINCT * FROM [district] WHERE ([stateid] = @stateid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList3" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label60" runat="server" Text="Election date" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="electiondate" DataValueField="delectionid" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString121 %>" SelectCommand="SELECT DISTINCT * FROM [districtelectionn]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label61" runat="server" Text="Vote for Candidate" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="checkbox" OnCheckedChanged="CheckBox2_CheckedChanged" AutoPostBack="True" />
                        &nbsp;<asp:Label ID="Label62" runat="server" ForeColor="#FFFF99" Text="Select this if you want to cast a NOTA vote"></asp:Label>
                        <br />
                        <asp:Panel ID="Panel2" runat="server">
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="grid" DataKeyNames="cid" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                                    <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                    <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image4" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' />
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
                            <br />
                            <br />
                            </asp:Panel>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString118 %>" SelectCommand="SELECT cid, candname, party, symbol FROM candidate WHERE (status = 'approved') AND (electiontype = 'District level')"></asp:SqlDataSource>
                            <br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="Button6" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button6_Click" />
                    </td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Go to State Election" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False"/>
            <br />
            <br />
            <table class="nav-justified">
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Label ID="Label63" runat="server" Text="VILLAGE ELECTION" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#0066FF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label64" runat="server" Text="Voters ID" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        &nbsp;<asp:GridView ID="GridView5" runat="server" CssClass="grid" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource11">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="votersid" HeaderText="votersid" SortExpression="votersid" />
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                <asp:BoundField DataField="aadhar" HeaderText="aadhar" SortExpression="aadhar" />
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
                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString122 %>" SelectCommand="SELECT DISTINCT [name], [votersid], [gender], [email], [dob], [address], [phone], [photo], [aadhar] FROM [reg] WHERE ([votersid] = @votersid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox3" Name="votersid" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label65" runat="server" Text="State" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource12" DataTextField="statename" DataValueField="stateid" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString123 %>" SelectCommand="SELECT DISTINCT * FROM [state]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label66" runat="server" Text="District" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource13" DataTextField="districtname" DataValueField="disid" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString124 %>" SelectCommand="SELECT DISTINCT * FROM [district] WHERE ([stateid] = @stateid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList6" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label67" runat="server" Text="Village" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource14" DataTextField="villagename" DataValueField="villid" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString125 %>" SelectCommand="SELECT DISTINCT * FROM [village] WHERE ([disid] = @disid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList7" Name="disid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label68" runat="server" Text="Election date" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource15" DataTextField="electiondate" DataValueField="velectionid" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString126 %>" SelectCommand="SELECT DISTINCT * FROM [villageelectionn]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label69" runat="server" Text="Vote for Candidate" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox3" runat="server" CssClass="checkbox" OnCheckedChanged="CheckBox3_CheckedChanged" AutoPostBack="True" />
                        <asp:Label ID="Label70" runat="server" ForeColor="#FFFF99" Text="Select this if you want to cast a NOTA vote"></asp:Label>
                        <br />
                        <asp:Panel ID="Panel3" runat="server">
                            <asp:GridView ID="GridView6" runat="server" CssClass="grid" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource16" DataKeyNames="cid">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="candname" HeaderText="candname" SortExpression="candname" />
                                    <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                                    <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image5" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' />
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
                            <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString127 %>" SelectCommand="SELECT cid, candname, party, symbol FROM candidate WHERE (status = 'approved') AND (electiontype = 'Village level')"></asp:SqlDataSource>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="Button7" runat="server" Text="Button" CssClass="btn btn-primary" OnClick="Button7_Click"/>
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
    <br />
</asp:Content>

