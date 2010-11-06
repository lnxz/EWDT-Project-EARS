<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddEventForm.aspx.cs" Inherits="earsBEEF.AddEventForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
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
                            Request Staff:</td>
                        <td class="style5">
                            <asp:DropDownList ID="ddlRequest" runat="server" Height="22px" Width="196px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Event Name:</td>
                        <td class="style5">
                            <asp:TextBox ID="tbxName" runat="server" Width="224px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Category:</td>
                        <td class="style5">
                            <asp:DropDownList ID="ddlCate" runat="server" Height="22px" Width="196px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Venue:</td>
                        <td class="style5">
                            <asp:DropDownList ID="ddlVenue" runat="server" Height="22px" Width="196px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9" valign="top">
                            Descriptions:</td>
                        <td class="style5">
                            <asp:TextBox ID="tbxDes" runat="server" Height="112px" TextMode="MultiLine" 
                                Width="350px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Quota:</td>
                        <td class="style11">
                            <asp:DropDownList ID="ddlQouta" runat="server" Height="22px" Width="123px">
                            </asp:DropDownList>
                        </td>
                        <td class="style12">
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Registration Starts:</td>
                        <td class="style5">
                            <asp:DropDownList ID="ddlStarts" runat="server" Height="22px" Width="196px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Registration Ends:</td>
                        <td class="style5">
                            <asp:DropDownList ID="ddlEnds" runat="server" Height="22px" Width="196px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" valign="top">
                            Registration Cost:</td>
                        <td class="style7" align="left">
&nbsp;<asp:RadioButtonList ID="RblOptions" runat="server">
                                <asp:ListItem>Free</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="tbxDol" runat="server" Width="80px"></asp:TextBox>
&nbsp;Dollars per student</td>
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
            <td align="right" class="style13">
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Width="61px" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
