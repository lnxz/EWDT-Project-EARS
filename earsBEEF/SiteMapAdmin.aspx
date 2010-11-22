<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="SiteMapAdmin.aspx.cs" Inherits="earsBEEF.SiteMapAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 20px;
        }
        .style3
        {
            font-size: large;
        }
        .style4
        {
            height: 20px;
            width: 666px;
        }
        .style5
        {
            height: 20px;
            width: 344px;
        }
        .style6
        {
            height: 20px;
            width: 314px;
        }
        .style7
        {
            width: 11px;
        }
        .style8
        {
            width: 24px;
        }
        .style11
        {
            height: 20px;
            width: 605px;
        }
        .style12
        {
            height: 20px;
            width: 293px;
        }
        .style14
        {
            width: 290px;
        }
        .style15
        {
            height: 20px;
            width: 242px;
        }
        .style17
        {
            width: 399px;
        }
        .style18
        {
            height: 20px;
            width: 294px;
        }
        .style20
        {
            height: 20px;
            width: 154px;
        }
        .style21
        {
            height: 20px;
            width: 175px;
        }
        .style22
        {
            font-size: large;
            width: 173px;
        }
        .style23
        {
            width: 170px;
        }
        .style24
        {
            height: 20px;
            width: 143px;
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
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <br />

<br />
<br />
<br />
<br />
<br />
        <br />
        <asp:View ID="AdminView" runat="server" onactivate="Page_Load">

<span class="style3"><strong>Site map</strong></span><br />
<table style="width:100%;">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                Student Control</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                Staff Control</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                <asp:HyperLink ID="hlAddstu" runat="server" ForeColor="#3333FF">Create Student Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewStu" runat="server" ForeColor="#3333FF">View Student Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlUpdateStudent" runat="server" ForeColor="#3333FF">Update Student Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlDeleteStudent" runat="server" ForeColor="#3333FF">Delete Student Profile</asp:HyperLink>
                </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                <asp:HyperLink ID="hlAddStaff" runat="server" ForeColor="#3333FF">Create Staff Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewStaff" runat="server" ForeColor="#3333FF">View Staff Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlUpdateStaff0" runat="server" ForeColor="#3333FF">Update Staff Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlDeleteStaff0" runat="server" ForeColor="#3333FF">Delete Staff Profile</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                Category Control</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                Announcement Control</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                <asp:HyperLink ID="hlCreateCate" runat="server" ForeColor="#3333FF">Create Category</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlApprove" runat="server" ForeColor="#3333FF">Category Approval</asp:HyperLink>
                </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:HyperLink ID="hlPostAnn" runat="server" ForeColor="#3333FF">Post Announcement</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlDeleteAnn" runat="server" ForeColor="#3333FF">Delete Announcement</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style2">
                Notification Control</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                <strong>Events</strong></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                <asp:HyperLink ID="hlViewEvent" runat="server" ForeColor="#3333FF">View Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlDeleteEvent" runat="server" ForeColor="#3333FF">Delete Event</asp:HyperLink>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        </table>
    <br />
        </asp:View>
        <asp:View ID="StudentView" runat="server" onactivate="Page_Load">
            <strong><span class="style7">Site Map</span></strong><br />
            <table style="width:100%;">
                <tr>
                    <td class="style18">
                        <strong>Events</strong></td>
                    <td class="style15">
                        <strong>Announcements</strong></td>
                    <td class="style3">
                        <strong>Profile</strong></td>
                </tr>
                <tr>
                    <td class="style18">
                        <asp:HyperLink ID="hlCurr" runat="server" ForeColor="#3333FF">Current Event</asp:HyperLink>
                        <br />
                        &nbsp;<asp:HyperLink ID="hlPt" runat="server" ForeColor="#3333FF">Past Event</asp:HyperLink>
                        <br />
                        &nbsp;<asp:HyperLink ID="hlRe" runat="server" ForeColor="#3333FF">Registered Event</asp:HyperLink>
                    </td>
                    <td class="style15">
                        <asp:HyperLink ID="hlViewAnn" runat="server" ForeColor="#3333FF">View Announcement</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlEdit" runat="server" ForeColor="#3333FF">Edit Profile</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="hlView" runat="server" ForeColor="#3333FF">View Profile</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
    </asp:View>
    <asp:View ID="StaffView" runat="server" onactivate="Page_Load">

<strong><span class="style7">Site Map</span></strong><br />
    <table style="width:100%;">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <strong>Announcement</strong></td>
            <td class="style17">
                &nbsp;</td>
            <td class="style14">
                <strong>Event</strong></td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12" valign="top">
                <asp:HyperLink ID="hlAnn" runat="server" ForeColor="#3333FF">Post Announcements</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3333FF">View Announcements</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#3333FF">Delete Announcements</asp:HyperLink>
            </td>
            <td class="style17" valign="top">
                &nbsp;</td>
            <td class="style14" valign="top">
                <asp:HyperLink ID="hlCreateEvent" runat="server" ForeColor="#3333FF">Create Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#3333FF">View Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlUpdateEvent" runat="server" ForeColor="#3333FF">Update Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#3333FF">Delete Events</asp:HyperLink>
                <br />
&nbsp;</td>
            <td class="style2" valign="top">
                <asp:HyperLink ID="hlViewOrg" runat="server" ForeColor="#3333FF">View Organise Events</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewUpcom" runat="server" ForeColor="#3333FF">View Upcoming Event</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12" valign="top">
                &nbsp;</td>
            <td class="style17" valign="top">
                &nbsp;</td>
            <td class="style14" valign="top">
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12" valign="top">
                Category</td>
            <td class="style17" valign="top">
                &nbsp;</td>
            <td class="style14" valign="top">
                <strong>Personal Profile</strong></td>
            <td class="style8" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12" valign="top">
                &nbsp;</td>
            <td class="style17" valign="top">
                &nbsp;</td>
            <td class="style14" valign="top">
                &nbsp;</td>
            <td class="style8" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12" valign="top">
                <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="#3333FF">Create Category</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="#3333FF">Category Approval</asp:HyperLink>
                </td>
            <td class="style17" valign="top">
                &nbsp;</td>
            <td class="style14" valign="top">
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="#3333FF">Edit My Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewProfile" runat="server" ForeColor="#3333FF">View My Profile</asp:HyperLink>
            </td>
            <td class="style8" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    </asp:View>

    <asp:View ID="StudentLeaderView" runat="server" onactivate="Page_Load">
    <br />
&nbsp;<strong><span class="style7">Site Map</span></strong><br />
    <table style="width:100%;">
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20">
                <strong>Announcement</strong></td>
            <td class="style22">
                &nbsp;</td>
            <td class="style23">
                <strong>Event</strong></td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
            </td>
            <td class="style20" valign="top">
                <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="#3333FF">Post Announcements</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="#3333FF">View Announcements</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="#3333FF">Delete Announcements</asp:HyperLink>
            </td>
            <td class="style22" valign="top">
                &nbsp;</td>
            <td class="style23" valign="top">
                <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="#3333FF">Create Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink12" runat="server" ForeColor="#3333FF">View Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink13" runat="server" ForeColor="#3333FF">Update Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink14" runat="server" ForeColor="#3333FF">Delete Events</asp:HyperLink>
                <br />
&nbsp;</td>
            <td class="style10" valign="top">
                <asp:HyperLink ID="HyperLink15" runat="server" ForeColor="#3333FF">Organise Events</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink16" runat="server" ForeColor="#3333FF">Upcoming Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlViewRegister" runat="server" ForeColor="#3333FF">Registered Event</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlPastEvent" runat="server" ForeColor="#3333FF">Past Event</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20" valign="top">
                &nbsp;</td>
            <td class="style22" valign="top">
                &nbsp;</td>
            <td class="style23" valign="top">
                &nbsp;</td>
            <td valign="top" class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20" valign="top">
                &nbsp;</td>
            <td class="style22" valign="top">
                &nbsp;</td>
            <td class="style23" valign="top">
                <strong>Personal Profile</strong></td>
            <td class="style10" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20" valign="top">
                &nbsp;</td>
            <td class="style22" valign="top">
                &nbsp;</td>
            <td class="style23" valign="top">
                &nbsp;</td>
            <td class="style10" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20" valign="top">
                <br />
                </td>
            <td class="style22" valign="top">
                &nbsp;</td>
            <td class="style23" valign="top">
                <asp:HyperLink ID="HyperLink17" runat="server" ForeColor="#3333FF">Edit Profile</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink18" runat="server" ForeColor="#3333FF">View Profile</asp:HyperLink>
            </td>
            <td class="style10" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>



        </asp:View>
    </asp:MultiView>

    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>
