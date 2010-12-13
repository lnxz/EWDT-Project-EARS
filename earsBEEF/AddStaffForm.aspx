<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddStaffForm.aspx.cs" Inherits="earsBEEF.AddStaffForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">

        .style2
        {
            text-decoration: underline;
        }
        .style3
        {
            text-decoration: none;
        }
        .style4
        {
            color: #000000;
        }
        .style5
        {
            text-decoration: none;
            color: #000000;
        }

        .style6
        {
            width: 85px;
        }
        .style7
        {
            width: 322px;
        }
        .style8
        {
            width: 322px;
            height: 28px;
        }
        .style9
        {
            height: 28px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lbNote" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />

    <table style="width:100%;">
        <tr>
            <td class="style5" colspan="3" align="left">
                <strong>Admin Controls</strong></td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3" align="left">
                <strong>Staff - Office Information</strong></td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3" align="left">
                &nbsp;</td>
            <td class="style4">
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
            <td class="style4" align="right">
                Office No:</td>
            <td class="style6" align="left">
                <asp:Label ID="Label1" runat="server" Text="6780" CssClass="style4"></asp:Label>
&nbsp;<asp:TextBox ID="tbxOffic" runat="server" Height="19px" Width="95px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="tbxOffic" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style4"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="tbxOffic" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{4}" CssClass="style4"></asp:RegularExpressionValidator>
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
            <td class="style4" align="right">
                Personal
                Email:</td>
            <td class="style6" align="left">
                <asp:TextBox ID="tbxPersonalEmail" runat="server" Height="26px" Width="180px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="tbxPersonalEmail" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" align="right">
                Is Admin:</td>
            <td align="left">
                <asp:RadioButton ID="rbYes" runat="server" Text="Yes" GroupName="admin" 
                    CssClass="style4" />
                <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RadioButton ID="rbNo" runat="server" Text="No" GroupName="admin" 
                    CssClass="style4" />
            </td>
            <td class="style4" align="right">
                Staff Email:</td>
            <td class="style6" align="left">
                <asp:TextBox ID="tbxWorkEmail" runat="server" Height="26px" Width="180px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="tbxWorkEmail" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style4"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                    runat="server" ControlToValidate="tbxWorkEmail" ErrorMessage="Invaild Email" 
                    ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@tp.edu.sg*" 
                    CssClass="style4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3" align="left">
                <strong>Staff Particulars</strong></td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Name:</td>
            <td align="left">
                <asp:TextBox ID="tbxName" runat="server" Width="194px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style4"></asp:RequiredFieldValidator>
            </td>
            <td class="style4" align="right">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Date Of Birth :</td>
            <td align="left">
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
                <span class="style4">&nbsp;/ 
                </span> 
                <asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="108px" 
                    AutoPostBack="True" onselectedindexchanged="DdlMonth_SelectedIndexChanged">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem Value="01">January</asp:ListItem>
                    <asp:ListItem Value="02">February</asp:ListItem>
                    <asp:ListItem Value="03">March</asp:ListItem>
                    <asp:ListItem Value="04">April</asp:ListItem>
                    <asp:ListItem Value="05">May</asp:ListItem>
                    <asp:ListItem Value="06">June</asp:ListItem>
                    <asp:ListItem Value="07">July</asp:ListItem>
                    <asp:ListItem Value="08">August</asp:ListItem>
                    <asp:ListItem Value="09">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <span class="style4">&nbsp;/ </span> <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
                <span class="style4">&nbsp;&nbsp;</span></td>
            <td class="style4" align="right">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Gender:</td>
            <td class="style3" align="left">
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="gender" 
                    CssClass="style4" />
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" 
                    GroupName="gender" CssClass="style4" />
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="right">
                Contact No:</td>
            <td align="left">
                <asp:TextBox ID="tbxMoblie" runat="server" Width="205px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbxMoblie" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style4"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="tbxMoblie" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}" CssClass="style4"></asp:RegularExpressionValidator>
            </td>
            <td class="style4" align="right">
                Telephone No:</td>
            <td class="style6" align="left">
                <asp:TextBox ID="tbxTele" runat="server" Width="161px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="tbxTele" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style4"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="tbxTele" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}" CssClass="style4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        </table>
    <table style="width:100%;">
        <tr>
            <td style="text-align: right" class="style8">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                    PostBackUrl="~/Admin Forms/AddBulkStaff.aspx" Text="Add Bulk Staff" 
                    Width="129px" />
            </td>
            <td style="text-align: right">
                <asp:Button ID="btnConfirm" runat="server" 
                    Text="Confirm" onclick="btnConfirm_Click" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
