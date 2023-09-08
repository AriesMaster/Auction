<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="auction.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 440px;
        }
        .auto-style2 {
            height: 37px;
            text-align: center;
        }
        .auto-style4 {
            height: 9px;
            width: 413px;
            text-align: center;
            text-decoration: underline;
        }
        .auto-style6 {
            height: 9px;
            text-align: center;
            width: 450px;
            text-decoration: underline;
        }
        .auto-style3 {
            height: 9px;
            text-align: center;
            text-decoration: underline;
        }
        .auto-style11 {
            width: 413px;
            text-align: center;
        }
        .auto-style10 {
            width: 450px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style5 {
            width: 413px;
        }
        .auto-style7 {
            width: 450px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Admin</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Products</strong></td>
                    <td class="auto-style6"><strong>Buyers</strong></td>
                    <td class="auto-style3"><strong>Sellers</strong></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style10">
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style9">
                        <asp:GridView ID="GridView3" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Please enter the name of the product you want to delete below&nbsp;:</td>
                    <td class="auto-style10">Please enter the name of the Buyer you want to delete below&nbsp;:</td>
                    <td class="auto-style9">Please enter the name of the Seller you want to delete below&nbsp;:</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Products" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete Buyers" />
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete Sellers" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="3"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Product management status "></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="3">
                        <asp:Button ID="Button4" runat="server" Height="43px" OnClick="Button4_Click" Text="Log Out" Width="153px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
