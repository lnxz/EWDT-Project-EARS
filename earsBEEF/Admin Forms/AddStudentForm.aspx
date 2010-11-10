<%@ Page Title="" Language="C#" MasterPageFile="../MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddStudentForm.aspx.cs" Inherits="earsBEEF.AddStudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 11px;
        }
        .style6
        {
            width: 1002px;
            height: 21px;
            text-align: right;
        }
        .style7
        {
            height: 21px;
        }
        .style13
        {
            height: 44px;
        }
        .style17
        {
            width: 428px;
            height: 31px;
            text-align: right;
        }
        .style19
        {
            width: 1002px;
            height: 44px;
            text-align: right;
        }
        .style20
        {
            height: 5px;
        }
        .style21
        {
            width: 1002px;
            height: 26px;
        }
        .style23
        {
            height: 41px;
            width: 358px;
        }
        .style24
        {
            width: 1002px;
            height: 41px;
        }
        .style25
        {
            width: 1002px;
            height: 27px;
        }
        .style26
        {
            height: 27px;
            width: 358px;
        }
        .style27
        {
            width: 1002px;
            height: 23px;
        }
        .style28
        {
            height: 23px;
            width: 358px;
        }
        .style30
        {
            height: 31px;
        }
        .style31
        {
            width: 1002px;
            height: 31px;
        }
        .style32
        {
            height: 18px;
        }
        .style33
        {
            height: 25px;
        }
        .style34
        {
            width: 1002px;
            height: 35px;
        }
        .style35
        {
            height: 35px;
            width: 358px;
        }
        .style36
        {
            height: 26px;
            width: 358px;
        }
        .style37
        {
            width: 1002px;
            height: 28px;
        }
        .style38
        {
            height: 28px;
            width: 358px;
        }
        .style41
        {
            width: 1002px;
            height: 30px;
        }
        .style42
        {
            height: 30px;
            width: 358px;
        }
        .style45
        {
            width: 1002px;
            height: 24px;
        }
        .style46
        {
            height: 24px;
            width: 358px;
        }
        .style47
        {
            width: 1002px;
            height: 34px;
        }
        .style48
        {
            height: 34px;
            width: 358px;
        }
        .style49
        {
            width: 1002px;
            height: 20px;
        }
        .style50
        {
            width: 1002px;
            height: 32px;
        }
        .style51
        {
            height: 32px;
            width: 358px;
        }
        .style52
        {
            width: 1002px;
            height: 34px;
            text-align: right;
        }
        .style53
        {
            height: 27px;
            text-align: right;
        }
        .style54
        {
            width: 1002px;
            height: 24px;
            text-align: right;
        }
        .style55
        {
            width: 1002px;
            height: 30px;
            text-align: right;
        }
        .style56
        {
            width: 1002px;
            height: 28px;
            text-align: right;
        }
        .style57
        {
            width: 1002px;
            height: 26px;
            text-align: right;
        }
        .style58
        {
            width: 1002px;
            height: 35px;
            text-align: right;
        }
        .style59
        {
            width: 1002px;
            height: 31px;
            text-align: right;
        }
        .style60
        {
            width: 1002px;
            height: 23px;
            text-align: right;
        }
        .style61
        {
            width: 1002px;
            height: 41px;
            text-align: right;
        }
        .style62
        {
            height: 11px;
            width: 358px;
        }
        .style63
        {
            height: 21px;
            width: 358px;
        }
        .style64
        {
            height: 44px;
            width: 358px;
        }
        .style65
        {
            height: 31px;
            width: 358px;
        }
        .style66
        {
            height: 18px;
            width: 358px;
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
    <br />
    <br />
    <br />
    <br />
    <br />
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
            <td class="style7">
                <asp:TextBox ID="tbxAdminNum" runat="server" style="margin-left: 0px" 
                    Width="178px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbxAdminNum" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style7">
                </td>
            <td class="style63">
                </td>
        </tr>
        <tr>
            <td class="style19">
                Matric Card Number:</td>
            <td class="style13">
                <asp:TextBox ID="tbxAdminPw" runat="server" Width="178px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="tbxAdminPw" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style13">
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
            <td class="style24">
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
            <td class="style27">
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
            <td class="style31">
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
            <td class="style32">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33" colspan="4">
                <strong>Student Paticulars</strong></td>
        </tr>
        <tr>
            <td class="style58">
                Name:</td>
            <td class="style34">
                <asp:TextBox ID="tbxName" runat="server" Width="203px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="tbxName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style34">
                T-Shirt Size:</td>
            <td class="style35">
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
            <td class="style21">
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
            <td class="style36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style56">
                Gender:</td>
            <td class="style37">
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" />
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" />
            </td>
            <td class="style37">
                &nbsp;</td>
            <td class="style38">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style55">
                Nationality: </td>
            <td class="style41">
                <asp:DropDownList ID="DdlNation" runat="server" Height="22px" Width="176px">
                    <asp:ListItem Value="SG">Singaporean</asp:ListItem>
                    <asp:ListItem Value="PR">Permanent Resident</asp:ListItem>
                    <asp:ListItem Value="OT">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style41">
                </td>
            <td class="style42">
                </td>
        </tr>
        <tr>
            <td class="style54">
                Is Student leader:</td>
            <td class="style45">
                <asp:RadioButton ID="rbSlYes" runat="server" Text="Yes" />
                <asp:RadioButton ID="rbSlNo" runat="server" Text="No" />
                </td>
            <td class="style45">
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="style53">
                Contact:</td>
            <td class="style25">
                <asp:TextBox ID="tbxContact" runat="server" Width="205px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="tbxContact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style25">
                Emergency Contact:</td>
            <td class="style26">
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
            <td class="style47">
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
            <td class="style49">
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
