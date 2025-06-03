<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="moviestoreMukul.labs.week3.task2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:CheckBox ID="chk1" OnCheckedChanged="chk1_CheckedChanged" runat="server" AutoPostBack="true" />
    <hr />
    <asp:Label ID="lblmsg" runat="server" Text="False"></asp:Label>
</asp:Content>
