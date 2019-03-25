<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="candidatereg.aspx.cs" Inherits="user_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
            width: 185px;
            height: 22px;
        }
    .auto-style2 {
            width: 185px;
            height: 24px;
        }
    .auto-style3 {
            height: 24px;
            width: 309px;
        }
        .auto-style6 {
            text-align: center;
            height: 14px;
        }
        .auto-style7 {
            width: 185px;
            height: 21px;
        }
        .auto-style9 {
            width: 185px;
            height: 15px;
        }
        .auto-style10 {
            height: 15px;
            width: 309px;
        }
        .auto-style11 {
            width: 185px;
            height: 50px;
        }
        .auto-style12 {
            height: 50px;
            width: 309px;
        }
        .auto-style15 {
            width: 185px;
            height: 51px;
        }
        .auto-style16 {
            height: 51px;
            width: 309px;
        }
        .auto-style17 {
            height: 22px;
            width: 309px;
        }
        .auto-style18 {
            width: 185px;
            height: 8px;
        }
        .auto-style19 {
            height: 8px;
            width: 309px;
        }
        .auto-style20 {
            width: 185px;
        }
        input.transparent-input {
    border: 2px aqua solid !important
}

.transparent-input {
    background-color: rgba(0, 0, 0, 0.3);
    border: 2px aqua solid;
    color:aqua;
    font-size:large;
}

input.transparent-input {
    background-color: rgba(0,0,0,0.3) !important;
    border: 2px aqua solid !important;
    color:aqua;
    font-size:large;
}
input.transparent-input:focus {
    background-color: black !important;
    border: 2px aqua solid !important;
    color:white;
    font-size:large;
}
        .abc{
     -webkit-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
    -moz-box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);
    box-shadow: -9px 10px 18px -1px rgba(0,0,0,0.75);

 }    
        .auto-style29 {
            text-align: center;
            height: 14px;
            width: 309px;
        }
        .auto-style30 {
            height: 21px;
            width: 309px;
        }
        .auto-style32 {
            text-align: center;
            width: 309px;
        }
        .auto-style33 {
            width: 309px;
        }
        .auto-style34 {
            height: 21px;
            width: 302px;
        }
        .auto-style35 {
            height: 15px;
            width: 302px;
        }
        .auto-style36 {
            height: 50px;
            width: 302px;
        }
        .auto-style37 {
            width: 302px;
        }
        .auto-style38 {
            height: 51px;
            width: 302px;
        }
        .auto-style39 {
            height: 22px;
            width: 302px;
        }
        .auto-style40 {
            height: 8px;
            width: 302px;
        }
        .auto-style41 {
            height: 24px;
            width: 302px;
        }
    </style>
