﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="ViewEventStud.aspx.cs" Inherits="earsBEEF.ViewEventStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 840px;
        }
        .style5
        {
            width: 318px;
        }
        .style6
        {
        }
        .style7
        {
            width: 163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="width:100%;">
        <tr>
            <td class="style2" colspan="2">
                <strong>
                <br />
                <table style="width:103%;">
                    <tr>
                        <td class="style5">
                <strong>
                            <asp:Panel ID="Panel1" runat="server" Width="317px">
                                <asp:Image ID="lmEvent" runat="server" Height="336px" 
    Width="299px" />
                            </asp:Panel>
                            </strong>
                        </td>
                        </strong>
                        <td align="left" valign="top">
                            <table style="width:100%;">
                                <tr>
                                    <td class="style6" colspan="2">
                                        <asp:Label ID="Label2" runat="server" Text="Name" 
                                            style="font-size: large; font-weight: 700"></asp:Label>
                                    </td>
                <strong>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Held at: 
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Place"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Event Start :</td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Registration Avabilable : 
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                <strong>&nbsp;- </strong>
                                        <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Registration Cost:</td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Free"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7" valign="top">
                                        Description: </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Height="111px" ReadOnly="True" 
                                            TextMode="MultiLine" Width="345px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnReg" runat="server" Text="Register" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
</asp:Content>
