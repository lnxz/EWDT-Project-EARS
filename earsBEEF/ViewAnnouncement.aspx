<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="ViewAnnouncement.aspx.cs" Inherits="earsBEEF.AddAnnouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" 
        Text="View All Announcements"></asp:Label>
<br />
<br />
    <asp:GridView ID="GridView1" Runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" 
        CellPadding="4" DataKeyNames="AnnounceID" ForeColor="#333333" GridLines="None" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowediting="GridView1_RowEditing">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="AnnounceID" HeaderText="ID" ReadOnly="true" 
                SortExpression="AnnounceID" />
            <asp:TemplateField HeaderText="title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="titletbx" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Content" SortExpression="Content">
                <EditItemTemplate>
                    <asp:TextBox ID="contenttbx" runat="server" Text='<%# Bind("Content") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Content") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dateCreated" HeaderText="dateCreated" 
                SortExpression="dateCreated" />
            <asp:TemplateField HeaderText="AnnouncmentDate" SortExpression="DateOfAnn">
                <EditItemTemplate>
                    <asp:TextBox ID="anndatetbx" runat="server" Text='<%# Bind("DateOfAnn") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("DateOfAnn") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
</asp:Content>
