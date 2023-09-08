<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUP.aspx.cs" Inherits="auction.SignUP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('images/AUCTION MART.png')">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style17 {
            width: 83%;
            height: 187px;
        }
        .auto-style18 {
            width: 581px;
        }
        .auto-style19 {
            height: 305px;
        }
        .auto-style20 {
            width: 581px;
            height: 305px;
        }
        .auto-style21 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; height: 618px;">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style20">
                        <table class="auto-style17" style="background-color: #C0C0C0">
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGNUP&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">Choose User below:</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="55px" Width="144px">
                                        <asp:ListItem Selected="True">Admin</asp:ListItem>
                                        <asp:ListItem>Buyer</asp:ListItem>
                                        <asp:ListItem>Seller</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="background-color: #C0C0C0">FIRST NAME</td>
                                <td style="background-color: #C0C0C0">
                                    <asp:TextBox ID="firstNameTxt" runat="server" Height="24px" Width="226px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="background-color: #C0C0C0">LAST NAME</td>
                                <td style="background-color: #C0C0C0">
                                    <asp:TextBox ID="lastNameTxt" runat="server" Height="24px" Width="226px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="background-color: #C0C0C0">EMAIL ADDRESS</td>
                                <td style="background-color: #C0C0C0">
                                    <asp:TextBox ID="emailAddressTxt" runat="server" Height="24px" Width="226px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="background-color: #C0C0C0">CELL PHONE</td>
                                <td style="background-color: #C0C0C0">
                                    <asp:TextBox ID="cellphoneTxt" runat="server" Height="24px" Width="226px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="background-color: #C0C0C0">PASSWORD</td>
                                <td style="background-color: #C0C0C0">
                                    <asp:TextBox ID="passwordTxt" runat="server" Height="24px" Width="226px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="background-color: #C0C0C0">CORNFIRM PASSWORD</td>
                                <td style="background-color: #C0C0C0">
                                    <asp:TextBox ID="confPasswordTxt" runat="server" Height="24px" Width="226px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0" class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="signupBtn" runat="server" BackColor="#FF0066" OnClick="signupBtn_Click" style="height: 26px" Text="SIGNUP" Width="203px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">Already have an account please login below</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">
                                    <asp:DynamicHyperLink ID="DynamicHyperLink2" runat="server" NavigateUrl="~/login.aspx">LOGIN</asp:DynamicHyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="background-color: #C0C0C0">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
