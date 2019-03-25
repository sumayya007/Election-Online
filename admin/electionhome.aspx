<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="electionhome.aspx.cs" Inherits="admin_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <p>
        <br />
    </p>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Button ID="Button1" runat="server" Text="Go to District  Election" OnClick="Button1_Click" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False"/>
            <br />
            <br />
            <table align="center" class="auto-style2" style="background-color:rgba(0,0,0,0.1);border-radius:10px">
                <tr>
                    <td class="text-center" colspan="2" style="padding: 5px">
                        <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#0066FF" Text="State Election Details"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label50" runat="server" ForeColor="#FF9900" Text="Election name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label51" runat="server" ForeColor="#FF9900" Text="State"></asp:Label>
                    </td>
                    <td>&nbsp; <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="statename">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString76 %>" SelectCommand="SELECT * FROM [state]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label54" runat="server" ForeColor="#FF9900" Text="Campaign start date"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox10_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox10"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label55" runat="server" ForeColor="#FF9900" Text="Campaign end date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"  Height="16px"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox11_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox11"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label56" runat="server" ForeColor="#FF9900" Text="Nomination start date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox12_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox12"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label57" runat="server" ForeColor="#FF9900" Text="Nomination end date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox13_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox13"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label58" runat="server" ForeColor="#FF9900" Text="Election date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="TextBox14" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox14_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox14"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox14" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label59" runat="server" ForeColor="#FF9900" Text="Result published on"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="TextBox15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox15_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox15"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label65" runat="server" ForeColor="#FF9900" Text="Last date for User Registration"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label60" runat="server" ForeColor="Red" Text="Fields marked with * cannot be left blank"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button8" runat="server" Font-Bold="True" Font-Italic="True" OnClick="Button8_Click1"  CssClass="btn btn-primary" Text="Submit" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Button ID="Button2" runat="server" Text="Go to Village Election" OnClick="Button2_Click" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False"/>
            <br />
            <table align="center" class="auto-style2" style="background-color:rgba(0,0,0,0.1);border-radius:10px">
                <tr>
                    <td class="text-center" colspan="2" style="padding: 5px">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#0066FF" Text="District Election Details"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label15" runat="server" ForeColor="#FF9900" Text="Election name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox16" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label61" runat="server" ForeColor="#FF9900" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="statename" DataValueField="stateid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString69 %>" SelectCommand="SELECT * FROM [state]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label17" runat="server" ForeColor="#FF9900" Text="District"></asp:Label>
                    </td>
                    <td><%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox17" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="districtname" DataValueField="disid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString42 %>" SelectCommand="SELECT * FROM [district] WHERE ([stateid] = @stateid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList9" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label18" runat="server" ForeColor="#FF9900" Text="Campaign start date"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox17" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox17_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox17"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label19" runat="server" ForeColor="#FF9900" Text="Campaign end date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox18_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox18"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label20" runat="server" ForeColor="#FF9900" Text="Nomination start date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox19" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox19_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox19"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label21" runat="server" ForeColor="#FF9900" Text="Nomination end date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox20_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox20"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label22" runat="server" ForeColor="#FF9900" Text="Election date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox21" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox21_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox21"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label23" runat="server" ForeColor="#FF9900" Text="Result published on"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox22" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox22_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox22"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label64" runat="server" ForeColor="#FF9900" Text="Last date for User Registration"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox30" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="Fields marked with * cannot be left blank"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Italic="True" OnClick="Button5_Click1" CssClass="btn btn-primary" Text="Submit" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Button ID="Button3" runat="server" Text="Go to State Election" OnClick="Button3_Click" style="background-color:deeppink;border-color:deeppink;color:white;border-radius:8px" CausesValidation="False"/>
            <br />
            <br />
            <table align="center" class="auto-style2" style="background-color:rgba(0,0,0,0.1);border-radius:10px">
                <tr>
                    <td class="text-center" colspan="2" style="padding: 5px">
                        <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#0066FF" Text="Village Election Details"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label38" runat="server" ForeColor="#FF9900" Text="Election name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox23" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label62" runat="server" ForeColor="#FF9900" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="statename" DataValueField="stateid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString70 %>" SelectCommand="SELECT * FROM [state]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label63" runat="server" ForeColor="#FF9900" Text="District"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="districtname" DataValueField="disid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString71 %>" SelectCommand="SELECT * FROM [district] WHERE ([stateid] = @stateid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList10" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label41" runat="server" ForeColor="#FF9900" Text="Village"></asp:Label>
                    </td>
                    <td><%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox24" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="dropdown" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="villagename" DataValueField="villid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString72 %>" SelectCommand="SELECT * FROM [village] WHERE ([disid] = @disid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList11" Name="disid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label42" runat="server" ForeColor="#FF9900" Text="Campaign start date"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox24" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox24_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox24"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label43" runat="server" ForeColor="#FF9900" Text="Campaign end date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox25" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox25_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox25"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label44" runat="server" ForeColor="#FF9900" Text="Nomination start date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox26" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox26_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox26"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label45" runat="server" ForeColor="#FF9900" Text="Nomination end date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox27" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox27_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox27"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label46" runat="server" ForeColor="#FF9900" Text="Election date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox28" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox28_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox28"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label47" runat="server" ForeColor="#FF9900" Text="Result published on"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox29" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:TextBox ID="TextBox29" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox29_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox29"></asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label66" runat="server" Text="Last date for User Registration" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox32" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label48" runat="server" ForeColor="Red" Text="Fields marked with * cannot be left blank"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Font-Bold="True" Font-Italic="True" OnClick="Button7_Click1" CssClass="btn btn-primary" Text="Submit" CausesValidation="False" />
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

