<%@ Page Title="" Language="C#" MasterPageFile="Masterpage/LoggedInStudentSL.Master" AutoEventWireup="true" CodeBehind="TESTPAGE.aspx.cs" Inherits="EARS.TESTPAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
  
      <asp:GridView ID="GridView1" AllowSorting="True" AllowPaging="True" Runat="server"
         AutoGenerateEditButton="True" DataKeyNames="AnnounceID"
        AutoGenerateColumns="False" onrowediting="GridView1_RowEditing">
        <Columns>
          <asp:BoundField ReadOnly="true" HeaderText="ID" DataField="AnnounceID" 
                SortExpression="AnnounceID" />
          <asp:BoundField HeaderText="title" DataField="Title" SortExpression="Title" />
          <asp:BoundField HeaderText="Content" DataField="Content" 
                SortExpression="Content" />
          <asp:BoundField HeaderText="dateCreated" DataField="dateCreated" 
                SortExpression="dateCreated" />
          <asp:BoundField HeaderText="AnnouncmentDate" DataField="DateOfAnn" 
                SortExpression="DateOfAnn" />
          
        </Columns>
      </asp:GridView>
    

</asp:Content>
