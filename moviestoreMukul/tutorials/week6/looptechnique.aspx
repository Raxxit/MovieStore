<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="looptechnique.aspx.cs" Inherits="moviestoreMukul.tutorials.week6.looptechnique" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">

    <style type="text/css">
        .floater {
            float: left;
            border: solid 1px black;
            padding: 5px;
            margin: 5px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="floater">
        <h1>List of Movies and Box Office Totals: </h1>
        <asp:BulletedList
            ID="BulletedList1"
            runat="server">
        </asp:BulletedList>
    </div>

</asp:Content>
