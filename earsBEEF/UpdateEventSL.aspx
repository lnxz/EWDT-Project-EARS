<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudentSL.Master" AutoEventWireup="true" CodeBehind="UpdateEventSL.aspx.cs" Inherits="earsBEEF.UpdateEventSL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 427px;
        }
        .style4
        {
            width: 149px;
        }
        .style7
        {
            width: 1048px;
            height: 99px;
        }
        .style8
        {
            width: 380px;
        }
        .style9
        {
            width: 149px;
            }
        .style10
        {
            width: 149px;
            height: 31px;
        }
        .style11
        {
            width: 392px;
            height: 31px;
        }
        .style12
        {
            width: 208px;
        }
        .style13
        {
            width: 149px;
            height: 163px;
        }
        .style14
        {
            width: 392px;
            height: 163px;
        }
        .style15
        {
            width: 392px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <table style="width:88%;">
        <tr>
            <td class="style2" colspan="2">
                <strong>
                <br />
                </strong>
                <table style="width:274%;">
        <tr>
            <td class="style2" colspan="2">
                <strong>Create an Event</strong></td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <table style="width: 99%; height: 355px; margin-right: 138px;">
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style15">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Event Name:</td>
                        <td class="style15" align="left">
                            <asp:Label ID="lbName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            CCA involved:</td>
                        <td class="style15" align="left">
                            <asp:DropDownList ID="ddlCca" runat="server" Height="17px" Width="218px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Category:</td>
                        <td class="style15" align="left">
                            <asp:DropDownList ID="ddlCate" runat="server" Height="22px" Width="218px">
                            </asp:DropDownList>
                              &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9" valign="top">
                            Venue:</td>
                        <td class="style15" align="left">
                            <asp:TextBox ID="tbxVenue" runat="server" TextMode="MultiLine" Width="410px" 
                                Height="77px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" valign="top">
                            Description:</td>
                        <td class="style15" align="left">
                            <asp:TextBox ID="tbxDes" runat="server" Height="99px" TextMode="MultiLine" 
                                Width="411px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" valign="top">
                            Event Dates:</td>
                        <td class="style14" align="left" valign="top">
            &nbsp;<asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="76px" 
                                AutoPostBack="True">
                                <asp:ListItem Value="Month"></asp:ListItem>
                </asp:DropDownList>
                            /
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                           <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnAddDate" 
                                runat="server" Text="Add Date" />
                            
            &nbsp;&nbsp;<br />
                            <table style="width: 102%;">
                                <tr>
                                    <td class="style12">
                                        <asp:ListBox ID="lbDate" runat="server" Height="85px" Width="205px">
                                        </asp:ListBox>
                                    </td>
                                    <td align="left" valign="top">
                                        <asp:Button ID="btnRemove" runat="server" Text="Remove" Width="96px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Quota:</td>
                        <td class="style11" align="left">
                            <asp:TextBox ID="tbxQuota" runat="server" Width="143px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="tbxQuota" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Registration Starts:</td>
                        <td class="style15" align="left">
                &nbsp; <asp:DropDownList ID="DdlMonth0" runat="server" Height="22px" Width="87px" 
                                AutoPostBack="True" 
                                onselectedindexchanged="DdlMonth0_SelectedIndexChanged">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                <asp:DropDownList ID="DdlDay0" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                           <asp:DropDownList ID="DdlYear0" runat="server" Height="21px" Width="86px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList> &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Registration Ends:</td>
                        <td class="style15" align="left">
                &nbsp; <asp:DropDownList ID="DdlMonth1" runat="server" Height="22px" Width="86px" 
                                AutoPostBack="True" 
                                onselectedindexchanged="DdlMonth1_SelectedIndexChanged">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/
                <asp:DropDownList ID="DdlDay1" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                           <asp:DropDownList ID="DdlYear1" runat="server" Height="21px" Width="86px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList> &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" valign="top">
                            Registration Cost:</td>
                        <td class="style15" align="left" valign="top">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Free" GroupName="rc" />
&nbsp; &nbsp;
                            <asp:RadioButton ID="rbOthers" runat="server" GroupName="rc" Text="Others" />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="tbxDol" runat="server" Width="80px" Enabled="False"></asp:TextBox>
&nbsp; Dollars per student<br />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style8" valign="top">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="325px" />
                <br />
                <asp:Image ID="lmEvent" runat="server" Height="266px" Width="234px" />
                <br />
            </td>
        </tr>
        </table>
                <strong>
                <br />
                &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" onclick="btnConfirm_Click" 
                    Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                    onclick="btnCancel_Click" />
                <br />
</asp:Content>
