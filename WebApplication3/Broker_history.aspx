<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Broker_history.aspx.cs" Inherits="WebApplication3.Broker_history" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdBrokerHistory" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" Width="554px">
                <Columns>
                    <asp:BoundField DataField="registration_no" HeaderText="Registration Number" />
                    <asp:BoundField DataField="broker_per" HeaderText="Brokrage Percentage"/>
                    <asp:BoundField DataField="other_details" HeaderText="Details"/>
                    <asp:BoundField DataField="date_of_deal" HeaderText="Deal Date"/>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
        <p>
            &nbsp;</p>
        <p>
        <asp:Label ID="lbl_no_result" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
