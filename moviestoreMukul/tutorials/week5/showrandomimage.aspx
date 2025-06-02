<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="showrandomimage.aspx.cs" Inherits="moviestoreMukul.tutorials.week5.showrandomimage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    
    <user:RandomImage ID="ucRandomImage" imageFolderPath="~/images2" runat="server" />

</asp:Content>
