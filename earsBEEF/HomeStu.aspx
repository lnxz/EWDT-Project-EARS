<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="HomeStu.aspx.cs" Inherits="earsBEEF.HomeStu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style5
        {
            width: 72px;
        }
        .style6
        {
            width: 174px;
        }
        .style14
        {
            width: 82px;
        }
        .style15
        {
            width: 151px;
        }
        .style17
        {
            width: 123px;
        }
        .style18
        {
            width: 322px;
        }
        .style20
        {
            width: 373px;
        }
        .style21
        {
            width: 131px;
        }
        .style22
        {
            font-weight: 700;
        }
        .style23
        {
            font-weight: 700;
        }
        .style24
        {
            font-weight: 700;
        }
        .style28
        {
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="464px" Width="853px">
        <asp:Label ID="Label1" runat="server" Text="Announcements" CssClass="style22"></asp:Label>
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style5">
                    Nov 11</td>
                <td class="style6">
                    Yeak Shaw Wen</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server">EWDT Project submission due in 4 weeks </asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Nov 15</td>
                <td class="style6">
                    Shaun</td>
                <td>
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server">Sign up for TP Cyber Games 2010 !</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Nov 16</td>
                <td class="style6">
                    Nicholas Shen</td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server">C219 Booth for CCN day  ! Cookies for $2</asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Upcoming Events" CssClass="style23"></asp:Label>
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style14">
                    Event Date</td>
                <td class="style15">
                    Registration Ends</td>
                <td class="style18">
                    Name</td>
                <td class="style17">
                    Category</td>
                <td>
                    Organizer</td>
            </tr>
            <tr>
                <td class="style14">
                    Nov 18</td>
                <td class="style15">
                    Nov 16</td>
                <td class="style18">
                    TPRawks</td>
                <td class="style17">
                    Campus-Wide</td>
                <td>
                    Pua Yeow Cheong</td>
            </tr>
            <tr>
                <td class="style14">
                    Nov 19</td>
                <td class="style15">
                    Nov 19</td>
                <td class="style18">
                    CCN Day</td>
                <td class="style17">
                    Campus-Wide</td>
                <td>
                    Yeak Shaw Wen</td>
            </tr>
            <tr>
                <td class="style14">
                    Dec 27</td>
                <td class="style15">
                    Nov 30</td>
                <td class="style18">
                    Orientation Training Camp</td>
                <td class="style17">
                    Leadership</td>
                <td>
                    TPSU</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Registered Events" 
            CssClass="style24"></asp:Label>
        <br />
        <br />
        <table style="width: 98%;">
            <tr>
                <td class="style28">
                    Event Starting Date</td>
                <td class="style20">
                    Name</td>
            </tr>
            <tr>
                <td class="style28">
                    Dec 27</td>
                <td class="style20">
                    Orientation Training Camp</td>
            </tr>
            <tr>
                <td class="style28">
                    Dec 30</td>
                <td class="style20">
                    Run for Hope helpers</td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>
