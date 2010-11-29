<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="RegisterEvent.aspx.cs" Inherits="earsBEEF.RegisterEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            width: 138px;
            height: 113px;
        }
        .style4
        {
            height: 113px;
            width: 101px;
        }
        .style5
        {
            height: 38px;
        }
        .style6
        {
            width: 44px;
        }
        .style7
        {
            height: 113px;
            width: 44px;
        }
        .style8
        {
            height: 38px;
            width: 101px;
        }
        .style9
        {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style5" colspan="2">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Event Registration"></asp:Label>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblName" runat="server" Text="Name : "></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="tbxName" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblVenue" runat="server" Text="Venue :"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="tbxVenue" runat="server" Enabled="False" Height="39px" 
                    Width="204px"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblRegistration" runat="server" Text="Registration Cost :"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="tbxRegCost" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblCategory" runat="server" Text="Category : "></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="tbxCategory" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblDesc" runat="server" Text="Description:"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="tbxDescription" runat="server" Enabled="False" Height="86px" 
                    TextMode="MultiLine" Width="382px"></asp:TextBox>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblEvent" runat="server" Text="Event Dates :"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="tbxEventDates" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblCCA" runat="server" Text="CCA : "></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="tbxCCA" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
            </td>
            <td class="style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="btnReg" runat="server" onclick="btnReg_Click" Text="Register" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
