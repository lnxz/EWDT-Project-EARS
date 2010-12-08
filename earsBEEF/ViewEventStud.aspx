<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="ViewEventStud.aspx.cs" Inherits="earsBEEF.ViewEventStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 840px;
        }
        .style5
        {
            width: 190px;
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
                <table style="width:100%;">
                    <tr>
                        <td class="style5">
                <strong>
                            <asp:Panel ID="Panel1" runat="server" Width="265px" Height="325px">
                                <asp:Image ID="lmEvent" runat="server" Height="329px" 
    Width="258px" />
                            </asp:Panel>
                            </strong>
                        </td>
                        </strong>
                        <td align="left" valign="top">
                            <table style="width:100%; margin-left: 0px;">
                                <tr>
                                    <td class="style6" colspan="2">
                                        <asp:Label ID="lbName" runat="server" Text="Name"></asp:Label>
                                    </td>
                <strong>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Held at: 
                                    </td>
                                    <td>
                                        <asp:Label ID="lbPlace" runat="server" Text="Place"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Event Start :</td>
                                    <td>
                                        <asp:Label ID="lbStartDate" runat="server" Text="Date"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Registration Avabilable : 
                                    </td>
                                    <td>
                                        <asp:Label ID="lbRegStart" runat="server" Text="Date"></asp:Label>
                <strong>&nbsp;- </strong>
                                        <asp:Label ID="lbRegEnd" runat="server" Text="Date"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Registration Cost:</td>
                                    <td>
                                        <asp:Label ID="lbCost" runat="server" Text="Free"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Quota:</td>
                                    <td>
                                        <asp:Label ID="lbQuota" runat="server" Text="0"></asp:Label>
                                        /
                                        <asp:Label ID="lbMax" runat="server" Text="0"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7" valign="top">
                                        Description: </td>
                                    <td>
                                        <asp:TextBox ID="tbxDes" runat="server" Height="111px" ReadOnly="True" 
                                            TextMode="MultiLine" Width="313px" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:Label ID="lbWarning" runat="server" ForeColor="Red" Text="Label" 
                                Visible="False"></asp:Label>
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnReg" runat="server" Text="Register" onclick="btnReg_Click" 
                                Width="71px" />


                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                                Text="Cancel" />
&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
                <br />
                <br />
</asp:Content>
