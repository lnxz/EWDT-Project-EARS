<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddEventForm.aspx.cs" Inherits="earsBEEF.AddEventForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        
        .style14
        {
            width: 421px;
            height: 38px;
        }
        .style15
        {
            width: 500px;
            height: 38px;
        }
        .style16
        {
            height: 38px;
        }
        .style17
        {
            width: 439px;
            height: 40px;
        }
        .style18
        {
            width: 500px;
        }
        .style19
        {
            height: 52px;
        }
        .style20
        {
            width: 500px;
            height: 52px;
        }
        .style21
        {
            height: 28px;
        }
        .style22
        {
            width: 500px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style2" colspan="2">
                <strong>Create an Event</strong></td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" rowspan="10">
                <table style="width: 100%; height: 355px;">
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Event Name:</td>
                        <td class="style18" align="left">
                            <asp:TextBox ID="tbxName" runat="server" Width="224px" 
                                ontextchanged="tbxName_TextChanged"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            CCA involved:</td>
                        <td class="style18" align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="218px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Category:</td>
                        <td class="style18" align="left">
                            <asp:DropDownList ID="ddlCate" runat="server" Height="22px" Width="218px">
                            </asp:DropDownList>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Button ID="Button1" runat="server" Text="Add Category" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Venue:</td>
                        <td class="style18" rowspan="2" align="left">
                            <asp:TextBox ID="tbxVenue" runat="server" TextMode="MultiLine" Width="219px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9" valign="top">
                            Description:</td>
                        <td class="style18" align="left">
                            <asp:TextBox ID="tbxDes" runat="server" Height="112px" TextMode="MultiLine" 
                                Width="350px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9" valign="top">
                            Event Dates:</td>
                        <td class="style18" align="left">
            &nbsp;<asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="76px" 
                                AutoPostBack="True" onselectedindexchanged="DdlMonth_SelectedIndexChanged">
                                <asp:ListItem Value="Month"></asp:ListItem>
                </asp:DropDownList>
                            /
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                           <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Button ID="Button2" runat="server" Text="Add Date" 
                                onclick="Button2_Click" CausesValidation="False" />
                            
            &nbsp;&nbsp;<br />
                                <asp:Label ID="Label1" runat="server">Please Add Event Dates</asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Quota:</td>
                        <td class="style18" align="left">
                            <asp:TextBox ID="tbxQuota" runat="server" Width="143px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="tbxQuota" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style12">
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            Registration Starts:</td>
                        <td class="style22" align="left">
                &nbsp; <asp:DropDownList ID="DdlMonth0" runat="server" Height="22px" Width="76px" 
                                AutoPostBack="True" onselectedindexchanged="DdlMonth0_SelectedIndexChanged">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                <asp:DropDownList ID="DdlDay0" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                           <asp:DropDownList ID="DdlYear0" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style21">
                            </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Registration Ends:</td>
                        <td class="style15" align="left">
                &nbsp; <asp:DropDownList ID="DdlMonth1" runat="server" Height="22px" Width="76px" AutoPostBack="True" 
                                onselectedindexchanged="DdlMonth1_SelectedIndexChanged">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/
                <asp:DropDownList ID="DdlDay1" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                           <asp:DropDownList ID="DdlYear1" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style16">
                            </td>
                    </tr>
                    <tr>
                        <td class="style19" valign="top">
                            Registration Cost:</td>
                        <td class="style20" align="left" valign="top">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Free" />
&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Others" />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="tbxDol" runat="server" Width="80px"></asp:TextBox>
&nbsp; Dollars per student<br />
                        </td>
                        <td class="style19">
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style3" valign="top">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="220px" />
                <br />
                <asp:Image ID="lmEvent" runat="server" Height="173px" Width="176px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Button ID="btnConfirm" runat="server" style="text-align: right" 
                    Text="Confirm" onclick="btnConfirm_Click" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
