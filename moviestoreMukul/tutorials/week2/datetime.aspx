<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="datetime.aspx.cs" Inherits="moviestoreMukul.tutorials.week2.datetime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        The current date and time is:
        <asp:Label
            ID="lblServerTime"
            runat="server" />
    </div>
</asp:Content>
