<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="DeleteUpdateStud.aspx.cs" Inherits="earsBEEF.DeleteUpdateStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            text-decoration: underline;
        }
        .style4
        {
            width: 121px;
        }
        .style5
        {
            width: 269px;
        }
        .style6
        {
            width: 1047px;
            height: 29px;
        }
        .style7
        {
            width: 1047px;
        }
        .style8
        {
            width: 1055px;
            height: 31px;
        }
        .style27
        {
            width: 1047px;
            height: 33px;
        }
        .style28
        {
            width: 671px;
            height: 16px;
        }
        .style30
        {
            width: 1047px;
            height: 16px;
        }
        .style34
        {
            width: 671px;
            height: 31px;
        }
        .style35
        {
            height: 31px;
        }
        .style36
        {
            width: 1047px;
            height: 40px;
        }
        .style37
        {
            width: 671px;
        }
        .style38
        {
            width: 671px;
            height: 29px;
        }
        .style39
        {
            height: 29px;
        }
        .style40
        {
            width: 1055px;
        }
        .style41
        {
            width: 1055px;
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<table style="width: 99%; color: #000000;">
        <tr>
            <td class="style50" colspan="2">
                <strong style="text-align: left">Admin Controls</strong></td>
            <td class="style7">
                </td>
            <td class="style51" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                </td>
            <td class="style7">
                </td>
            <td class="style62">
                </td>
        </tr>
        <tr>
            <td class="style38">
                Administration Number:</td>
            <td class="style39" colspan="2" align="left">
            &nbsp;&nbsp;<asp:Label ID="lbAdmin" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="style6" colspan="4">
                </td>
        </tr>
        <tr>
            <td class="style27" colspan="4">
                <strong>Acadamic&nbsp;Information</strong></td>
        </tr>
        <tr>
            <td class="style27" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style37">
                Student Type:</td>
            <td class="style40" align="left">
                <asp:DropDownList ID="DdlStudType" runat="server" Height="22px" Width="229px">
                    <asp:ListItem Value="FT">Full Time</asp:ListItem>
                    <asp:ListItem Value="PT">Part Time</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style37">
                School:</td>
            <td class="style40" align="left">
        <a href="../LoginPage.aspx">
                <asp:DropDownList ID="ddlSchool" runat="server" AutoPostBack="True" 
                    Height="16px" onselectedindexchanged="ddlSchool_SelectedIndexChanged" 
                    Width="181px">
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>Applied Science</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Design</asp:ListItem>
                    <asp:ListItem>Engineering</asp:ListItem>
                    <asp:ListItem>Humanities &amp; Social Science</asp:ListItem>
                    <asp:ListItem>Informatics &amp; IT </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style37">
                Course:</td>
            <td class="style40" align="left">
                <asp:DropDownList ID="DdlCourse" runat="server" Height="24px" Width="155px">
                </asp:DropDownList>
            </td>
            <td class="style7">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style37">
                </td>
            <td class="style40" align="left">
                </td>
            <td class="style7">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style36" colspan="4" align="left">
                <strong>Student Paticulars</strong></td>
        </tr>
        <tr>
            <td class="style37">
                Name:</td>
            <td class="style40" align="left">
                <asp:TextBox ID="tbxName" runat="server" Width="203px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style7">
                T-Shirt Size:</td>
            <td align="left">
                <asp:DropDownList ID="ddlSize" runat="server" Height="16px" Width="60px">
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
            <td class="style37">
                Date Of Birth:</td>
            <td class="style40" align="left">
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                <asp:DropDownList ID="DdlMonth" runat="server" Height="20px" Width="101px" 
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
            &nbsp;/ <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px" 
                    AutoPostBack="True">
                    <asp:ListItem>Year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                </asp:DropDownList>
            &nbsp;</td>
            <a href="../LoginPage.aspx">
            <td class="style7">
                </td>
            <a href="../LoginPage.aspx" class="style2">
            <td align="left">
                </td>
        </tr>
        <tr>
            <td class="style37">
                Gender:</td>
            <td class="style40" align="left">
                &nbsp;
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="gender" 
                    Checked="True" ValidationGroup="gender" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" 
                    GroupName="gender" ValidationGroup="gender" />
            &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style7">
                </td>
            <td class="style5" align="left">
                </td>
        </tr>
        <tr>
            <td class="style37">
                Is Student leader:</td>
            <td class="style40" align="left">
                &nbsp;&nbsp;<asp:RadioButton ID="rbYes" runat="server" Text="Yes" GroupName="admin" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbNo" runat="server" Text="No" GroupName="admin" 
                    Checked="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style7">
                </td>
            <td align="left">
                </td>
        </tr>
        <tr>
            <td class="style37">
                </td>
            <td class="style40" align="left">
                </td>
        <a href="../LoginPage.aspx">
            <td class="style5">
                </td>
            <td align="left">
                </td>
        </tr>
        <tr>
            <td class="style37">
                Contact:</td>
            <td class="style40" align="left">
                <asp:TextBox ID="tbxContact" runat="server" Width="162px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="tbxContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                    runat="server" ControlToValidate="tbxContact" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                </td>
        <a href="../LoginPage.aspx">
            <td class="style7">
                </td>
            <td class="style7" align="left">
                &nbsp;
                </td>
        </tr>
        <tr>
            <td class="style28">
                Emergency Contact:</td>
            <td class="style41" align="left">
                <asp:TextBox ID="tbxEmergContact" runat="server" Width="161px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="tbxEmergContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" 
                    runat="server" ControlToValidate="tbxEmergContact" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                </td>
        <a href="../LoginPage.aspx">
            <td class="style30">
                </td>
            <td class="style30" align="left">
                </td>
        </tr>
        <tr>
            <td class="style37">
                TP
                Email:</td>
            <td class="style40" align="left">
                <asp:TextBox ID="tbxEmail" runat="server" Width="237px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="tbxEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                    runat="server" ControlToValidate="tbxEmail" ErrorMessage="Invaild Email" 
                    ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@student.tp.edu.sg*"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td class="style8">
                </td>
            <td class="style35" align="left" colspan="2">
                </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnUpdate" runat="server" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
        Text="Cancel" />
</asp:Content>
