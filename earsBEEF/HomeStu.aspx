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
        .style15
        {
            width: 151px;
        }
        .style17
        {
            width: 123px;
        }
        .style20
        {
            width: 373px;
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
        .style29
        {
            text-align: center;
            font-weight: bold;
        }
        .style30
        {
            width: 123px;
            text-align: center;
            font-weight: bold;
        }
        .style31
        {
            width: 250px;
            text-align: center;
            font-weight: bold;
        }
        .style32
        {
            width: 151px;
            text-align: center;
            font-weight: bold;
        }
        .style33
        {
            width: 91px;
            text-align: center;
            font-weight: bold;
        }
        .style34
        {
            width: 91px;
        }
        .style35
        {
            width: 250px;
        }
        .style37
        {
            width: 213px;
        }
        .style38
        {
            width: 540px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="725px" Width="853px">
        <br />
        <br />
<asp:Panel ID="Panel2" runat="server" BackColor="#FF6666" ForeColor="#CCCC00">
            <asp:Label ID="Label4" runat="server" CssClass="style22" Text="Announcements"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="style5">
                        Nov 11</td>
                    <td class="style6">
                        Yeak Shaw Wen</td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server">EWDT Project submission due in 4 weeks </asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Nov 15</td>
                    <td class="style6">
                        Shaun</td>
                    <td>
                        &nbsp;<asp:HyperLink ID="HyperLink5" runat="server">Sign up for TP Cyber Games 2010 !</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Nov 16</td>
                    <td class="style6">
                        Nicholas Shen</td>
                    <td>
                        <asp:HyperLink ID="HyperLink6" runat="server">C219 Booth for CCN day  ! Cookies for $2</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
<asp:Panel ID="Panel3" runat="server" BackColor="#FFFF99">
            <asp:Label ID="Label1" runat="server" CssClass="style23" Text="Upcoming Events"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table style="width:100%;" align="center">
                <tr>
                    <td class="style33">
                        Event Date</td>
                    <td class="style32">
                        Registration Ends</td>
                    <td class="style31">
                        Name</td>
                    <td class="style30">
                        Category</td>
                    <td class="style32">
                        Organizer</td>
                    <td class="style29">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style34">
                        Nov 18</td>
                    <td class="style15">
                        Nov 16</td>
                    <td class="style35">
                        <asp:HyperLink ID="hlTp" runat="server" Font-Bold="False" Font-Overline="False" 
                            Font-Strikeout="False" Font-Underline="True" ForeColor="#3333FF">TPRawks</asp:HyperLink>
                    </td>
                    <td class="style17">
                        Campus-Wide</td>
                    <td class="style15">
                        Pua Yeow Cheong</td>
                    <td>
                        <asp:HyperLink ID="hlReg1" runat="server" Font-Bold="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="True" 
                            ForeColor="#3333FF">Register</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style34">
                        Nov 19</td>
                    <td class="style15">
                        Nov 19</td>
                    <td class="style35">
                        <asp:HyperLink ID="hlCC" runat="server" Font-Bold="False" Font-Overline="False" 
                            Font-Strikeout="False" Font-Underline="True" ForeColor="#3333FF">CCN Day</asp:HyperLink>
                    </td>
                    <td class="style17">
                        Campus-Wide</td>
                    <td class="style15">
                        Yeak Shaw Wen</td>
                    <td>
                        <asp:HyperLink ID="hlReg2" runat="server" Font-Bold="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="True" 
                            ForeColor="#3333FF">Register</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style34">
                        Dec 27</td>
                    <td class="style15">
                        Nov 30</td>
                    <td class="style35">
                        &nbsp;<asp:HyperLink ID="hlOTC" runat="server" Font-Bold="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="True" 
                            ForeColor="#3333FF">Orientation Training Camp</asp:HyperLink>
                    </td>
                    <td class="style17">
                        Leadership</td>
                    <td class="style15">
                        TPSU</td>
                    <td>
                        <asp:HyperLink ID="hlReg3" runat="server" Font-Bold="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="True" 
                            ForeColor="#3333FF">Register</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" BackColor="#66FF66">
            <asp:Label ID="Label3" runat="server" CssClass="style24" 
                Text="Registered Events"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table style="width: 100%;">
                <tr>
                    <td class="style37">
                        Event Starting Date</td>
                    <td class="style38">
                        Name</td>
                    <td class="style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style37">
                        Dec 27</td>
                    <td class="style38">
                        Orientation Training Camp</td>
                    <td class="style20">
                        <asp:HyperLink ID="hlDelete" runat="server" Font-Bold="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="True" 
                            ForeColor="#3333FF">Delete</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style37">
                        Dec 30</td>
                    <td class="style38">
                        Run for Hope helpers</td>
                    <td class="style20">
                        <asp:HyperLink ID="hlDelete1" runat="server" Font-Bold="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="True" 
                            ForeColor="#3333FF">Delete</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>
