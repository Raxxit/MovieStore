<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="clickevent.aspx.cs" Inherits="moviestoreMukul.tutorials.week2.clickevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        <asp:Button
            ID="btnSubmit"
             OnClick="btnSubmit_Click"
            Text="Click Here"
            runat="server" />
        <br />
        <br />
        <asp:Label
            ID="Label1"
            runat="server" />
    </div>
</asp:Content>
