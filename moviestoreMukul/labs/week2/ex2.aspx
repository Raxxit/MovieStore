<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="ex2.aspx.cs" Inherits="moviestoreMukul.labs.week2.ex2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnshow" OnClick="btnshow_Click" runat="server" Text="show" />
    <asp:Button ID="btnhide" OnClick="btnhide_Click" runat="server" Text="hide" />

</asp:Content>
