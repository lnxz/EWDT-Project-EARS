<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStaff.Master" AutoEventWireup="true" CodeBehind="EditStaffProfile.aspx.cs" Inherits="earsBEEF.EditStaffProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
<table style="width:100%;">
        <tr>
            <td class="style4" colspan="3" align="left">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3" align="left">
                <strong>Staff - Office Information</strong></td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3" align="left">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="right">
                School:</td>
            <td class="style2" align="left">
                <asp:DropDownList ID="DdlSch" runat="server" Height="22px" Width="248px" >
                    <asp:ListItem Value="AS">Applied Science</asp:ListItem>
                    <asp:ListItem Value="BS">Business </asp:ListItem>
                    <asp:ListItem Value="DS">Design</asp:ListItem>
                    <asp:ListItem Value="EN">Engine</asp:ListItem>
                    <asp:ListItem Value="HSS">Humanities &amp; Social Science</asp:ListItem>
                    <asp:ListItem Value="IIT">Informatics &amp; IT </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2" align="right">
                Office No:</td>
            <td class="style2" align="left">
                <asp:TextBox ID="tbxOffic" runat="server" Height="27px" Width="135px" 
                    ontextchanged="tbxOffic_TextChanged"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="tbxOffic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" align="right">
                Position:</td>
            <td class="style2" align="left">
                <asp:DropDownList ID="DdlPosit" runat="server" Height="22px" Width="247px">
                    <asp:ListItem>Course Manager</asp:ListItem>
                    <asp:ListItem>Lecturer</asp:ListItem>
                    <asp:ListItem>Part-Time lecturer</asp:ListItem>
                    <asp:ListItem>Subject Head</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11" align="right">
                Personal
                Email:</td>
            <td class="style6" align="left">
                <asp:TextBox ID="tbxPersonalEmail" runat="server" Height="26px" Width="180px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="tbxPersonalEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" align="right">
                Is Admin:</td>
            <td class="style2" align="left">
                <asp:Label ID="lbAdmin" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style10" align="right">
                Staff Email:</td>
            <td class="style6" align="left">
                <asp:Label ID="lbEmail" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2" align="left">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3" align="left">
                <strong>Staff Particulars</strong></td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3" align="left">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" align="right">
                Name:</td>
            <td class="style2" align="left">
                <asp:Label ID="lbName" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style11" align="right">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" align="right">
                Date Of Birth :</td>
            <td class="style2" align="left">
                <asp:Label ID="lbDOB" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;</td>
            <td class="style11" align="right">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" align="right">
                Gender:</td>
            <td class="style2" align="left">
                <asp:Label ID="lbGender" runat="server" Text="Label"></asp:Label>
                -</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" align="right">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" align="right">
                Contact No:</td>
            <td class="style2" align="left">
                <asp:TextBox ID="tbxMoblie" runat="server" Width="166px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbxMoblie" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="tbxMoblie" ErrorMessage="Invalid Contact" 
                    ForeColor="#CC0000" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
            </td>
            <td class="style11" align="right">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</asp:Content>
