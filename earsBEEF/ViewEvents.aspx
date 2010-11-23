<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedOut.Master" AutoEventWireup="true" CodeBehind="ViewEvents.aspx.cs" Inherits="earsBEEF.ViewEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="EventID" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="height: 35px; width: 352px">
        <Columns>
            <asp:BoundField DataField="EventID" HeaderText="EventID" InsertVisible="False" 
                ReadOnly="True" SortExpression="EventID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
            <asp:BoundField DataField="RegistrationCost" HeaderText="RegistrationCost" 
                SortExpression="RegistrationCost" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="EventDates" HeaderText="EventDates" 
                SortExpression="EventDates" />
            <asp:BoundField DataField="RegistrationStart" HeaderText="RegistrationStart" 
                SortExpression="RegistrationStart" />
            <asp:BoundField DataField="RegistrationEnd" HeaderText="RegistrationEnd" 
                SortExpression="RegistrationEnd" />
            <asp:BoundField DataField="Quota" HeaderText="Quota" SortExpression="Quota" />
            <asp:BoundField DataField="CCAID" HeaderText="CCAID" SortExpression="CCAID" />
            <asp:BoundField DataField="OrgStudentID" HeaderText="OrgStudentID" 
                SortExpression="OrgStudentID" />
            <asp:BoundField DataField="OrgStaffID" HeaderText="OrgStaffID" 
                SortExpression="OrgStaffID" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" 
                SortExpression="DateCreated" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EWDTProjectConnectionString %>" 
        SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
</asp:Content>
