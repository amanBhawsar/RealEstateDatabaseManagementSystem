<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="broker.aspx.cs" Inherits="DBMS_NEW.broker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 22px;
            width: 69px;
        }
        .auto-style2 {
            height: 22px;
            width: 926px;
        }
        .auto-style3 {
            width: 926px;
        }
        .auto-style4 {
            width: 69px;
        }
        .auto-style5 {
            margin-top: 0px;
            margin-bottom: 5px;
        }
        .auto-style7 {
            height: 6px;
            width: 926px;
        }
        .auto-style8 {
            height: 6px;
            width: 69px;
        }
        .auto-style9 {
            width: 926px;
            height: 14px;
        }
        .auto-style10 {
            width: 69px;
            height: 14px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            width: 69px;
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_email" runat="server" Text="Your Email "></asp:Label>
            <asp:TextBox ID="txt_bro" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valid_br_email" runat="server" ControlToValidate="txt_bro" ErrorMessage="*" ValidationGroup="email"></asp:RequiredFieldValidator>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2" colspan="4">
                        &nbsp;</td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">
                        <asp:Label ID="lbl_edit_profile" runat="server" Font-Bold="True" Font-Size="Larger" Text="Edit Profile"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">
                        <asp:TextBox ID="txt_emailsearch" runat="server" EnableViewState="False" Width="174px">Enter the Email</asp:TextBox>
                        <asp:Button ID="btn_editProfile_search" runat="server" EnableTheming="True" Text="Search" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">
                        <asp:Label ID="lbl_add_client" runat="server" Font-Bold="True" Font-Size="Larger" Text="Add Client"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">
                        <asp:TextBox ID="txt_addClient" runat="server" EnableViewState="False" Width="174px">Enter client  Email</asp:TextBox>
                        <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click" ValidationGroup="email" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="4">
                        <asp:Label ID="lbl_update" runat="server" Font-Bold="True" Font-Size="Larger" Text="Update Property Details"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="4">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11">Enter client Email</asp:TextBox>
                        <asp:Button ID="btn_update_search" runat="server" EnableTheming="True" Text="Search"  CssClass="auto-style5" Height="23px" ValidationGroup="email" />
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_reg" runat="server" Text="Registration Number"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_worth" runat="server" Text="Worth"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_location" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_area" runat="server" Text="Area"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_reg_no" runat="server" Width="111px">Add Property Description</asp:TextBox>
                        <asp:RequiredFieldValidator ID="valid_reg" runat="server" ControlToValidate="txt_reg_no" ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="update_pro"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_worth" runat="server">Add worth</asp:TextBox>
                        <asp:RequiredFieldValidator ID="vaild_worth" runat="server" ControlToValidate="txt_worth" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pro"></asp:RequiredFieldValidator>
                    </td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_location" runat="server">Add location</asp:TextBox>
                        <asp:RequiredFieldValidator ID="valid_loction" runat="server" ControlToValidate="txt_location" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pro"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_area" runat="server" >Add  Area</asp:TextBox>
                        <asp:RequiredFieldValidator ID="valid_area" runat="server" ControlToValidate="txt_area" ErrorMessage="*" ForeColor="Red" ValidationGroup="update_pro"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btn_add_pro" runat="server" Text="Add Property" ValidationGroup="update_pro,email" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lbl_show_pro" runat="server" Font-Bold="True" Font-Size="Larger" Text="Show Properties"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btn_show_pro" runat="server" Text="Show Property" ValidationGroup="email" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lbl_del_property" runat="server" Font-Bold="True" Font-Size="Larger" Text="Delete Property"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txt_pro_id" runat="server">Enter property_id</asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btn_del_pro" runat="server" Text="Delete" OnClick="btn_del_pro_Click" ValidationGroup="email" />
                        `<asp:Label ID="lbl_del" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style12">
                        <asp:Label ID="lbl_del_account" runat="server" Font-Bold="True" Font-Size="Larger" Text="Delete Account"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style12"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txt_email" runat="server">Enter email id</asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btn_del_acc" runat="server" Text="Delete" ValidationGroup="email" />
                        <asp:Label ID="lbl_del_ac" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
