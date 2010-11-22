<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddStaffForm.aspx.cs" Inherits="earsBEEF.AddStaffForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="style3" colspan="3" align="left">
                <strong>Admin Controls</strong></td>
            <td class="style6" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" align="right">
                Password:</td>
            <td class="style2" align="left">
&nbsp;<asp:TextBox ID="tbxPw" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnGenerate" runat="server" Text="Generate" Width="100px" 
                    onclick="btnGenerate_Click" CausesValidation="False" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
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
            <td class="style5" align="right">
                School:</td>
            <td class="style2" align="left">
                <asp:DropDownList ID="DdlSch" runat="server" Height="22px" Width="248px">
                    <asp:ListItem Value="AS">Applied Science</asp:ListItem>
                    <asp:ListItem Value="BS">Business </asp:ListItem>
                    <asp:ListItem Value="DS">Design</asp:ListItem>
                    <asp:ListItem Value="EN">Engine</asp:ListItem>
                    <asp:ListItem Value="HSS">Humanities &amp; Social Science</asp:ListItem>
                    <asp:ListItem Value="IIT">Informatics &amp; IT </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11" align="right">
                Office No:</td>
            <td class="style6" align="left">
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
                Department:</td>
            <td class="style2" align="left">
                <asp:DropDownList ID="DdlDept" runat="server" Height="21px" Width="247px">
                    <asp:ListItem>Office</asp:ListItem>
                    <asp:ListItem>Human Resourse</asp:ListItem>
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
                Position:</td>
            <td class="style2" align="left">
                <asp:DropDownList ID="DdlPosit" runat="server" Height="22px" Width="247px">
                    <asp:ListItem>Lecturer</asp:ListItem>
                    <asp:ListItem>Subject Leader</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style10" align="right">
                Staff Email:</td>
            <td class="style6" align="left">
                <asp:TextBox ID="tbxWorkEmail" runat="server" Height="26px" Width="180px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="tbxWorkEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Is Admin:</td>
            <td class="style2" align="left">
                <asp:RadioButton ID="rbYes" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbNo" runat="server" Text="No" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
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
                <asp:TextBox ID="tbxName" runat="server" Width="194px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                </asp:DropDownList>
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
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" />
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" />
            </td>
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
                <asp:TextBox ID="tbxMoblie" runat="server" Width="205px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbxMoblie" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="tbxMoblie" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
            </td>
            <td class="style11" align="right">
                Telephone No:</td>
            <td class="style6" align="left">
                <asp:TextBox ID="tbxTele" runat="server" Width="205px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="tbxTele" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="tbxTele" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
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
                <asp:Button ID="btnConfirm" runat="server" 
                    Text="Confirm" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
