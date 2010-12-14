<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Loggedin.Master" AutoEventWireup="true" CodeBehind="AddAnnouncement.aspx.cs" Inherits="earsBEEF.AllAnnouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 22px;
        }
        .style3
        {
            width: 99px;
        }
        .style4
        {
            height: 26px;
        }
        .style6
        {
            width: 99px;
            height: 36px;
        }
        .style7
        {
            height: 36px;
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
                Date Post:</td>
            <td class="style7">
        <a href="./LoginPage.aspx">
                <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" 
                    Height="20px" onselectedindexchanged="ddlMonth_SelectedIndexChanged" 
                    Width="75px">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
                </a>/<a href="./LoginPage.aspx"><asp:DropDownList ID="ddlDay" runat="server" 
                    Height="20px" Width="54px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
                </a>/<a href="./LoginPage.aspx"><asp:DropDownList ID="ddlYear" runat="server" 
                    Height="20px" Width="54px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Title:</td>
            <td>
                <asp:TextBox ID="tbxTitle" runat="server" Width="317px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                Content:</td>
            <td valign="top">
                <asp:TextBox ID="tbxCon" runat="server" Height="173px" TextMode="MultiLine" 
                    Width="597px"></asp:TextBox>
&nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" 
        onclientclick="return confirm(&quot;Confirm submission?&quot;)" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
        onclick="btnCancel_Click" />
    <br />
</asp:Content>
