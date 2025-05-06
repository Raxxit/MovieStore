<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="ex1.aspx.cs" Inherits="moviestoreMukul.labs.week2.ex1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>

    <asp:Button ID="btnclear" OnClick="btnclear_Click" runat="server" Text="Clear Message" />


</asp:Content>
