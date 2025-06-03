<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="task5.aspx.cs" Inherits="moviestoreMukul.labs.week3.task5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:Button ID="btnrand" runat="server" OnClick="btnrand_Click" Text="Randomise" />
    <br />
    <asp:Image ID="imgrand" ImageUrl="~/images/brave.jpg" runat="server" />
</asp:Content>
