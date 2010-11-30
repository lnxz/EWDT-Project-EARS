<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="RegisteredEventStud.aspx.cs" Inherits="earsBEEF.RegisteredEventStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="874px">
    </asp:GridView>
<br />
<br />
<br />
<br />
<br />
</asp:Content>
