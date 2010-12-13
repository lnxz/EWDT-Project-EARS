<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="SearchStudent.aspx.cs" Inherits="earsBEEF.Admin_Forms.SearchStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Search by : "></asp:Label>
    <br />
    <asp:DropDownList ID="ddlSearchType" runat="server">
        <asp:ListItem Value="Admin No."></asp:ListItem>
        <asp:ListItem Value="Name"></asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="tbxSearch" runat="server" AutoPostBack="True" Height="23px" 
        ontextchanged="TextBox1_TextChanged" Width="145px"></asp:TextBox>
&nbsp;
    <br />
    <br />
    <asp:ListBox ID="lbStudents" runat="server" Height="267px" Width="610px">
    </asp:ListBox>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
        Width="85px" />
    <asp:Button ID="Button2" runat="server" Text="Back" Width="85px" />
</asp:Content>
