<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="user_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<script runat="server">


  
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        
        
    .auto-style2 {
        height: 44px;
    }
    .auto-style6 {
        height: 45px;
    }
        
        
        
        .auto-style7 {
            height: 35px;
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
 .mypanel
 {  height:150px;
    width:500px;
     border-radius:8px;
     
 }
        .auto-style18 {
            height: 44px;
            width: 264px;
        }
        .auto-style19 {
            height: 45px;
            width: 264px;
        }
        .auto-style20 {
            height: 44px;
            width: 124px;
        }
        .auto-style21 {
            height: 35px;
            width: 124px;
        }
        .auto-style22 {
            height: 44px;
            width: 92px;
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
     
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <p>
        <br />
    </p>
    <br />
    <br />
    <br />
    <br />
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>

        
    <table style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px " class="table abc" align="center"  >
        <tr>
            <td class="text-center">
                &nbsp;</td>
            <td colspan="4" class="text-center">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#333333" Text="Registration Form" Font-Bold="True" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style18">
                <asp:Label ID="Label2" runat="server" ForeColor="#FF9900" Text="Name"></asp:Label>
            </td>
            <td colspan="3" class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server"  CssClass=" transparent-input form-control "></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style18">
                <asp:Label ID="Label3" runat="server" ForeColor="#FF9900" Text="Voters ID"></asp:Label>
            </td>
            <td colspan="3" class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter your Voters ID</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style18">
                <asp:Label ID="Label4" runat="server" ForeColor="#FF9900" Text="Gender"></asp:Label>
                
            </td>
            
            <td colspan="3" class="auto-style2">
                
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"  CssClass="transparent-input radio" Font-Size="Medium" Font-Bold="true" ForeColor="White" >
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style18">
                <asp:Label ID="Label5" runat="server" ForeColor="#FF9900" Text="Email"></asp:Label>
            </td>
            <td colspan="3" class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter a valid email ID</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                </td>
            <td class="auto-style19">
                <asp:Label ID="Label6" runat="server" ForeColor="#FF9900" Text="Date Of Birth"></asp:Label>
            </td>
            <td colspan="3" class="auto-style6">
               
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
              
                      
              
                <asp:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox8">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                      
              
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style18">
                <asp:Label ID="Label7" runat="server" ForeColor="#FF9900" Text="Address"></asp:Label>
            </td>
            <td colspan="3" class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style18">
                <asp:Label ID="Label8" runat="server" ForeColor="#FF9900" Text="Phone Number"></asp:Label>
            </td>
            <td colspan="3" class="auto-style2">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="transparent-input form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ForeColor="Red">Enter the correct phone number</asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <table style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px " class="table abc" align="center">
         <tr>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="Label14" runat="server" ForeColor="#FF9900" Text="State"></asp:Label>
            </td>
            
            <td colspan="2" class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="transparent-input form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="statename" DataValueField="stateid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString29 %>" SelectCommand="SELECT * FROM [state]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="Label15" runat="server" ForeColor="#FF9900" Text="District"></asp:Label>
            </td>
            <td colspan="2" class="auto-style2">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="transparent-input form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="districtname" DataValueField="disid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString30 %>" SelectCommand="SELECT * FROM [district] WHERE ([stateid] = @stateid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="Label16" runat="server" ForeColor="#FF9900" Text="Village"></asp:Label>
            </td>
            <td colspan="2" class="auto-style2">
                <asp:DropDownList ID="DropDownList3" CssClass="transparent-input form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="villagename" DataValueField="villid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString31 %>" SelectCommand="SELECT * FROM [village] WHERE ([disid] = @disid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="disid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="DropDownList3" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        
        <tr>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="Label17" runat="server" ForeColor="#FF9900" Text="Election Name"></asp:Label>
            </td>
            <td colspan="2" class="auto-style2">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" CssClass="transparent-input dropdown">
                    <asp:ListItem>state level</asp:ListItem>
                    <asp:ListItem>district level</asp:ListItem>
                    <asp:ListItem>village level</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="DropDownList4" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
             </ContentTemplate>
    </asp:UpdatePanel>
    <table style="align-content:center;background-color:rgba(0,0,0,0.1);border-radius:8px " class="table abc" align="center">
        <tr>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style18">
                <asp:Label ID="Label12" runat="server" ForeColor="#FF9900" Text="Password"></asp:Label>
            </td>
            <td colspan="3" class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter a password</asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" CssClass="transparent-input form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                </td>
            <td class="auto-style18">
                <asp:Label ID="Label9" runat="server" ForeColor="#FF9900" Text="Photo"></asp:Label>
            </td>
            <td colspan="3" class="auto-style2">
                <asp:FileUpload ID="FileUpload1" runat="server"  />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Upload your photo</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                </td>
            <td class="auto-style2" colspan="3">
                <asp:Label ID="Label11" runat="server" ForeColor="#FF9900" Text="Upload Aadhar card"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload2" runat="server" Height="24px" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Upload your Adhaar card </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                </td>
            <td class="auto-style7" colspan="2">
                &nbsp;</td>
            <td colspan="2" class="auto-style7">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style7" colspan="2">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                 <asp:Panel ID="modPopup"  runat="server" Visible="True" style="display:none">
                    <div style="border:8px solid black;border-radius:8px;width:500px;height:150px;background-color:white;opacity:0.7">
                        <table>
                            
                            <tr>
                               
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" style="color:red;align-content:center" Text="Confirm data before final submission"></asp:Label> 
                                </td>
                                 
                            </tr>
                            
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    
                                    <asp:Button ID="Button2" runat="server" Text="Confirm" cssClass="btn btn-primary" OnClick="Button2_Click"/>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" cssClass="btn btn-primary" Text="cancel" OnClientClick="javascript:return closemodal();"/>
                                </td>
                            </tr>
                            
                        </table>
                       
                      

                        
                    </div>
                </asp:Panel>
                
                <asp:ModalPopupExtender ID="mod" runat="server" Enabled="True" TargetControlID="Button4" PopupControlID="modPopup" BehaviorID="modpop"></asp:ModalPopupExtender>
                <asp:Button ID="Button4" runat="server" Text="Submit"    OnClientClick="javascript:return mshow();"/>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                <asp:Label ID="Label13" runat="server" Font-Size="Small" ForeColor="Red" Text="Fields marked with (*) should not be left blank"></asp:Label>
            </td>
            <td class="auto-style7" colspan="2">&nbsp;</td>
        </tr>
       
        </table>
           
<%--</ContentTemplate>
    </asp:UpdatePanel>--%>
    

    
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    </asp:Content>