<script type="text/javascript">
        function mshow() {

            if ($find("modpop").visibility = false) {
                var modal1 = $find("modpop");
                modal1.show();
                return false;
            }


        }
        function closemodal() {
            if ($find("modpop").visibility = true) {
                var modal1 = $find("modpop");
                modal1.hide();
                return false;
            }

        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <br />
</p>
<br />
<br />
    <table class="nav-justified">
        <tr>
            <td class="text-center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#3366FF" Text="Candidate Registration"></asp:Label>
            </td>
        </tr>
    </table>
<br />
<br />
<table   align="center" class="nav-justified abc" style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px "  >
    <tr>
        <td class="auto-style6" colspan="2">
            &nbsp;</td>
        <td class="auto-style29">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="Label2" runat="server" ForeColor="#FF9966" Text="Name"></asp:Label>
        </td>
        <td class="auto-style34">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="transparent-input form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style30">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label3" runat="server" ForeColor="#FF9966" Text="Voters ID"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="transparent-input form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label4" runat="server" ForeColor="#FF9966" Text="Party"></asp:Label>
        </td>
        <td class="auto-style36">
            
            <asp:TextBox ID="TextBox6" runat="server" CssClass="transparent-input form-control" ></asp:TextBox>

        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        </td>
        <td class="auto-style12">
            
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20">
            &nbsp;</td>
        <td class="auto-style37">
            <br />
        </td>
        <td class="auto-style33">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">
            <asp:Label ID="Label6" runat="server" ForeColor="#FF9966" Text="Nominee1 "></asp:Label>
        </td>
        <td class="auto-style38">
            <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True" OnTextChanged="TextBox7_TextChanged" CssClass="transparent-input form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;
        </td>
        <td class="auto-style16">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label14" runat="server" ForeColor="#FF9966" Text="Name"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox10" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label15" runat="server" ForeColor="#FF9966" Text="Gender"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox11" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label16" runat="server" ForeColor="#FF9966" Text="Email"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox12" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label17" runat="server" ForeColor="#FF9966" Text="Date of Birth"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox13" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label18" runat="server" ForeColor="#FF9966" Text="Address"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox14" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label19" runat="server" ForeColor="#FF9966" Text="Phone"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox15" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label20" runat="server" ForeColor="#FF9966" Text="Photo"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:Image ID="Image1" runat="server" Height="150px" Width="150px"  />
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style38">
            <asp:Label ID="Label21" runat="server" ForeColor="#FF9966" Text="Adhaar"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="Label7" runat="server" ForeColor="#FF9966" Text="Nominee2 "></asp:Label>
        </td>
        <td class="auto-style34">
            <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged" CssClass="transparent-input form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style30">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label22" runat="server" Text="Name" ForeColor="#FF9966"></asp:Label>
        </td>
        <td class="auto-style30">
            <asp:TextBox ID="TextBox16" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label23" runat="server" Text="Gender" ForeColor="#FF9966"></asp:Label>
        </td>
        <td class="auto-style33">
            <asp:TextBox ID="TextBox17" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label24" runat="server" Text="Email" ForeColor="#FF9966"></asp:Label>
        </td>
        <td class="auto-style33">
            <asp:TextBox ID="TextBox18" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label25" runat="server" Text="Date of Birth" ForeColor="#FF9966"></asp:Label>
        </td>
        <td class="auto-style33">
            <asp:TextBox ID="TextBox19" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label26" runat="server" Text="Address" ForeColor="#FF9966"></asp:Label>
        </td>
        <td class="auto-style33">
            <asp:TextBox ID="TextBox20" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label27" runat="server" Text="Phone" ForeColor="#FF9966"></asp:Label>
        </td>
        <td class="auto-style33">
            <asp:TextBox ID="TextBox21" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label28" runat="server" Text="Photo" ForeColor="#FF9966"></asp:Label>
        </td>
        <td class="auto-style33">
            <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style34">
            <asp:Label ID="Label29" runat="server" Text="Aadhar" ForeColor="#FF9966"></asp:Label>
        </td>
        <td>

            <asp:Image ID="Image5" runat="server" Height="150px" Width="150px" />

        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label8" runat="server" ForeColor="#FF9966" Text="Annual Income"></asp:Label>
        </td>
        <td class="auto-style39">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="transparent-input form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TextBox5">Enter the annual income</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label30" runat="server" ForeColor="#FF9966" Text="Election Type"></asp:Label>
        </td>
        <td class="auto-style39">
            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" CssClass="transparent-input form-control" >
                <asp:ListItem>State level</asp:ListItem>
                <asp:ListItem>District level</asp:ListItem>
                <asp:ListItem>Village level</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="DropDownList6" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Select the Election type</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label9" runat="server" ForeColor="#FF9966" Text="Election Name"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:DropDownList ID="DropDownList2" runat="server"  DataTextField="electionname" DataValueField="electionname" AutoPostBack="True" CssClass="transparent-input form-control" >
                <asp:ListItem>Election for MLA</asp:ListItem>
                <asp:ListItem>Election for MP</asp:ListItem>
                <asp:ListItem>Election for coorporation</asp:ListItem>
                <asp:ListItem>Election for panchayat</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="DropDownList2">Enter the name of the election</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style18">
            <asp:Label ID="Label11" runat="server" ForeColor="#FF9966" Text="State"></asp:Label>
        </td>
        <td class="auto-style40">
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="stateid" AutoPostBack="True" CssClass="transparent-input form-control" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString95 %>" SelectCommand="SELECT DISTINCT * FROM [state]"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="DropDownList4">Enter the state</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style18">
            <asp:Label ID="Label12" runat="server" ForeColor="#FF9966" Text="District"></asp:Label>
        </td>
        <td class="auto-style40">
            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="districtname" DataValueField="disid" CssClass="transparent-input form-control" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString98 %>" SelectCommand="SELECT DISTINCT * FROM [district] WHERE ([stateid] = @stateid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="stateid" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label10" runat="server" ForeColor="#FF9966" Text="Village"></asp:Label>
        </td>
        <td class="auto-style41">
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="villagename" DataValueField="villid" AutoPostBack="True" CssClass="transparent-input form-control" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString99 %>" SelectCommand="SELECT DISTINCT * FROM [village] WHERE ([disid] = @disid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList5" Name="disid" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="DropDownList3">Enter the village</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label13" runat="server" ForeColor="#FF9966" Text="Password"></asp:Label>
        </td>
        <td class="auto-style41">
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" CssClass="transparent-input form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter the password</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" ForeColor="#FF9966" Text="Symbol"></asp:Label>
        </td>
        <td class="auto-style41">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="transparent-input form-control"/>
            </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" colspan="2">
             <asp:Panel ID="modPopup"  runat="server" Visible="True" style="display:none">
                    <div style="border:8px solid black;border-radius:8px;width:500px;height:150px;background-color:white;opacity:0.7">
                        <table>
                            <tr>
                                <td>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                               
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label31" runat="server" style="color:red;align-content:center" Text="Confirm data before final submission"></asp:Label> 
                                </td>
                                 
                            </tr>
                            <tr>
                                <td>
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Button ID="Button1" cssClass="btn btn-primary" runat ="server" Text="confirm" onClick="Button1_Click" />
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" cssClass="btn btn-primary" Text="cancel" OnClientClick="javascript:return closemodal();"/>
                                </td>
                            </tr>
                            
                        </table>
                       
                      

                        
                    </div>
                </asp:Panel>
            
                <asp:ModalPopupExtender ID="mod" runat="server" Enabled="True" TargetControlID="Button2" PopupControlID="modPopup" BehaviorID="modpop"></asp:ModalPopupExtender>
                <asp:Button ID="Button2" runat="server" Text="Submit"    OnClientClick="javascript:return mshow();"/>
                
           
        </td>
        <td class="auto-style32">
            &nbsp;</td>
    </tr>
</table>
<br />
    <br />

</asp:Content>

