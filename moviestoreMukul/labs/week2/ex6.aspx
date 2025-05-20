<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="ex6.aspx.cs" Inherits="moviestoreMukul.labs.week2.ex6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:DropDownList OnTextChanged="ddloption_TextChanged" AutoPostBack="true" ID="ddloption" runat="server">
        <asp:ListItem Value="-1">Choose Option</asp:ListItem>
        <asp:ListItem Value="1">Option 1</asp:ListItem>
        <asp:ListItem Value="2">Option 2</asp:ListItem>

    </asp:DropDownList>

</asp:Content>
