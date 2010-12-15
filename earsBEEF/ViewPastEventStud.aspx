<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="ViewPastEventStud.aspx.cs" Inherits="earsBEEF.ViewPastEventStud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="12pt" Text="Past Event " 
        Font-Bold="True"></asp:Label>
<br />
    <asp:Label ID="lblNoPast" runat="server" Text=" No Past Events found" 
        Visible="False" Font-Size="8pt"></asp:Label>
<br />
<br />
<br />
<br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="185px" 
            Width="92%" DataKeyNames="EventID" 
            onselectedindexchanging="GridView1_SelectedIndexChanging">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" 
                ReadOnly="True" />
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" 
                ReadOnly="True" />
            <asp:BoundField DataField="RegistrationCost" HeaderText="RegistrationCost" 
                SortExpression="RegistrationCost" ReadOnly="True" />
            <asp:BoundField DataField="EventDate" HeaderText="EventDate" 
                SortExpression="EventDate" ReadOnly="True">
            <ControlStyle Width="200px" />
            <HeaderStyle Width="200px" />
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="RegistrationStart" HeaderText="RegistrationStart" 
                SortExpression="RegistrationStart" ReadOnly="True" 
                DataFormatString="{0:MM/dd/yyyy}" >
            <ControlStyle Width="170px" />
            </asp:BoundField>
            <asp:BoundField DataField="RegistrationEnd" HeaderText="RegistrationEnd" 
                SortExpression="RegistrationEnd" ReadOnly="True" 
                DataFormatString="{0:MM/dd/yyyy}"></asp:BoundField>
            <asp:CommandField ButtonType="Button" SelectText="View" 
                ShowSelectButton="True" CancelText="" DeleteText="" EditText="" 
                InsertText="" NewText=""/>
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
    </asp:Panel>
<br />
<br />
</asp:Content>
