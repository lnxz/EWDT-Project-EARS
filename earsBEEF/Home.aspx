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
                    Height="154px" Width="871px">
                    <Columns>
                        <asp:BoundField DataField="dateOfAnn" HeaderText="Date " />
                        <asp:BoundField DataField="title" HeaderText="Title" />
                        <asp:BoundField DataField="content" HeaderText="Content" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="Label11" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Current Events"></asp:Label>
                <br />
                <asp:GridView ID="gvStudentCurrentEvent" runat="server" 
                    AutoGenerateColumns="False" Height="69px" Width="870px" 
                    DataKeyNames="EventID" 
                    onselectedindexchanging="gvStudentCurrentEvent_SelectedIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="eventDate" HeaderText="Event Dates" />
                        <asp:BoundField DataField="registrationEnd" HeaderText="Registration End" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="Label13" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Registered Events"></asp:Label>
                <br />
                <asp:GridView ID="gvStudentRegistered" runat="server" 
                    AutoGenerateColumns="False" Height="139px" Width="862px" 
                    DataKeyNames="EventID" 
                    onselectedindexchanging="gvStudentRegistered_SelectedIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="eventDate" HeaderText="Event Dates" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                    </Columns>
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
                    Height="154px" Width="871px">
                    <Columns>
                        <asp:BoundField DataField="dateOfAnn" HeaderText="Date " />
                        <asp:BoundField DataField="title" HeaderText="Title" />
                        <asp:BoundField DataField="content" HeaderText="Content" />
                    </Columns>
                </asp:GridView>
        <br />
                <asp:Label ID="Label15" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Current Events"></asp:Label>
                <asp:GridView ID="gvStaffCurrentEvent" runat="server" 
                    AutoGenerateColumns="False" Height="69px" Width="870px">
                    <Columns>
                        <asp:BoundField DataField="eventDate" HeaderText="Event Dates" />
                        <asp:BoundField DataField="registrationEnd" HeaderText="Registration End" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="Label16" runat="server" CssClass="viewHeader" Font-Bold="True" 
                    Text="Organized Events"></asp:Label>
                <asp:GridView ID="gvStaffOrganized" runat="server" AutoGenerateColumns="False" 
                    Height="139px" Width="862px">
                    <Columns>
                        <asp:BoundField DataField="registrationEnd" HeaderText="Registration Ends" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="registeredNo" HeaderText="Registered" />
                        <asp:BoundField DataField="quota" HeaderText="Quota" />
                        <asp:ButtonField Text="View" />
                    </Columns>
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
