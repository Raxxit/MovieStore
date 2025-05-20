<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="ex7.aspx.cs" Inherits="moviestoreMukul.labs.week2.ex7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <asp:TextBox ID="txtnum1" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtnum2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnadd" OnClick="btnadd_Click" runat="server" Text="+" />
    <asp:Button ID="btnsub" OnClick="btnsub_Click" runat="server" Text="-" />
    <asp:Button ID="btnmult" OnClick="btnmult_Click" runat="server" Text="*" />
    <asp:Button ID="btndiv" OnClick="btndiv_Click" runat="server" Text="/" />
    <br />
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <br />
    <asp:TextBox ID="txtresult" runat="server" Enabled="false"></asp:TextBox>

</asp:Content>
