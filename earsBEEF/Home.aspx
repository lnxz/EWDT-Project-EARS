<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Loggedin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="earsBEEF.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="StudentView" runat="server">
        <br />
                <asp:Label ID="Label5" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Announcements"></asp:Label>
                <br />
                <asp:GridView ID="gvStudentAnn" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="150px" 
            Width="850px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="dateOfAnn" HeaderText="Date " />
                        <asp:BoundField DataField="title" HeaderText="Title" />
                        <asp:BoundField DataField="content" HeaderText="Content" />
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
                <br />
                <asp:Label ID="Label11" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Current Events"></asp:Label>
                <br />
                <asp:GridView ID="gvStudentCurrentEvent" runat="server" 
                    AutoGenerateColumns="False" CellPadding="2" DataKeyNames="EventID" 
                    ForeColor="#333333" GridLines="None" Height="150px" 
                    onselectedindexchanging="gvStudentCurrentEvent_SelectedIndexChanging" 
                    Width="850px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="eventDate" HeaderText="Event Dates" />
                        <asp:BoundField DataField="registrationEnd" HeaderText="Registration End" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:CommandField ShowSelectButton="True" />
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
                <br />
                <asp:Label ID="Label13" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Registered Events"></asp:Label>
                <br />

            <asp:GridView ID="gvStudentRegistered" runat="server" AutoGenerateColumns="False" 
            CellPadding="2" ForeColor="#333333" GridLines="None" Height="150px" 
            Width="850px" DataKeyNames="EventID" 
                    onselectedindexchanging="gvStudentRegistered_SelectedIndexChanging">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="eventDate" HeaderText="Event Dates" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
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
        <br />
        <br />
            </asp:View>
            <asp:View ID="StaffView" runat="server">
        <br />
                <asp:Label ID="Label14" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Announcements"></asp:Label>
        <br />
            <asp:GridView ID="gvStudentAnn0" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="150px" 
            Width="850px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="dateOfAnn" HeaderText="Date " />
                        <asp:BoundField DataField="title" HeaderText="Title" />
                        <asp:BoundField DataField="content" HeaderText="Content" />
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
        <br />
                <asp:Label ID="Label15" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Current Events"></asp:Label>
                    <br />
            <asp:GridView ID="gvStaffCurrentEvent" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="150px" 
            Width="850px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="eventDate" HeaderText="Event Dates" />
                        <asp:BoundField DataField="registrationEnd" HeaderText="Registration End" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
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
                <br />
                <asp:Label ID="Label16" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Organized Events"></asp:Label>
                    <br />
            <asp:GridView ID="gvStaffOrganized" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="150px" 
            Width="850px"
            onselectedindexchanging="gvStaffOrganized_SelectedIndexChanging">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="registrationEnd" HeaderText="Registration Ends" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="registeredNo" HeaderText="Registered" />
                        <asp:BoundField DataField="quota" HeaderText="Quota" />
                        <asp:ButtonField Text="View" />
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
        <br />
        <br />
        <br />
        <br />
            </asp:View>
        </asp:MultiView>
        <br />
        <br />
        <br />
        <br />
    <br />
</asp:Content>
