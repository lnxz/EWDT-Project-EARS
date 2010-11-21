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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
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
                Category Control</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="hlCreateCate" runat="server" ForeColor="#3333FF">Create Category</asp:HyperLink>
                </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="hlApprove" runat="server" ForeColor="#3333FF">Category Approval</asp:HyperLink>
                </td>
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
                Announcement Control</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="hlPostAnn" runat="server" ForeColor="#3333FF">Post Announcement</asp:HyperLink>
                <br />
                <asp:HyperLink ID="hlDeleteAnn" runat="server" ForeColor="#3333FF">Delete Announcement</asp:HyperLink>
                </td>
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
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Notification Control</td>
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
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <strong>Eve nts</strong></td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:HyperLink ID="hlCurr" runat="server" ForeColor="#3333FF">Current Events</asp:HyperLink>
                <br />
&nbsp;<asp:HyperLink ID="hlPt" runat="server" ForeColor="#3333FF">Past Events</asp:HyperLink>
                <br />
&nbsp;<asp:HyperLink ID="hlRe" runat="server" ForeColor="#3333FF">Registered Events</asp:HyperLink>
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
    </table>
    <br />
</asp:Content>
