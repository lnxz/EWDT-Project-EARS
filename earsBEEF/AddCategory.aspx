<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedInStudent.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="earsBEEF.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 485px;
        }
        .style3
        {
            width: 323px;
        }
        .style4
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td align="left" class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;<span class="style3" __designer:mapid="5f"><strong __designer:mapid="60">Category</strong></span><br />
    </br>
    </br>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        ForeColor="Black" GridLines="Horizontal" Width="452px" 
    AutoGenerateColumns="False" Height="215px" 
                    >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
            </td>
            <td class="style4" colspan="2">
                    </br>
                    </br>
                    &nbsp;&nbsp;&nbsp;
                    </br>
                    <asp:TextBox ID="tbxCat" runat="server" Width="293px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbxCat" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </br>
                
                <asp:Button ID="btnCfm" runat="server" Text="Confirm" Height="25px" 
                    Width="95px" onclick="btnAdd_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                    <asp:Label ID="lbWarning" runat="server" ForeColor="Red" Text="Label" 
                        Visible="False"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                
                <asp:Button ID="Cancel" runat="server" Text="Back" 
                    Width="80px" onclick="Button2_Click" CausesValidation="False" />
                </td>
            <td>
                
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
