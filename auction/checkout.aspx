<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="auction.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style2 {
            width: 100%;
            height: 480px;
        }
        .auto-style3 {
            height: 61px;
        }
        .auto-style1 {
            height: 23px;
        }

        .confirmation-message {
    font-size: 18px;
    color: green;
    margin-top: 10px;
}

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td rowspan="2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblSummary" runat="server" Font-Bold="True" Font-Size="30pt" Text="Order Summary"></asp:Label>
                </td>
                <td rowspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="confirmation-message" Visible="false"></asp:Label>

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Height="235px" Width="652px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="52px" Text="ConfirmOrder" Width="274px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td rowspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" NavigateUrl="~/default.aspx">Back to previous</asp:HyperLink>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
