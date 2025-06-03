<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="moviestoreMukul.labs.week3.task1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:TextBox ID="txtsource" runat="server" OnTextChanged="txtsource_TextChanged" AutoPostBack="true"></asp:TextBox>
    <asp:TextBox ID="txttarget" runat="server"></asp:TextBox>


</asp:Content>
