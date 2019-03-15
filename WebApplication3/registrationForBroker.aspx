<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationForBroker.aspx.cs" Inherits="WebApplication3.registrationForBroker1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
            width: 849px;
        }
        .auto-style2 {
            width: 122%;
            height: 465px;
            margin-left: 350px;
            margin-bottom: 10px;
            margin-right: 0px;
        }
        .auto-style3 {
            height: 23px;
            width: 849px;
        }
        .auto-style4 {
            height: 17px;
            width: 849px;
        }
        .auto-style5 {
            height: 17px;
            width: 182px;
        }
        .auto-style6 {
            width: 182px;
        }
        .auto-style7 {
            height: 23px;
            width: 182px;
        }
        .auto-style8 {
            height: 21px;
            width: 182px;
        }
        .auto-style9 {
            width: 182px;
            height: 30px;
        }
        .auto-style10 {
            height: 30px;
            width: 849px;
        }
        .auto-style11 {
            width: 849px;
        }
        .auto-style12 {
            width: 182px;
            height: 27px;
        }
        .auto-style13 {
            height: 27px;
            width: 849px;
        }
        .auto-style14 {
            margin-left: 12px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Lbl_name" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_name" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_name" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Lbl_add" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_address" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lbl_mob" runat="server" Text="Mobile-1"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_mob1" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_mobile1" runat="server" ErrorMessage="This filed is required" ValidationGroup="vaild" ControlToValidate="txt_mob1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl_mob2" runat="server" Text="Mobile-2"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_mob2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_mobile2" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_mob2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl_web" runat="server" Text="Website"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_website" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_email" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl_brokerPer" runat="server" Text="Min Broker Percentage"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_broker_per" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_br_pr" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_broker_per"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl_area_deal" runat="server" Text="Area Deals"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_area_deal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_area_deal" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_area_deal"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl_pwd" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_pwd" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_pwd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="lbl_repwd" runat="server" Text="Re-Enter Password"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txt_repwd" runat="server" Width="116px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_re_pwd" runat="server" ErrorMessage="This field is required" ValidationGroup="vaild" ControlToValidate="txt_repwd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="lbl_reg" runat="server" Height="20px" Text="Registration number" Width="111px"></asp:Label>
                    <asp:Label ID="lbl_br_pr" runat="server" Height="20px" Text="Brokrage Per" Width="122px"></asp:Label>
                    <asp:Label ID="lbl_deal" runat="server" Height="16px" Text="Deal_details" Width="125px"></asp:Label>
                    <asp:Label ID="lbl_deal_date" runat="server" Height="16px" Text="Date of Deal" Width="124px"></asp:Label>
                    <asp:Label ID="lbl_deal_type" runat="server" CssClass="auto-style14" Height="16px" Text="Type of Deal" Width="124px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl_exp" runat="server" Text="Past Experience"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_exp1_reg" runat="server" Width="99px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_reg1" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp1_reg"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp1_broPer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_br_pr1" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp1_broPer"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp1_detail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_details1" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp1_detail"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp1_dealDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_date1" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp1_dealDate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp1_dealType" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_type1" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp1_dealType"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_exp2_reg" runat="server" Width="103px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_reg2" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp2_reg"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp2_broPer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_br_pr2" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp2_broPer"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp2_detail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_details2" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp2_detail"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp2_dealdate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_date7" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp2_dealdate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp2_dealType" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_type2" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp2_dealType"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txt_exp3_reg" runat="server" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_reg3" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp3_reg"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp3_broPer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_br_pr3" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp3_broPer"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp3_detail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_details3" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp3_detail"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp3_dealdate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_date3" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp3_dealdate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp3_dealType" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_type3" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp3_dealType"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_exp4_reg" runat="server" Width="101px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_reg4" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp4_reg"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp4_broPer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_br_pr4" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp4_broPer"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp4_detail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_details4" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp4_detail"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp4_dealdate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_date4" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp4_dealdate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp4_dealType" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_type4" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp4_dealType"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_exp5_reg" runat="server" Width="103px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_reg5" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp5_reg"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp5_broPer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_br_pr5" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp5_broPer"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp5_detail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_details5" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp1_detail"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp5_dealdate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_date5" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp5_dealdate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_exp5_dealType" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vaild_type5" runat="server" ErrorMessage="*" ValidationGroup="vaild" ControlToValidate="txt_exp5_dealType"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btn_sub" runat="server" Text="Submit" ValidationGroup="vaild" OnClick="btn_sub_Click" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <asp:Label ID="lblCheck" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
