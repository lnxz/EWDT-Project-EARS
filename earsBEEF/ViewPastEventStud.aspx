<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="ViewPastEventStud.aspx.cs" Inherits="earsBEEF.ViewPastEventStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="16pt" Text="Past Event "></asp:Label>
<br />
<br />
<br />
<br />
<br />
<br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="879px">
        </asp:GridView>
    </asp:Panel>
<br />
<br />
</asp:Content>
