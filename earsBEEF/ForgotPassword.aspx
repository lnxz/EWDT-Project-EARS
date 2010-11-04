<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedOut.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EARS.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="161px" Width="552px">
        <asp:Label ID="lblTitle1" runat="server" Text="Validate Account" 
            style="font-size: xx-large; "></asp:Label>
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
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="161px" Visible="False" 
            Width="567px">
            <asp:Label ID="lblTitle2" runat="server" 
                style="font-size: xx-large; " 
                Text="Change New Password"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblPwChange1" runat="server" Text="New Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbxPwC1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNewPw" runat="server" 
                ControlToValidate="tbxPwC1" ErrorMessage="Enter New Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
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
        </asp:Panel>
    </asp:Panel>

</asp:Content>
