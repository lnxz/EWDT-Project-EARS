<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Loggedin.Master" AutoEventWireup="true" CodeBehind="AddAnnouncement.aspx.cs" Inherits="earsBEEF.AllAnnouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 22px;
        }
        .style4
        {
            height: 26px;
        }
        .style6
        {
            width: 139px;
            height: 36px;
        }
        .style7
        {
            height: 36px;
            width: 83%;
        }
        .style10
        {
            width: 139px;
        }
        .style11
        {
            width: 83%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="style4" colspan="2">
                <strong><font face="Courier New">Post Announcement</strong></td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
            </td>
        </tr>
        <tr>
            <td class="style6">
                Date Of Announcement:</td>
            <td class="style7">
        <a href="./LoginPage.aspx">
                <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" 
                    Height="20px" onselectedindexchanged="ddlMonth_SelectedIndexChanged" 
                    Width="75px" ValidationGroup="1">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
                </a>/<a href="./LoginPage.aspx"><asp:DropDownList ID="ddlDay" runat="server" 
                    Height="20px" Width="54px" ValidationGroup="1">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
                </a>/<a href="./LoginPage.aspx"><asp:DropDownList ID="ddlYear" runat="server" 
                    Height="20px" Width="54px" ValidationGroup="1">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddlMonth" ErrorMessage="Select An Announcement Date" 
                    ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Title:</td>
            <td class="style11">
                <asp:TextBox ID="tbxTitle" runat="server" Width="317px" CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="tbxTitle" ErrorMessage="Enter An Announcement Title" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" valign="top">
                Content:</td>
            <td valign="top" class="style11">
                <asp:TextBox ID="tbxCon" runat="server" Height="173px" TextMode="MultiLine" 
                    Width="597px" CausesValidation="True" ValidationGroup="2"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="tbxCon" ErrorMessage="Enter Content" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
        onclick="btnCancel_Click" />
    <br />
</asp:Content>
