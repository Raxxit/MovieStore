<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="viewsequence.aspx.cs" Inherits="moviestoreMukul.tutorials.week2.viewsequence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
        <asp:Button
            ID="Button1"
            Text="Click Here"
             OnClick="Button1_Click"
            runat="server" />
        <br />
        <br />
        <asp:Label
            ID="Label1"
            runat="server" />
    </div>

</asp:Content>
