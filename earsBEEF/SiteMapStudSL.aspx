<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="SiteMapStudSL.aspx.cs" Inherits="earsBEEF.SiteMapStudSL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 20px;
        }
        .style3
        {
            width: 198px;
        }
        .style4
        {
            width: 248px;
        }
        .style5
        {
            width: 245px;
        }
        .style6
        {
            width: 238px;
        }
        .style7
        {
            width: 235px;
        }
        .style9
        {
            width: 171px;
        }
        .style10
        {
            width: 283px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
&nbsp;<strong><span class="style7">Site Map</span></strong><br />
    <table style="width:100%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <strong>Announcement</strong></td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                <strong>Event</strong></td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style6" valign="top">
                <asp:HyperLink ID="hlAnn" runat="server" ForeColor="#3333FF">Post Announcements</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewAnn" runat="server" ForeColor="#3333FF">View Announcements</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlDeleteAnn" runat="server" ForeColor="#3333FF">Delete Announcements</asp:HyperLink>
            </td>
            <td class="style3" valign="top">
                &nbsp;</td>
            <td class="style9" valign="top">
                <asp:HyperLink ID="hlCreateEvent" runat="server" ForeColor="#3333FF">Create Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewEvent" runat="server" ForeColor="#3333FF">View Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlUpdateEvent" runat="server" ForeColor="#3333FF">Update Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlDeleteEvent" runat="server" ForeColor="#3333FF">Delete Events</asp:HyperLink>
                <br />
&nbsp;</td>
            <td class="style10" valign="top">
                <asp:HyperLink ID="hlViewOrg" runat="server" ForeColor="#3333FF">Organise Events</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewUpcom" runat="server" ForeColor="#3333FF">Upcoming Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewRegister" runat="server" ForeColor="#3333FF">Registered Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlPastEvent" runat="server" ForeColor="#3333FF">Past Event</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6" valign="top">
                &nbsp;</td>
            <td class="style3" valign="top">
                &nbsp;</td>
            <td class="style9" valign="top">
                &nbsp;</td>
            <td valign="top" class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6" valign="top">
                &nbsp;</td>
            <td class="style3" valign="top">
                &nbsp;</td>
            <td class="style9" valign="top">
                <strong>Personal Profile</strong></td>
            <td class="style10" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6" valign="top">
                &nbsp;</td>
            <td class="style3" valign="top">
                &nbsp;</td>
            <td class="style9" valign="top">
                &nbsp;</td>
            <td class="style10" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6" valign="top">
                <br />
                </td>
            <td class="style3" valign="top">
                &nbsp;</td>
            <td class="style9" valign="top">
                <asp:HyperLink ID="hlEdit" runat="server" ForeColor="#3333FF">Edit Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewProfile" runat="server" ForeColor="#3333FF">View Profile</asp:HyperLink>
            </td>
            <td class="style10" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
<br />
<br />
</asp:Content>
