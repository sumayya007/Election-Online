<%@ Page Title="" Language="C#" MasterPageFile="~/candidate/candidate.master" AutoEventWireup="true" CodeFile="candidatehome.aspx.cs" Inherits="candidate_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>
        .abc{
     -webkit-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
-moz-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);

 }  
        .auto-style1 {
            position: relative;
            clear: both;
            margin: 0 auto;
            padding: 1em 0 4em;
            max-width: 1000px;
            list-style: none;
            text-align: center;
            left: 7px;
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
    <table class="nav-justified abc" style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px ">
        <tr>
            <td class="text-center">
                <asp:Label ID="Label1" runat="server" Text="Manage Account Details" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="#3333FF" Text="Enter your Voters ID" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" AutoPostBack="True" ></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#3333FF" Text="Personal Details:" Font-Bold="True"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="cid" >
                    <Columns>
                        <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" InsertVisible="False" ReadOnly="True" />
                        <asp:TemplateField HeaderText="candname" SortExpression="candname">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("candname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("candname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="votersid" HeaderText="votersid" SortExpression="votersid" />
                        <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                        <asp:TemplateField HeaderText="symbol" SortExpression="symbol">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("symbol") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/home/myimages"+Eval("symbol") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="nomid1" HeaderText="nomid1" SortExpression="nomid1" />
                        <asp:BoundField DataField="nomid2" HeaderText="nomid2" SortExpression="nomid2" />
<asp:BoundField DataField="annualincome" HeaderText="annualincome" SortExpression="annualincome"></asp:BoundField>
                        <asp:BoundField DataField="electiontype" HeaderText="electiontype" SortExpression="electiontype" />
                        <asp:BoundField DataField="electionname" HeaderText="electionname" SortExpression="electionname" />
                        <asp:BoundField DataField="statename" HeaderText="statename" SortExpression="statename" />
                        <asp:BoundField DataField="districtname" HeaderText="districtname" SortExpression="districtname" />
                        <asp:BoundField DataField="villagename" HeaderText="villagename" SortExpression="villagename" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:CommandField ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString142 %>" SelectCommand="SELECT DISTINCT [cid], [candname], [votersid], [party], [symbol], [nomid1], [nomid2], [annualincome], [electiontype], [electionname], [statename], [districtname], [villagename], [password] FROM [candidate] WHERE ([votersid] = @votersid)"
                    UpdateCommand="update candidate set candname=@candname where votersid=@votersid">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox3" Name="votersid" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <%--<td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cid" DataSourceID="SqlDataSource1">
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
                                <asp:Image ID="Image4" runat="server" ImageUrl='<%# "~/home/myimages/"+Eval("symbol") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="nomid1" HeaderText="nomid1" SortExpression="nomid1" />
                        <asp:BoundField DataField="nomid2" HeaderText="nomid2" SortExpression="nomid2" />
                        <asp:BoundField DataField="annualincome" HeaderText="annualincome" SortExpression="annualincome" />
                        <asp:BoundField DataField="electionid" HeaderText="electionid" SortExpression="electionid" />
                        <asp:BoundField DataField="stateid" HeaderText="stateid" SortExpression="stateid" />
                        <asp:BoundField DataField="disid" HeaderText="disid" SortExpression="disid" />
                        <asp:BoundField DataField="villid" HeaderText="villid" SortExpression="villid" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString56 %>" SelectCommand="SELECT candidate.cid, candidate.candname, candidate.votersid, candidate.party, candidate.symbol, candidate.nomid1, candidate.nomid2, candidate.annualincome, candidate.electionid, candidate.stateid, candidate.disid, candidate.villid, candidate.password, reg.photo FROM candidate INNER JOIN reg ON candidate.votersid = reg.votersid WHERE (candidate.votersid = @votersid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="votersid" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>--%>
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
    <br />
    <br />
    <br />
</asp:Content>

