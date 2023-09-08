<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productsManagement.aspx.cs" Inherits="auction.productsManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style2 {
            width: 512px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="4"><strong>Seller</strong></td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4"><strong>Products Management</strong></td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="4">Please enter the name of the product you want to delete below&nbsp;:</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="54px" Width="256px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="49px" OnClick="Button1_Click" Text="Delete" Width="261px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" Height="38px" Width="100px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Height="38px" OnClick="Button3_Click" Text="close" Width="102px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Status of product management"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
