<%@ Page Title="" Language="C#" MasterPageFile="MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="EARS.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <div style="height: 350px; width: 5px; left: 100px; position: relative;">
    <asp:Panel ID="Panel1" runat="server" Height="197px" Width="236px" Wrap="False" 
        BorderStyle="Groove" BackColor="#AEC9FF" style="margin-left: 0px" >
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLoginId" runat="server" Text="Login ID"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbxLoginId" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp; &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="tbxLoginId" ErrorMessage="Please Enter Login ID" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLoginPw" runat="server" Text="Password"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbxLoginPw" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="tbxLoginPw" ErrorMessage="Please enter Password" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Invalid Login ID/Password" 
            ForeColor="Red"
            Visible="False"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
            ForeColor="Black" NavigateUrl="ForgotPassword.aspx" style="font-size: medium">Forgot your password ?</asp:HyperLink>
        <br />
        <br />
        <b><span class="style2">For Students: </span> </b>
        <span class="style2">
        <br />
        Login ID is your admin number (eg. 1234567E)<br />
        <br />
        <b>For Staff:</b><br /> Login ID is your staff email.</span></asp:Panel>
    </div>
    <br />
    <br />
    <br /><br />
    </asp:Content>
