<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="task4.aspx.cs" Inherits="moviestoreMukul.labs.week3.task4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:ImageButton ID="imgbtndart" ImageUrl="~/images/dart.jpg" OnClick="imgbtndart_Click" runat="server" Height="300" Width="300" />
    <hr />
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>

</asp:Content>
