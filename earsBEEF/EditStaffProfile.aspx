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
                <asp:Label ID="lbSchool" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2" align="right">
                Office No:</td>
            <td class="style2" align="left">
                <asp:Label ID="Label1" runat="server" Text="6780"></asp:Label>
&nbsp;<asp:TextBox ID="tbxOffic" runat="server" Height="19px" Width="95px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="tbxOffic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="tbxOffic" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" align="right">
                Position:</td>
            <td class="style2" align="left">
                <asp:Label ID="lbPost" runat="server" Text="Label"></asp:Label>
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
