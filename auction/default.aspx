<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="auction._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .bold-label {
            font-weight: bold;
        }
    </style>

    <p><br /></p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="Products List" Font-Size="Medium" Font-Underline="True" style="text-align: right"></asp:Label></p>
    <p>
        &nbsp;<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <ItemTemplate>
                <div class="list">
                    <table style="width: 9%; float: left;">
                        <tr><td><asp:Image ID="Label3" runat="server" Height="116px" Width="90px" ImageUrl='<%# Eval("ProductImage") %>' /></td></tr>
                        <tr><td><span class="bold-label">Product Name:</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>' /></td></tr>
                        <tr><td><span class="bold-label">Product Type:</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductType") %>' /></td></tr>
                        <tr><td><span class="bold-label">Product Size:</span><asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductSize") %>' /></td></tr>
                        <tr><td><span class="bold-label">Product Price:R</span><asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductPrice") %>' /></td></tr>

                        <!-- Add the "Add to Cart" button -->
                         <tr><td><asp:Button ID="AddToCartButton" runat="server" Text="Add to Cart" OnClick="AddToCartButton_Click" CommandArgument='<%# Eval("ProductName") %>' /></td></tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:ListView>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    SelectCommand="SELECT [ProductName], [ProductType], [ProductSize], [ProductPrice], [ProductImage] FROM [ProductsUpload]">
</asp:SqlDataSource>


    </p>
    <p></p>
    <p></p>
    <p></p>
</asp:Content>
