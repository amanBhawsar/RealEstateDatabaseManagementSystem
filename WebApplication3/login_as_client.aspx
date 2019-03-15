<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_as_client.aspx.cs" Inherits="WebApplication3.login_as_client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> LOGIN</div>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="EmailID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCrEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpsw" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCrPsw" runat="server" TestMode="password" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCrSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    <asp:Label ID="lblAccess" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </form>
</body>
</html>
