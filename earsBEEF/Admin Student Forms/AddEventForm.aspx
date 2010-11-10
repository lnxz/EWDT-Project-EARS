<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddEventForm.aspx.cs" Inherits="earsBEEF.AddEventForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 440px;
        }
        .style3
        {
            width: 439px;
        }
        .style4
        {
            width: 438px;
        }
        .style5
        {
            width: 434px;
        }
        .style6
        {
            width: 433px;
            height: 30px;
        }
        .style7
        {
            width: 431px;
            height: 30px;
        }
        .style8
        {
            width: 427px;
            height: 30px;
        }
        .style9
        {
            width: 421px;
        }
        .style10
        {
            width: 415px;
        }
        .style11
        {
            width: 409px;
        }
        .style12
        {
            width: 404px;
        }
        .style13
        {
            width: 291px;
            text-align: right;
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
            <td class="style1">
                <table style="width: 100%; height: 355px;">
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Event Name:</td>
                        <td class="style5" align="left">
                            <asp:TextBox ID="tbxName" runat="server" Width="224px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            CCA involved:</td>
                        <td class="style5" align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="218px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Category:</td>
                        <td class="style5" align="left">
                            <asp:DropDownList ID="ddlCate" runat="server" Height="22px" Width="218px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Venue:</td>
                        <td class="style5" rowspan="2" align="left">
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
                        <td class="style5" align="left">
                            <asp:TextBox ID="tbxDes" runat="server" Height="112px" TextMode="MultiLine" 
                                Width="350px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9" valign="top">
                            Event Dates:</td>
                        <td class="style5" align="left">
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Quota:</td>
                        <td class="style11" align="left">
                            <asp:TextBox ID="tbxQuota" runat="server" Width="143px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="tbxQuota" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style12">
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Registration Starts:</td>
                        <td class="style5" align="left">
                            <asp:DropDownList ID="ddlStarts" runat="server" Height="22px" Width="196px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Registration Ends:</td>
                        <td class="style5" align="left">
                            <asp:DropDownList ID="ddlEnds" runat="server" Height="22px" Width="196px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" valign="top">
                            Registration Cost:</td>
                        <td class="style7" align="left" valign="top">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Free" />
&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Others" />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="tbxDol" runat="server" Width="80px"></asp:TextBox>
&nbsp; Dollars per student<br />
                        </td>
                        <td class="style8">
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
                    Text="Confirm" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
