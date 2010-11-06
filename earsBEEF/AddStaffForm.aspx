<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddStaffForm.aspx.cs" Inherits="earsBEEF.AddStaffForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="width:100%;">
        <tr>
            <td class="style3" colspan="3">
                <strong>Admin Controls</strong></td>
            <td class="style3" align="right">
                <asp:Button ID="btnPreview" runat="server" Text="Preview" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Staff ID:</td>
            <td class="style2">
                <asp:TextBox ID="tbxID" runat="server" Width="143px"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
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
                <asp:DropDownList ID="DdlSch" runat="server" Height="22px" Width="163px">
                </asp:DropDownList>
            </td>
            <td class="style11">
                Office No:</td>
            <td>
                <asp:TextBox ID="tbxOffic" runat="server" Height="21px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Department:</td>
            <td class="style2">
                <asp:DropDownList ID="DdlDept" runat="server" Height="22px" Width="163px">
                </asp:DropDownList>
            </td>
            <td class="style11">
                Email:</td>
            <td>
                <asp:TextBox ID="tbxWorkEmail" runat="server" Height="26px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Position:</td>
            <td class="style2">
                <asp:DropDownList ID="DdlPosit" runat="server" Height="22px" Width="163px">
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
                    <asp:ListItem>Racist</asp:ListItem>
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
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Gender:</td>
            <td class="style2">
                <asp:DropDownList ID="DdlGender" runat="server" Height="22px" Width="163px">
                </asp:DropDownList>
            </td>
            <td class="style11">
                Citizenship :</td>
            <td class="style4">
                <asp:DropDownList ID="DdlCitiz" runat="server" Height="22px" Width="162px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Religion:</td>
            <td class="style2">
                <asp:DropDownList ID="DdlRelig" runat="server" Height="22px" Width="163px">
                </asp:DropDownList>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Nationality: </td>
            <td class="style2">
                <asp:DropDownList ID="DdlNation" runat="server" Height="22px" Width="162px">
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
            <td>
                Contact:</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Moblie No:</td>
            <td class="style2">
                <asp:TextBox ID="tbxMoblie" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td class="style11">
                Telephone No:</td>
            <td class="style4">
                <asp:TextBox ID="tbxTele" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Email:</td>
            <td class="style2">
                <asp:TextBox ID="tbxEmail" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
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
