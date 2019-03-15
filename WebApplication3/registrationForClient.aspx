<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationForClient.aspx.cs" Inherits="WebApplication3.registrationForClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 42px;
        }
        .auto-style3 {
            height: 37px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            height: 40px;
            width: 171px;
        }
        .auto-style7 {
            width: 171px;
        }
        .auto-style8 {
            height: 37px;
            width: 171px;
        }
        .auto-style9 {
            width: 171px;
            margin-left: 42px;
        }
        .auto-style11 {
            width: 337px;
            margin-left: 375px;
            margin-top: 76px;
        }
        .auto-style12 {
            margin-left: 146px;
        }
        .auto-style13 {
            width: 61px;
        }
    </style>
</head>
<body>
   
        <div>
            REGISTRATION FOR CLIENT</div>
         <form id="form2" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Lbl_name" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_name" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_name" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="client_sub"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Lbl_add" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_add" runat="server" ControlToValidate="txt_add" ErrorMessage="*" ForeColor="Red" ValidationGroup="client_sub"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="lbl_mob" runat="server" Text="Mobile-1"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txt_mob1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_mob" runat="server" ControlToValidate="txt_mob1" ErrorMessage="*" ForeColor="Red" ValidationGroup="client_sub"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbl_mob2" runat="server" Text="Mobile-2"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_mob2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_mod2" runat="server" ControlToValidate="txt_mob2" ErrorMessage="*" ForeColor="Red" ValidationGroup="client_sub"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_email" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" ValidationGroup="client_sub"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbl_pwd" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_pwd" runat="server" TextMode ="Password"></asp:TextBox >
                    <asp:RequiredFieldValidator ID="vaild_pwd" runat="server" ControlToValidate="txt_pwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="client_sub"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbl_repwd" runat="server" Text="Re-Enter Password" ></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_repwd" runat="server" Width="116px" TextMode ="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_repwd" runat="server" ControlToValidate="txt_repwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="client_sub"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Buyer" />
                </td>
                <td class="auto-style13">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Seller" />
                </td>
                <td class="auto-style7">
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Renter" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="3">
                    <asp:Button ID="btn_sub" runat="server" Text="Submit" CssClass="auto-style12" Width="83px" OnClick="btn_sub_Click" ValidationGroup="client_sub" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
   
</body>
</html>
