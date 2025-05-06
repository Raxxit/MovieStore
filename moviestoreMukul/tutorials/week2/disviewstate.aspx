<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="disviewstate.aspx.cs" Inherits="moviestoreMukul.tutorials.week2.disviewstate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
        Label 1:
        <asp:Label
            ID="Label1"
            EnableViewState="false"
            Text="0"
            runat="server" />
        <br />
        Label 2:
        <asp:Label
            ID="Label2"
            Text="0"
            runat="server" />
        <br />
        <br />
        <asp:Button
            ID="btnAdd"
            Text="Add"
             OnClick="btnAdd_Click"
            runat="server" />
    </div>

</asp:Content>
