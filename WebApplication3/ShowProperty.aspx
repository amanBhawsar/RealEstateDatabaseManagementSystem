<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowProperty.aspx.cs" Inherits="WebApplication3.ShowProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Property</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_no_result" runat="server"></asp:Label>
        </div>

        <asp:GridView ID="grdShowProperty" AutoGenerateColumns="false" runat="server" Height="404px" Width="839px">
            <Columns>
                <asp:BoundField DataField="property_id" HeaderText="Property Id" />
                
                <asp:BoundField DataField="worth" HeaderText="Worth" />
                
                <asp:BoundField DataField="area" HeaderText="Area" />
                          </Columns>
        </asp:GridView>
    </form>
</body>
</html>
