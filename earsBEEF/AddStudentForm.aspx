<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="AddStudentForm.aspx.cs" Inherits="earsBEEF.AddStudentForm" %>
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
        }
        .style27
        {
            width: 1002px;
            height: 23px;
        }
        .style28
        {
            height: 23px;
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
        }
        .style36
        {
            height: 26px;
        }
        .style37
        {
            width: 1002px;
            height: 28px;
        }
        .style38
        {
            height: 28px;
        }
        .style41
        {
            width: 1002px;
            height: 30px;
        }
        .style42
        {
            height: 30px;
        }
        .style45
        {
            width: 1002px;
            height: 24px;
        }
        .style46
        {
            height: 24px;
        }
        .style47
        {
            width: 1002px;
            height: 34px;
        }
        .style48
        {
            height: 34px;
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
        }
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
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style6">
                Administration Number:</td>
            <td class="style7">
                <asp:TextBox ID="tbxAdminNum" runat="server" style="margin-left: 0px" 
                    Width="178px"></asp:TextBox>
            &nbsp;</td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style19">
                Matric Card Number:</td>
            <td class="style13">
                <asp:TextBox ID="tbxAdminPw" runat="server" Width="178px"></asp:TextBox>
            &nbsp;</td>
            <td class="style13">
                </td>
            <td class="style13">
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
            <td class="style24">
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
            <td class="style27">
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
            <td class="style31">
                Course:</td>
            <td class="style31">
                <asp:DropDownList ID="DdlCourse" runat="server" Height="24px" Width="229px">
                </asp:DropDownList>
            </td>
            <td class="style31">
                </td>
            <td class="style30">
                </td>
        </tr>
        <tr>
            <td class="style32">
                Year of Study</td>
            <td class="style32">
                <asp:TextBox ID="tbxYearOfStudy" runat="server" Width="205px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33" colspan="4">
                <strong>Student Paticulars</strong></td>
        </tr>
        <tr>
            <td class="style34">
                Name:</td>
            <td class="style34">
                <asp:TextBox ID="tbxName" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="style34">
                Race:</td>
            <td class="style35">
                <asp:DropDownList ID="DdlRace" runat="server" Height="22px" Width="161px">
                    <asp:ListItem>Chinese</asp:ListItem>
                    <asp:ListItem>Malay</asp:ListItem>
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style21">
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
            <td class="style37">
                Gender:</td>
            <td class="style37">
                <asp:RadioButton ID="rbMale" runat="server" Text="Male" />
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" />
            </td>
            <td class="style37">
                Citizenship :</td>
            <td class="style38">
                <asp:DropDownList ID="DdlCitiz" runat="server" Height="22px" Width="162px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style41">
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
            <td class="style45">
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
            <td class="style26">
                Contact:</td>
            <td class="style25">
                <asp:TextBox ID="tbxContact" runat="server" Width="205px"></asp:TextBox>
                </td>
            <td class="style25">
                Emergency Contact:</td>
            <td class="style26">
                <asp:TextBox ID="tbxEmergContact" runat="server" Width="205px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style47">
                Email:</td>
            <td class="style47">
                <asp:TextBox ID="tbxEmail" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td class="style47">
                </td>
            <td class="style48">
                </td>
        </tr>
        <tr>
            <td class="style49">
                T-Shirt Size:</td>
            <td class="style49">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="84px">
                    <asp:ListItem>XS</asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>L</asp:ListItem>
                    <asp:ListItem>XL</asp:ListItem>
                    <asp:ListItem>XXL</asp:ListItem>
                </asp:DropDownList>
                </td>
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
