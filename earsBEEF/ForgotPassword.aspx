<%@ Page Title="" Language="C#" MasterPageFile="MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EARS.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 165px;
        }
        .style3
        {
            width: 555px;
        }
        .style4
        {
            font-size: medium;
        }
        .style5
        {
            font-size: medium;
            font-weight: bold;
        }
        .style8
        {
            width: 390px;
        }
        .style9
        {
            font-size: small;
        }
        .style10
        {
            width: 165px;
            font-size: small;
        }
        .style13
        {
            width: 166px;
        }
        .style15
        {
            width: 166px;
            height: 28px;
        }
        .style16
        {
            height: 28px;
        }
        .style17
        {
        }
        .style18
        {
            width: 103px;
        }
        .style19
        {
            width: 409px;
        }
        .style20
        {
            width: 102px;
            height: 28px;
        }
        .style21
        {
            width: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
    <asp:MultiView ID="mv" runat="server" ActiveViewIndex="0">
            <br />
            <br />
            <br />
            <br />
        <asp:View ID="vaStud" runat="server">
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="164px" Width="153px" />
                        <br />
                        <br />
                        <span class="style5">For Student:</span><br /> <span class="style9">Login ID is 
                        your Admin Number </span><span class="style10">(eg. 1234567E)</span><br class="style9" />
                        <span class="style9">Email is your TP Email<br />
                        <br />
                        <span class="style5">For Staff:</span><br class="style9" /> Email is your TP 
                        Email</span></td>
                        <td class="style3" valign="top">
                            <table style="width:100%;">
                                <tr>
                                    <td class="style17" colspan="3">
                                        <asp:Label ID="lblTitle3" runat="server" CssClass="style4" Font-Bold="True" 
                                            Text="Validate Account"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        <asp:Label ID="lblId0" runat="server" CssClass="style4" Text="Login ID"></asp:Label>
                                    </td>
                                    <td class="style15">
                                        <asp:TextBox ID="tbxId" runat="server" Width="156px"></asp:TextBox>
                                    </td>
                                    <td class="style16">
                                        <asp:RequiredFieldValidator ID="rfvID0" runat="server" 
                                            ControlToValidate="tbxId" CssClass="style4" 
                                            ErrorMessage="Please enter Login ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style21" valign="top">
                                        <asp:Label ID="lblEmail0" runat="server" CssClass="style4" Text="Email "></asp:Label>
                                    </td>
                                    <td class="style13" valign="top">
                                        <span class="style4">
                                        <asp:TextBox ID="tbxEmail" runat="server" Width="157px"></asp:TextBox>
                                        </span>
                                    </td>
                                    <td valign="top">
                                        <asp:RequiredFieldValidator ID="rfvEmail0" runat="server" 
                                            ControlToValidate="tbxEmail" CssClass="style4" 
                                            ErrorMessage="Please enter Email " ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="revEmail0" runat="server" 
                                            ControlToValidate="tbxEmail" CssClass="style4" 
                                            ErrorMessage="Please Input Valid Email" ForeColor="Red" 
                                            ValidationExpression="\w+([-+.']\w+)*@student.tp.edu.sg*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                            </table>
                        <br />
                            <asp:Label ID="Label5" runat="server" CssClass="style4"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                Text="Submit" />
                    </td>
                </tr>
            </table>

        </asp:View>
                    <br />
            <br />
            <asp:View ID="ValidatePsw" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td colspan="3">
                            Validate Email Password</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style8">
                            &nbsp;</td>
                        <td rowspan="2">
                            <span class="style5">Notice:</span><br /> Please Check your Email for Validate 
                            Password</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Password Email&nbsp;
                        </td>
                        <td class="style8">
                            <asp:TextBox ID="tbxPEmail" runat="server" Width="202px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="tbxPEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:Button ID="btnSubmit1" runat="server" onclick="btnSubmit1_Click" 
                    Text="Submit" />
        </asp:View>
            <br />
                        <br />
            <asp:View ID="changePsw" runat="server">
                <br />
                <asp:Label ID="lblTitle2" runat="server" Font-Bold="True" 
                    style="font-size: medium; " Text="Change New Password"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblPwChange1" runat="server" Text="New Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbxPwC1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewPw" runat="server" 
                    ControlToValidate="tbxPwC1" ErrorMessage="Enter New Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                &nbsp;<br />
                <asp:Label ID="lblPwChange2" runat="server" Text="Retype New Password"></asp:Label>
                &nbsp;
                <asp:TextBox ID="tbxPwC2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewPw2" runat="server" 
                    ControlToValidate="tbxPwC2" ErrorMessage="Re-Enter New Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:CompareValidator ID="cvPw" runat="server" ControlToCompare="tbxPwC1" 
                    ControlToValidate="tbxPwC2" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button1_Click" 
                    Text="Confirm" />
                <br />
        </asp:View>
        <br />
        <asp:View ID="pswSuccessful" runat="server">
            Change Password Successful<br />
            <br />
            <asp:Button ID="btnBack" runat="server" Height="25px" onclick="Button1_Click" 
                Text="Back" Width="73px" />
            <br />
        </asp:View>
            <br />
            <br />
    </asp:MultiView>
<br />
<br />
<br />
<br />
<br />

</asp:Content>
