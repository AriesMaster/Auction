<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="auction.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Contact us.</h3>
    <address>
        Auction Mart Warehouse<br />
        South Africa,Sandton<br />
        PO BOX 30</address>
    <address>
        1349</address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Auction Mart@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@gmail.com</a>
    </address>
    <address>
        Contact number: 0637868112</address>
    <address>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/icons8-facebook-48.png" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/insta.jpg" OnClick="ImageButton2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/tei.png" OnClick="ImageButton3_Click" />
    </address>
</asp:Content>
