<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudentSL.Master" AutoEventWireup="true" CodeBehind="UpdateEventSL.aspx.cs" Inherits="earsBEEF.UpdateEventSL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 427px;
        }
        .style4
        {
            width: 127px;
        }
        .style5
        {
            width: 255px;
        }
        .style6
        {
            width: 447px;
        }
        .style7
        {
            width: 1048px;
            height: 99px;
        }
        .style8
        {
            width: 353px;
        }
        .style9
        {
            width: 127px;
            height: 41px;
        }
        .style10
        {
            width: 255px;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:88%;">
        <tr>
            <td class="style2" colspan="2">
                <strong>
                <br />
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
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Event Name:</td>
                        <td class="style6" align="left">
                            <asp:TextBox ID="tbxName" runat="server" Width="224px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            CCA involved:</td>
                        <td class="style6" align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="218px">
                            </asp:DropDownList>
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Category:</td>
                        <td class="style6" align="left">
                            <asp:DropDownList ID="ddlCate" runat="server" Height="22px" Width="218px">
                            </asp:DropDownList>
                              &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Venue:</td>
                        <td class="style6" rowspan="2" align="left">
                            <asp:TextBox ID="tbxVenue" runat="server" TextMode="MultiLine" Width="410px" 
                                Height="77px"></asp:TextBox>
                        </td>
                        <td class="style10">
                            </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" valign="top">
                            Description:</td>
                        <td class="style6" align="left">
                            <asp:TextBox ID="tbxDes" runat="server" Height="99px" TextMode="MultiLine" 
                                Width="411px"></asp:TextBox>
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" valign="top">
                            Event Dates:</td>
                        <td class="style6" align="left">
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
                                <asp:Label ID="Label1" runat="server">Please Add Event Dates</asp:Label>
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Quota:</td>
                        <td class="style6" align="left">
                            <asp:TextBox ID="tbxQuota" runat="server" Width="143px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="tbxQuota" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style5">
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Registration Starts:</td>
                        <td class="style6" align="left">
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
                </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style5">
                            </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Registration Ends:</td>
                        <td class="style6" align="left">
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
                </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style5">
                            </td>
                    </tr>
                    <tr>
                        <td class="style4" valign="top">
                            Registration Cost:</td>
                        <td class="style6" align="left" valign="top">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Free" GroupName="rc" />
&nbsp; &nbsp;
                            <asp:RadioButton ID="rbOthers" runat="server" GroupName="rc" Text="Others" />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="tbxDol" runat="server" Width="80px" Enabled="False"></asp:TextBox>
&nbsp; Dollars per student<br />
                        </td>
                        <td class="style5">
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
                <br />
                <br />
</asp:Content>
