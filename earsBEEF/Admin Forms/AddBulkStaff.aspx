<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="AddBulkStaff.aspx.cs" Inherits="earsBEEF.Admin_Forms.AddBulkStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="378px" 
        TextMode="MultiLine" Width="885px"></asp:TextBox>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Submitbtn" runat="server" onclick="Submitbtn_Click" 
        Text="Submit" />
    <br />
</asp:Content>
