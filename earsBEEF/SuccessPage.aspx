<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="SuccessPage.aspx.cs" Inherits="earsBEEF.SuccessPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblText" runat="server" Text="Successfully Updated Event ! "></asp:Label>
    <br />
    <asp:Label ID="lblClick" runat="server" Text="Click"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
        NavigateUrl="Home.aspx">here</asp:HyperLink>
&nbsp;to return to the home page.<br />
</asp:Content>
