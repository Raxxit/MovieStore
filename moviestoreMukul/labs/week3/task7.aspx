<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="task7.aspx.cs" Inherits="moviestoreMukul.labs.week3.task7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:CheckBoxList ID="chkprod" OnSelectedIndexChanged="chkprod_SelectedIndexChanged" runat="server" AutoPostBack="True">
        <asp:ListItem Value="1">eggs</asp:ListItem>
        <asp:ListItem Value="2">milk</asp:ListItem>
        <asp:ListItem Value="3">beer</asp:ListItem>
        <asp:ListItem Value="3">spaghetti</asp:ListItem>
        <asp:ListItem Value="4">banana</asp:ListItem>
        <asp:ListItem Value="5">carrot</asp:ListItem>
        <asp:ListItem Value="6">tomato</asp:ListItem>
        <asp:ListItem Value="7">onion</asp:ListItem>
        <asp:ListItem Value="8">garlic</asp:ListItem>
        <asp:ListItem Value="9">cheese</asp:ListItem>
    </asp:CheckBoxList>
    <hr />
    <asp:ListBox ID="lbxcart" OnTextChanged="lbxcart_TextChanged" runat="server" Height="400" Width="200">
    </asp:ListBox>
    <br />
    <asp:Button ID="btnremove" OnClick="btnremove_Click" runat="server" Text="Remove Item from list" />

</asp:Content>
