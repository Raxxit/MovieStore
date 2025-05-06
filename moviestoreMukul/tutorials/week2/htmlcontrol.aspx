<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="htmlcontrol.aspx.cs" Inherits="moviestoreMukul.tutorials.week2.htmlcontrol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        At the tone, the time will be:
        <span id="spanNow" runat="server" />
    </div>
</asp:Content>
