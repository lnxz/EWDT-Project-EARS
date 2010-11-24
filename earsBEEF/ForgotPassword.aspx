<%@ Page Title="" Language="C#" MasterPageFile="MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EARS.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:Panel ID="Panel2" runat="server" Height="271px" Visible="False" 
            Width="567px">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server" 
                onactiveviewchanged="MultiView1_ActiveViewChanged">
                <asp:View ID="Vacc" runat="server">
                    <asp:Panel ID="Panel1" runat="server" Height="303px" Width="552px">
                        <asp:Label ID="lblTitle1" runat="server" style="font-size: xx-large; " 
                            Text="Validate Account"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblId" runat="server" Text="Login ID"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="tbxId" runat="server" Width="151px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="tbxId" 
                            ErrorMessage="Please enter Login ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="lblEmail" runat="server" Text="Email "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tbxEmail" runat="server" Width="151px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="tbxEmail" ErrorMessage="Please enter Email " ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                            ControlToValidate="tbxEmail" ErrorMessage="Please Input Valid Email" 
                            ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" onclick="Button1_Click" 
                            Text="Submit" />
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2">
                                Validate Email Password</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Password Email&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="tbxPEmail" runat="server" Width="202px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tbxPEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Button ID="btnSubmit1" runat="server" onclick="Button1_Click" 
                        Text="Submit" />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <br />
                    <asp:Label ID="lblTitle2" runat="server" style="font-size: xx-large; " 
                        Text="Change New Password"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblPwChange1" runat="server" Text="New Password"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
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
                <asp:View ID="View4" runat="server">
                    Change Password Successful<br />
                    <br />
                    <asp:Button ID="btnBack" runat="server" Height="34px" onclick="Button1_Click" 
                        Text="Back" Width="69px" />
                    <br />
                </asp:View>
            </asp:MultiView>
        </asp:Panel>
    </asp:Panel>

</asp:Content>
