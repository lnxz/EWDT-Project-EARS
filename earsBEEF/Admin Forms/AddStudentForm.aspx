<%@ Page Title="" Language="C#" MasterPageFile="../MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="AddStudentForm.aspx.cs" Inherits="earsBEEF.AddStudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 120px;
        }
        .style3
        {
            width: 162px;
        }
        .style4
        {
            width: 145px;
        }
        .style5
        {
            width: 386px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
            width: 162px;
            height: 28px;
        }
        .style8
        {
            width: 386px;
            height: 28px;
        }
        .style9
        {
            width: 120px;
            height: 28px;
        }
        .style10
        {
            height: 28px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 99%;">
        <tr>
            <td class="style50" colspan="2">
                <strong style="text-align: left">Admin Controls</strong></td>
            <td class="style2">
                </td>
            <td class="style51" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                </td>
            <td class="style2">
                </td>
            <td class="style62">
                </td>
        </tr>
        <tr>
            <td class="style3">
                Administration Number:</td>
            <td class="style67" colspan="2" align="left">
                <asp:TextBox ID="tbxAdminNum" runat="server" style="margin-left: 0px" 
                    Width="143px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbxAdminNum" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="tbxAdminNum" EnableTheming="True" 
                    ErrorMessage="* Invaild Admin number" ForeColor="Red" 
                    ValidationExpression="\d{7}\w{1}"></asp:RegularExpressionValidator>
            </td>
            <td class="style63">
                </td>
        </tr>
        <tr>
            <td class="style6" colspan="4">
                </td>
        </tr>
        <tr>
            <td class="style21" colspan="4">
                <strong>Acadamic&nbsp;Information</strong></td>
        </tr>
        <tr>
            <td class="style3">
                Student Type:</td>
            <td class="style5" align="left">
                <asp:DropDownList ID="DdlStudType" runat="server" Height="22px" Width="229px">
                    <asp:ListItem Value="FT">Full Time</asp:ListItem>
                    <asp:ListItem Value="PT">Part Time</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                </td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style3">
                School:</td>
            <td class="style5" align="left">
                <asp:DropDownList ID="ddlSchool" runat="server" Height="22px" Width="202px" 
                    AutoPostBack="True" 
                    onselectedindexchanged="ddlSchool_SelectedIndexChanged">
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem Value="AS">Applied Science</asp:ListItem>
                    <asp:ListItem Value="BS">Business</asp:ListItem>
                    <asp:ListItem Value="DS">Design</asp:ListItem>
                    <asp:ListItem Value="EN">Engineering</asp:ListItem>
                    <asp:ListItem Value="HSS">Humanities &amp; Social Science</asp:ListItem>
                    <asp:ListItem Value="IIT">Informatics &amp; IT </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style3">
                Course:</td>
            <td class="style5" align="left">
                <asp:DropDownList ID="DdlCourse" runat="server" Height="24px" Width="155px">
                </asp:DropDownList>
            </td>
            <td class="style2">
                </td>
            <td class="style65">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5" align="left">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33" colspan="4" align="left">
                <strong>Student Paticulars</strong></td>
        </tr>
        <tr>
            <td class="style3">
                Name:</td>
            <td class="style5" align="left">
                <asp:TextBox ID="tbxName" runat="server" Width="203px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                T-Shirt Size:</td>
            <td class="style35" align="left">
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
            <td class="style3">
                Date Of Birth:</td>
            <td class="style5" align="left">
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ 
                <asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="113px" 
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
            <td class="style2">
                &nbsp;</td>
            <td class="style36" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Gender:</td>
            <td class="style8" align="left">
                &nbsp;
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="gender" 
                    Checked="True" ValidationGroup="gender" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" 
                    GroupName="gender" ValidationGroup="gender" />
            &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style9">
                </td>
            <td class="style10" align="left">
                </td>
        </tr>
        <tr>
            <td class="style3">
                Is Student leader:</td>
            <td class="style5" align="left">
                &nbsp;&nbsp;<asp:RadioButton ID="rbYes" runat="server" Text="Yes" GroupName="admin" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbNo" runat="server" Text="No" GroupName="admin" 
                    Checked="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style2">
                </td>
            <td class="style46" align="left">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5" align="left">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style46" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Contact:</td>
            <td class="style5" align="left">
                <asp:TextBox ID="tbxContact" runat="server" Width="162px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="tbxContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                    runat="server" ControlToValidate="tbxContact" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26" align="left">
                &nbsp;
                </td>
        </tr>
        <tr>
            <td class="style3">
                Emergency Contact:</td>
            <td class="style5" align="left">
                <asp:TextBox ID="tbxEmergContact" runat="server" Width="161px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="tbxEmergContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" 
                    runat="server" ControlToValidate="tbxEmergContact" ErrorMessage="Invaild Contact" 
                    ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                TP
                Email:</td>
            <td class="style5" align="left">
                <asp:TextBox ID="tbxEmail" runat="server" Width="237px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="tbxEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                    runat="server" ControlToValidate="tbxEmail" ErrorMessage="Invaild Email" 
                    ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@student.tp.edu.sg*"></asp:RegularExpressionValidator>
            </td>
            <td class="style2">
                </td>
            <td class="style48">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style49" align="left" colspan="2">
                </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" 
        onclick="btnConfirm_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </asp:Content>
