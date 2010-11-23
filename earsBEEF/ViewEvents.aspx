<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="ViewEvents.aspx.cs" Inherits="earsBEEF.ViewEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="height: 35px; width: 352px" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
            <asp:BoundField DataField="RegistrationCost" HeaderText="RegistrationCost" 
                SortExpression="RegistrationCost" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description">
            <ControlStyle Width="300px" />
            </asp:BoundField>
            <asp:BoundField DataField="EventDates" HeaderText="EventDates" 
                SortExpression="EventDates" />
            <asp:BoundField DataField="RegistrationStart" HeaderText="RegistrationStart" 
                SortExpression="RegistrationStart"></asp:BoundField>
            <asp:BoundField DataField="RegistrationEnd" HeaderText="RegistrationEnd" 
                SortExpression="RegistrationEnd" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EWDTProjectConnectionString %>" 
        SelectCommand="SELECT [Name], [Venue], [RegistrationCost], [Description], [EventDates], [RegistrationStart], [RegistrationEnd] FROM [Event]">
    </asp:SqlDataSource>
</asp:Content>
