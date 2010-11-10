<%@ Page Title="" Language="C#" MasterPageFile="../MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddStudentForm.aspx.cs" Inherits="earsBEEF.AddStudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
  
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 99%;">
        <tr>
            <td class="style50" colspan="2">
                <strong style="text-align: left">Admin Controls</strong></td>
            <td class="style50">
                </td>
            <td class="style51" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                </td>
            <td class="style4">
                </td>
            <td class="style62">
                </td>
        </tr>
        <tr>
            <td class="style6">
                Administration Number:</td>
            <td class="style67" colspan="2" align="left">
                <asp:TextBox ID="tbxAdminNum" runat="server" style="margin-left: 0px" 
                    Width="178px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbxAdminNum" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="tbxAdminNum" EnableTheming="True" 
                    ErrorMessage="* Invaild Admin number" ForeColor="Red" 
                    ValidationExpression="\d{7}\w(1)"></asp:RegularExpressionValidator>
            </td>
            <td class="style63">
                </td>
        </tr>
        <tr>
            <td class="style19">
                Matric Card Number:</td>
            <td class="style68" colspan="2" align="left">
                <asp:TextBox ID="tbxMC" runat="server" Width="178px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="tbxMC" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="tbxMC" EnableTheming="True" 
                    ErrorMessage="* Invaild Matic No" ForeColor="Red" 
                    ValidationExpression="\w(T) + \w(B) + \d(5)"></asp:RegularExpressionValidator>
            </td>
            <td class="style64">
                </td>
        </tr>
        <tr>
            <td class="style20" colspan="4">
                </td>
        </tr>
        <tr>
            <td class="style21" colspan="4">
                <strong>Acadamic&nbsp;Information</strong></td>
        </tr>
        <tr>
            <td class="style61">
                Student Type:</td>
            <td class="style69" align="left">
                <asp:DropDownList ID="DdlStudType" runat="server" Height="22px" Width="229px">
                    <asp:ListItem Value="FT">Full Time</asp:ListItem>
                    <asp:ListItem Value="PT">Part Time</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style24">
                </td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style60">
                School:</td>
            <td class="style70" align="left">
                <asp:DropDownList ID="DdlStage0" runat="server" Height="22px" Width="230px">
                    <asp:ListItem Value="AS">Applied Science</asp:ListItem>
                    <asp:ListItem Value="BS">Business</asp:ListItem>
                    <asp:ListItem Value="DS">Design</asp:ListItem>
                    <asp:ListItem Value="EN">Engine</asp:ListItem>
                    <asp:ListItem Value="HSS">Humanities &amp; Social Science</asp:ListItem>
                    <asp:ListItem Value="IIT">Informatics &amp; IT </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style27">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style59">
                Course:</td>
            <td class="style71" align="left">
                <asp:DropDownList ID="DdlCourse" runat="server" Height="24px" Width="229px">
                </asp:DropDownList>
            </td>
            <td class="style31">
                </td>
            <td class="style65">
                </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style72" align="left">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33" colspan="4" align="left">
                <strong>Student Paticulars</strong></td>
        </tr>
        <tr>
            <td class="style58">
                Name:</td>
            <td class="style73" align="left">
                <asp:TextBox ID="tbxName" runat="server" Width="203px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style34">
                T-Shirt Size:</td>
            <td class="style35" align="left">
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
            <td class="style57">
                Date Of Birth:</td>
            <td class="style74" align="left">
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            &nbsp;/ <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
            &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style36" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style56">
                Gender:</td>
            <td class="style75" align="left">
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" />
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" />
            </td>
            <td class="style37">
                &nbsp;</td>
            <td class="style38" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style55">
                Nationality: </td>
            <td class="style76" align="left">
                <asp:DropDownList ID="DdlNation" runat="server" Height="22px" Width="176px">
                    <asp:ListItem Value="SG">Singaporean</asp:ListItem>
                    <asp:ListItem Value="PR">Permanent Resident</asp:ListItem>
                    <asp:ListItem Value="OT">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style41">
                </td>
            <td class="style42" align="left">
                </td>
        </tr>
        <tr>
            <td class="style54">
                Is Student leader:</td>
            <td class="style77" align="left">
                <asp:RadioButton ID="rbSlYes" runat="server" Text="Yes" />
                <asp:RadioButton ID="rbSlNo" runat="server" Text="No" />
                </td>
            <td class="style45">
                </td>
            <td class="style46" align="left">
                </td>
        </tr>
        <tr>
            <td class="style53">
                Contact:</td>
            <td class="style78" align="left">
                <asp:TextBox ID="tbxContact" runat="server" Width="205px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="tbxContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style25">
                Emergency Contact:</td>
            <td class="style26" align="left">
                <asp:TextBox ID="tbxEmergContact" runat="server" Width="205px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="tbxEmergContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style52">
                TP
                Email:</td>
            <td class="style79" align="left">
                <asp:TextBox ID="tbxEmail" runat="server" Width="205px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="tbxEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style47">
                </td>
            <td class="style48">
                </td>
        </tr>
        <tr>
            <td class="style49">
                &nbsp;</td>
            <td class="style80">
                &nbsp;</td>
            <td class="style49" align="left" colspan="2">
                </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style17">
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" 
                    style="text-align: right" />
            </td>
            <td align="left" style="text-align: left" class="style30">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
