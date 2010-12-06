<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="EditStudProfile.aspx.cs" Inherits="earsBEEF.EditStudProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 122px;
        }
        .style3
        {
            width: 290px;
        }
        .style4
        {
            width: 173px;
            text-align: right;
        }
        .style5
        {
            width: 186px;
        }
        .style6
        {
            width: 103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="width: 99%;">
        <tr>
            <td class="style12" colspan="2">
                <strong style="text-align: left">Student Profile</strong></td>
            <td class="style6">
                </td>
            <td class="style11" align="right">
                </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                </td>
            <td class="style6">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style4">
                Administration Number:</td>
            <td class="style12" colspan="2" align="left">
            &nbsp;&nbsp;<asp:Label ID="lbAdmin" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style34" colspan="4">
                </td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                <strong>Acadamic&nbsp;Information</strong></td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                </td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Student Type:</td>
            <td class="style3" align="left">
                <asp:Label ID="lbST" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style6">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style4" align="right">
                School:</td>
            <td class="style3" align="left">
                <asp:DropDownList ID="ddlSchool" runat="server" Height="22px" Width="202px" 
                    AutoPostBack="True" 
                    onselectedindexchanged="ddlSchool_SelectedIndexChanged">
                    <asp:ListItem Value="AS">Applied Science</asp:ListItem>
                    <asp:ListItem Value="BS">Business</asp:ListItem>
                    <asp:ListItem Value="DS">Design</asp:ListItem>
                    <asp:ListItem Value="EN">Engineering</asp:ListItem>
                    <asp:ListItem Value="HSS">Humanities &amp; Social Science</asp:ListItem>
                    <asp:ListItem Value="IIT">Informatics &amp; IT </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Course:</td>
            <td class="style3" align="left">
                <asp:DropDownList ID="DdlCourse" runat="server" Height="24px" Width="155px">
                </asp:DropDownList>
            </td>
            <td class="style6">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style3" align="left">
                </td>
            <td class="style6">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style12" colspan="4" align="left">
                <strong>Student Paticulars</strong></td>
        </tr>
        <tr>
            <td class="style33" colspan="4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Name:</td>
            <td class="style3" align="left">
                <asp:Label ID="lbName" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style6" align="right">
                T-Shirt Size:</td>
            <td class="style10" align="left">
                <asp:DropDownList ID="ddlsize" runat="server" Height="26px" Width="84px">
                    <asp:ListItem>XS</asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>L</asp:ListItem>
                    <asp:ListItem>XL</asp:ListItem>
                    <asp:ListItem>XXL</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Date Of Birth:</td>
            <td class="style3" align="left">
                <asp:Label ID="lbDOB" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style11" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Gender:</td>
            <td class="style3" align="left">
                <asp:Label ID="lbGender" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style10" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                &nbsp;</td>
            <td class="style3" align="left">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style10" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" valign="top" align="right">
                Contact :</td>
            <td class="style3" align="left" valign="top">
                <asp:TextBox ID="tbxContact" runat="server" Width="158px" Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="tbxContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="tbxContact" ErrorMessage="Invalid Contact" 
                    ForeColor="#CC0000" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                </td>
            <td class="style6" align="right" valign="top">
                &nbsp;</td>
            <td class="style42" align="left" valign="top">
                &nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Emergency Contact:</td>
            <td class="style3" align="left">
                <asp:TextBox ID="tbxEmergContact" runat="server" Width="158px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="tbxEmergContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="tbxEmergContact" 
                    ErrorMessage="Invalid Contact" ForeColor="#CC0000" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                </td>
            <td class="style6">
                </td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style4">
                TP
                Email:</td>
            <td class="style3">
                <asp:Label ID="lbTpEmail" runat="server" Text="Label"></asp:Label>
                </td>
            <td class="style27" align="left" colspan="2">
                </td>
        </tr>
    </table>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    <br />
</asp:Content>
