<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchForm.aspx.cs" Inherits="DBMS_NEW.SearchForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 626px;
        }
        .auto-style3 {
            margin-left: 174px;
        }
        .auto-style4 {
            width: 92%;
            height: 79px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_search" runat="server" Text="Search area"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_search" runat="server" CssClass="auto-style5">
                           
                            <asp:ListItem> </asp:ListItem>
                            <asp:ListItem>Vijay Nagar</asp:ListItem>
                            <asp:ListItem>Rajendra Nagar</asp:ListItem>
                            <asp:ListItem>Palasia</asp:ListItem>
                            <asp:ListItem>Annapurna</asp:ListItem>
                            <asp:ListItem>Ring Road</asp:ListItem>
                            <asp:ListItem>Rau</asp:ListItem>
                            <asp:ListItem>Dewas Road</asp:ListItem>
                            <asp:ListItem>Mhow</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblNoRecordFound" runat="server" Width="184px"></asp:Label>
                        <asp:Button ID="btn_search" runat="server" Text="Search" CssClass="auto-style3" OnClick="btn_search_Click" Width="79px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td></td>
                </tr>
            </table>
        </div>
        
        
        
        <asp:GridView ID="grdShowBroker" AutoGenerateColumns="False" runat="server" Height="305px" Width="857px" CssClass="auto-style1"  CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdShowBroker_SelectedIndexChanged" OnRowCommand="grdShowBroker_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:CommandField ShowSelectButton="True" />
                
                <asp:BoundField DataField="broker_id" HeaderText="BrokerID" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="mobile_no1" HeaderText="Mobile_NO1" />
                <asp:BoundField DataField="mobile_no2" HeaderText="Mobile_NO2" />
                <asp:BoundField DataField="website" HeaderText="Website" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="broker_percentage" HeaderText="Broker_Percentage"/>
               
                
                
                <asp:ButtonField ButtonType="Button" CommandName="History" Text="View History" />
               
                
                
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <div>
            <br />
            <br />
            <br />
            <asp:Label ID="lbl_no_result" runat="server"></asp:Label>
            <br />
            <br />
        </div>
         <asp:GridView ID="grdShowProperty" AutoGenerateColumns="False" runat="server" Height="404px" Width="839px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="property_id" HeaderText="Property Id" />
                
                <asp:BoundField DataField="worth" HeaderText="Worth" />
                
                <asp:BoundField DataField="area" HeaderText="Area" />
                          </Columns>
             <FooterStyle BackColor="White" ForeColor="#000066" />
             <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
             <RowStyle ForeColor="#000066" />
             <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#007DBB" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>

        

    </form>
</body>
</html>
