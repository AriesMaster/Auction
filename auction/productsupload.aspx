<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productsupload.aspx.cs" Inherits="auction.productsupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: none; background-color: #FFFFFF;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 392px;
        }
        .auto-style3 {
            width: 104px;
        }
        .auto-style4 {
            width: 273px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Upload Products"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Product Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtproductname" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Product Size</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtproductsize" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Product Type</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtproducttype" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">product Price</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtproductprice" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Product Image </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtproductimage" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="UploadBtn" runat="server" Text="Upload" Width="296px" Height="66px" OnClick="UploadBtn_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="backBtn" runat="server" Text="Back" Width="106px" Height="36px" OnClick="backBtn_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="mangeProductsbtn" runat="server" Text="Manage Products" Height="43px" OnClick="mangeProductsbtn_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
