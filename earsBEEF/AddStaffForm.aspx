<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddStaffForm.aspx.cs" Inherits="earsBEEF.AddStaffForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style3" colspan="3">
                <strong>Admin Controls</strong></td>
            <td class="style3" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Password:</td>
            <td class="style2">
                <asp:TextBox ID="tbxPw" runat="server" Width="141px"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnGenerate" runat="server" Text="Generate" Width="76px" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <strong>Staff - Office Information</strong></td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                School:</td>
            <td class="style2">
                <asp:DropDownList ID="DdlSch" runat="server" Height="22px" Width="248px">
                    <asp:ListItem Value="AS">Applied Science</asp:ListItem>
                    <asp:ListItem Value="BS">Business </asp:ListItem>
                    <asp:ListItem Value="DS">Design</asp:ListItem>
                    <asp:ListItem Value="EN">Engine</asp:ListItem>
                    <asp:ListItem Value="HSS">Humanities &amp; Social Science</asp:ListItem>
                    <asp:ListItem Value="IIT">Informatics &amp; IT </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                Office No:</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="6780"></asp:Label>
&nbsp;<asp:TextBox ID="tbxOffic" runat="server" Height="19px" Width="95px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Department:</td>
            <td class="style2">
                <asp:DropDownList ID="DdlDept" runat="server" Height="21px" Width="247px">
                </asp:DropDownList>
            </td>
            <td class="style11">
                Personal
                Email:</td>
            <td>
                <asp:TextBox ID="tbxPersonalEmail" runat="server" Height="26px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Position:</td>
            <td class="style2">
                <asp:DropDownList ID="DdlPosit" runat="server" Height="22px" Width="247px">
                </asp:DropDownList>
            </td>
            <td class="style10">
                Staff Email:</td>
            <td>
                <asp:TextBox ID="tbxWorkEmail" runat="server" Height="26px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <strong>Staff Particulars</strong></td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Name:</td>
            <td class="style2">
                <asp:TextBox ID="tbxName" runat="server" Width="141px"></asp:TextBox>
            </td>
            <td class="style11">
                Race:</td>
            <td class="style4">
                <asp:DropDownList ID="DdlRace" runat="server" Height="22px" Width="161px">
                    <asp:ListItem>Chinese</asp:ListItem>
                    <asp:ListItem>Malay</asp:ListItem>
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Date Of Birth :</td>
            <td class="style2">
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;</td>
            <td class="style11">
                Marital Status:</td>
            <td class="style4">
                <asp:DropDownList ID="DdlMarSta" runat="server" Height="22px" Width="162px">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Widowed</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Gender:</td>
            <td class="style2">
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" />
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" />
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Nationality: </td>
            <td class="style2">
                <asp:DropDownList ID="DdlNation" runat="server" Height="22px" Width="162px">
                    <asp:ListItem Value="SG">Singaporean</asp:ListItem>
                    <asp:ListItem Value="PR">Permanent Resident</asp:ListItem>
                    <asp:ListItem Value="OT">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Contact No:</td>
            <td class="style2">
                <asp:TextBox ID="tbxMoblie" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td class="style11">
                Telephone No:</td>
            <td class="style4">
                <asp:TextBox ID="tbxTele" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        </table>
    <table style="width:100%;">
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" 
                    Text="Confirm" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
