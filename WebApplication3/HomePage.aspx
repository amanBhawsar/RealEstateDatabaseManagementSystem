<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="DBMS_NEW.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 75%;
            height: 115px;
            margin-bottom: 0px;
            top: 100px;
            right: 100px;
            margin-left: 181px;
            margin-top: 99px;
        }
        .auto-style2 {
            width: 118px;
            height: 94px;
        }
        .auto-style3 {
            width: 118px;
            height: 74px;
        }
        .auto-style4 {
            height: 74px;
        }
        .auto-style5 {
            height: 94px;
        }
        .auto-style6 {
            margin-left: 77px;
        }
        .auto-style7 {
            margin-left: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <asp:Label ID="Label1" runat="server" Text="Homepage" ForeColor="Green" Height="44px" Width="200px"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btn_bro_login" runat="server" Font-Bold="True" Font-Size="Small" Height="53px"  PostBackUrl="~/broker_login.aspx" Text="BROKER LOGIN" Width="140px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btn_cli_login" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Size="Small" Height="51px" PostBackUrl="~/Login_as_client.aspx" Text="CLIENT LOGIN" Width="148px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btn_cli_reg" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="Small" Height="51px" PostBackUrl="~/registrationForClient.aspx" Text="CLIENT REGISTRATION" Width="160px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btn_cli_reg0" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="Small" Height="51px"  PostBackUrl="~/registrationForBroker.aspx" Text="BROKER REGISTRATION" Width="160px"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </form>
</body>
</html>
