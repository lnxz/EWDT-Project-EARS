<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/LoggedIn.Master" AutoEventWireup="true" CodeBehind="UpdateEventForm.aspx.cs" Inherits="earsBEEF.UpdateEventForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        
        .style14
        {
            width: 421px;
            height: 38px;
            color: #000000;
        }
        .style15
        {
            width: 749px;
            height: 38px;
        }
        .style17
        {
            width: 439px;
            height: 40px;
        }
        .style18
        {
            width: 749px;
        }
        .style20
        {
            width: 749px;
            height: 52px;
        }
        .style22
        {
            width: 749px;
            height: 28px;
        }
        .style24
        {
            height: 52px;
            color: #000000;
        }
        .style25
        {
            color: #000000;
        }
        .style26
        {
            height: 28px;
            color: #000000;
        }
        .style27
        {
            width: 749px;
            color: #000000;
        }
        .style35
        {
            height: 53px;
            color: #000000;
        }
        .style36
        {
            width: 749px;
            height: 53px;
        }
        .style37
        {
            color: #000000;
            width: 213px;
        }
        .style38
        {
            width: 213px;
        }
        .style39
        {
            width: 227px;
        }
        .style40
        {
            color: #000000;
            width: 227px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style25" colspan="2">
                <strong>Update Event</strong></td>
        </tr>
        <tr>
            <td class="style25" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" rowspan="10">
                <table style="width: 100%; height: 355px;">
                    <tr>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style27">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24">
                            Event Name:</td>
                        <td class="style20" align="left">
                            <asp:TextBox ID="tbxName" runat="server" Width="224px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="tbxName" ErrorMessage="Please input Event Name" 
                                ForeColor="Red" CssClass="style25"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style25">
                            CCA involved:</td>
                        <td class="style18" align="left">
                            <asp:DropDownList ID="ddlCCA" runat="server" Height="31px" Width="219px">
                                <asp:ListItem>No CCA</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style25">
                            Category:</td>
                        <td class="style18" align="left">
                            <asp:DropDownList ID="ddlCate" runat="server" Height="33px" Width="220px" 
                                onselectedindexchanged="ddlCate_SelectedIndexChanged">
                            </asp:DropDownList>
                              <span class="style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              </span>
                              <asp:Button ID="Button1" runat="server" Text="Add Category" 
                                CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style25">
                            Venue:</td>
                        <td class="style18" rowspan="2" align="left">
                            <asp:TextBox ID="tbxVenue" runat="server" TextMode="MultiLine" Width="219px" 
                                CssClass="style25"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="tbxVenue" ErrorMessage="Please input venue" 
                                ForeColor="Red" CssClass="style25"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style25">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style25" valign="top">
                            Description:</td>
                        <td class="style18" align="left">
                            <asp:TextBox ID="tbxDes" runat="server" Height="112px" TextMode="MultiLine" 
                                Width="350px" CssClass="style25"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style25" valign="top">
                            Event Dates:</td>
                        <td class="style18" align="left">
            &nbsp;<asp:DropDownList ID="DdlMonth" runat="server" Height="22px" Width="76px" 
                                AutoPostBack="True" onselectedindexchanged="DdlMonth_SelectedIndexChanged">
                                <asp:ListItem Value="Month"></asp:ListItem>
                </asp:DropDownList>
                            <span class="style25">/
                </span>
                <asp:DropDownList ID="DdlDay" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
                            <span class="style25">&nbsp;/ 
                           </span> 
                           <asp:DropDownList ID="DdlYear" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList> <span class="style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            </span> 
                            <asp:Button ID="Button2" runat="server" Text="Add Date" 
                                onclick="Button2_Click" CausesValidation="False" />
                            
                            <span class="style25">&nbsp;&nbsp;</span><br class="style25" />
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" CssClass="style25">Please Add Event Dates</asp:Label>
                            <br />
                                        <asp:ListBox ID="lbDate" runat="server" Height="85px" Width="205px">
                                        </asp:ListBox>
                                        <asp:Button ID="btnRemove" runat="server" Text="Remove" 
                                Width="96px" onclick="btnRemove_Click" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style25">
                            Quota:</td>
                        <td class="style18" align="left">
                            <asp:TextBox ID="tbxQuota" runat="server" Width="143px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="tbxQuota" ErrorMessage="Please input Quota" 
                                ForeColor="Red" CssClass="style25"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style26">
                            Registration Starts:</td>
                        <td class="style22" align="left">
                            <span class="style25">&nbsp; </span> <asp:DropDownList ID="DdlMonth0" 
                                runat="server" Height="22px" Width="76px" 
                                AutoPostBack="True" 
                                onselectedindexchanged="DdlMonth0_SelectedIndexChanged" Enabled="False">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
                            <span class="style25">&nbsp;/ 
                </span> 
                <asp:DropDownList ID="DdlDay0" runat="server" Height="22px" Width="76px" Enabled="False">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                </asp:DropDownList>
                            <span class="style25">&nbsp;/ 
                           </span> 
                           <asp:DropDownList ID="DdlYear0" runat="server" Height="22px" Width="76px" 
                                Enabled="False">
                    <asp:ListItem>2010</asp:ListItem>
                               <asp:ListItem>2011</asp:ListItem>
                </asp:DropDownList> <span class="style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span>
                            <br class="style25" />
                            <span class="style25">&nbsp;&nbsp;&nbsp;
                            </span>
                            <asp:Label ID="lblDateError1" runat="server" ForeColor="Red" 
                                Text="Please select Dates" Visible="False" CssClass="style25"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Registration Ends:</td>
                        <td class="style15" align="left">
                            <span class="style25">&nbsp; </span> <asp:DropDownList ID="DdlMonth1" runat="server" Height="22px" Width="76px" 
                                AutoPostBack="True" onselectedindexchanged="DdlMonth1_SelectedIndexChanged">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
                            <span class="style25">&nbsp;/
                </span>
                <asp:DropDownList ID="DdlDay1" runat="server" Height="22px" Width="76px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                </asp:DropDownList>
                            <span class="style25">&nbsp;/ 
                           </span> 
                           <asp:DropDownList ID="DdlYear1" runat="server" Height="22px" Width="76px">
                               <asp:ListItem>2010</asp:ListItem>
                               <asp:ListItem>2011</asp:ListItem>
                </asp:DropDownList> <span class="style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span>
                            <br class="style25" />
                            <span class="style25">&nbsp;&nbsp;&nbsp;
                            </span>
                            <asp:Label ID="lblDateError" runat="server" ForeColor="Red" 
                                Text="End Date earlier than Start Date" Visible="False" CssClass="style25"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style35" valign="top">
                            Registration Cost:</td>
                        <td class="style36" align="left" valign="top">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Free" Checked="True" 
                                GroupName="cost" oncheckedchanged="RadioButton1_CheckedChanged" 
                                CssClass="style25" />
                            <span class="style25">&nbsp;&nbsp;
                            </span>
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Others" 
                                AutoPostBack="True" oncheckedchanged="RadioButton2_CheckedChanged" 
                                GroupName="cost" CssClass="style25" />
                            <br class="style25" />
                            <span class="style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span>
                            <asp:TextBox ID="tbxDol" runat="server" Width="80px" Enabled="False">0</asp:TextBox>
                            <span class="style25">&nbsp; Dollars per student</span><br class="style25" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style3" valign="top">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="253px" />
                <br class="style25" />
                <asp:Image ID="lmEvent" runat="server" Height="173px" Width="176px" 
                    CssClass="style25" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br class="style25" />
            </td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" valign="top">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style37">
                Status :&nbsp;
                <asp:DropDownList ID="ddlStatus" runat="server">
                    <asp:ListItem Value="Available"></asp:ListItem>
                    <asp:ListItem Value="Cancelled"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style39">
            </td>
            <td class="style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style37">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style38">
                <asp:Button ID="btnConfirm" runat="server" style="text-align: right" 
                    Text="Confirm" onclick="btnConfirm_Click" />
            </td>
            <td class="style39">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                    onclick="btnCancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
