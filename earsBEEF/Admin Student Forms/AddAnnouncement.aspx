<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddAnnouncement.aspx.cs" Inherits="earsBEEF.AddAnnouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                <strong>Create an Announcement</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <table style="width: 100%; height: 337px;">
                    <tr>
                        <td class="style4">
                            Reciepients:</td>
                        <td class="style6" align="left">
                            <asp:DropDownList ID="DropReciep" runat="server" Height="22px" Width="196px" 
                                style="text-align: left">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style6" align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;Title:</td>
                        <td class="style6" align="left">
                            <asp:TextBox ID="tbxTitle" runat="server" Width="224px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="tbxTitle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Date</td>
                        <td class="style6" align="left">
                            <asp:DropDownList ID="DropDate" runat="server" Height="27px" Width="271px">
                            </asp:DropDownList>
                            &nbsp;
                            Today&#39;s Date:<asp:Label ID="lblDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" valign="top">
                            Content:</td>
                        <td class="style5" align="left" valign="top">
                            <asp:TextBox ID="tbxContent" runat="server" Height="112px" TextMode="MultiLine" 
                                Width="350px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="tbxTitle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" class="style7">
                            <asp:Label ID="Attachlbl" runat="server" Text="Attach File:"></asp:Label>
                            <input id="Uploader" type="file" /></td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style3">
                <asp:Button ID="btnConfirm" runat="server" style="text-align:right" 
                    Text="Confirm" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
