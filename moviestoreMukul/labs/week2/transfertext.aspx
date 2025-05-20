<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="transfertext.aspx.cs" Inherits="moviestoreMukul.labs.week2.transfertext" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Source"></asp:Label>
    <asp:TextBox ID="txtsource" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:Label ID="Label2" runat="server" Text="Target"></asp:Label>
    <asp:TextBox ID="txttarget" runat="server"></asp:TextBox>

    <asp:Button ID="btntransfer" OnClick="btntransfer_Click" runat="server" Text="Button" />

</asp:Content>
