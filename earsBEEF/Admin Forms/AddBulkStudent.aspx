<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="AddBulkStudent.aspx.cs" Inherits="earsBEEF.Admin_Forms.AddBulkStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Height="379px" TextMode="MultiLine" 
        Width="885px"></asp:TextBox>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
</asp:Content>
