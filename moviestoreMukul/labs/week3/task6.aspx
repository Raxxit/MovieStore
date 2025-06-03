<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="task6.aspx.cs" Inherits="moviestoreMukul.labs.week3.task6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <asp:DropDownList ID="ddlfoot" runat="server">
        <asp:ListItem Value="1">chelsea</asp:ListItem>
        <asp:ListItem Value="2">arsenal</asp:ListItem>
        <asp:ListItem Value="3">liverpool</asp:ListItem>
    </asp:DropDownList>
    <hr />
    <asp:RadioButtonList ID="rdfoot" runat="server">
        <asp:ListItem Value="1">chelsea</asp:ListItem>
        <asp:ListItem Value="2">arsenal</asp:ListItem>
        <asp:ListItem Value="3">liverpool</asp:ListItem>
    </asp:RadioButtonList>
    <hr />
    <asp:CheckBoxList ID="chkfoot" runat="server">
        <asp:ListItem Value="1">chelsea</asp:ListItem>
        <asp:ListItem Value="2">arsenal</asp:ListItem>
        <asp:ListItem Value="3">liverpool</asp:ListItem>
    </asp:CheckBoxList>
    <hr />
    <asp:ListBox ID="lstboxfoot" runat="server">
        <asp:ListItem Value="1">chelsea</asp:ListItem>
        <asp:ListItem Value="2">arsenal</asp:ListItem>
        <asp:ListItem Value="3">liverpool</asp:ListItem>
    </asp:ListBox>
</asp:Content>
