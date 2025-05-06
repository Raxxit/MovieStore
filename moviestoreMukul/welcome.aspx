<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="moviestoreMukul.welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">

    <asp:Label ID="lblResult" runat="server" BorderStyle="None" BackColor="Black" Height="200px" Width="400px" ForeColor="Fuchsia"></asp:Label>
    <br />
    <asp:Button ID="btnDateTime" OnClick="btnDateTime_Click" Height="200px" Width="400px" runat="server" Text="Button" BackColor="Fuchsia" />
</asp:Content>
