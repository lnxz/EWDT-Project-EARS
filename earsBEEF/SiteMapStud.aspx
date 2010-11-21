<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="SiteMapStud.aspx.cs" Inherits="earsBEEF.SiteMapStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 274px;
        }
        .style3
        {
            text-decoration: underline;
        }
        .style4
        {
            width: 274px;
            text-decoration: underline;
        }
        .style5
        {
            text-decoration: underline;
            width: 206px;
        }
        .style6
        {
            width: 206px;
        }
        .style7
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
&nbsp;<strong><span class="style7">Site Map</span></strong><br />
    <table style="width:100%;">
        <tr>
            <td class="style4">
                <strong>Events</strong></td>
            <td class="style5">
                <strong>Announcements</strong></td>
            <td class="style3">
                <strong>Profile</strong></td>
        </tr>
        <tr>
            <td class="style2">
                <asp:HyperLink ID="hlCurr" runat="server" ForeColor="#3333FF">Current Events</asp:HyperLink>
                <br />
&nbsp;<asp:HyperLink ID="hlPt" runat="server" ForeColor="#3333FF">Past Events</asp:HyperLink>
                <br />
&nbsp;<asp:HyperLink ID="hlRe" runat="server" ForeColor="#3333FF">Registered Events</asp:HyperLink>
            </td>
            <td class="style6">
                <asp:HyperLink ID="hlAnn" runat="server" ForeColor="#3333FF">View My Announcements</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="hlEdit" runat="server" ForeColor="#3333FF">Edit My Profile</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<br />
<br />
</asp:Content>
