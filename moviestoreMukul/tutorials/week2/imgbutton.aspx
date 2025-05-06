<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="imgbutton.aspx.cs" Inherits="moviestoreMukul.tutorials.week2.imgbutton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        <asp:ImageButton
            ID="btnHouse"
            ImageUrl="~/images/harry.jpg"
            runat="server" OnClick="btnHouse_Click" />
        <br />
        X Coordinate:
        <asp:Label
            ID="lblX"
            runat="server" />
        <br />
        Y Coordinate:
        <asp:Label
            ID="lblY"
            runat="server" />
    </div>

</asp:Content>
