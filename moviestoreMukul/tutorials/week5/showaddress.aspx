<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="showaddress.aspx.cs" Inherits="moviestoreMukul.tutorials.week5.showaddress" %>
<%@ Register TagPrefix="user" TagName="Address" Src="~/tutorials/week5/addressform.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
    <style type="text/css">
        html {
            background-color: silver;
            font: 14px Georgia,Serif;
        }

        .content {
            background-color: white;
            width: 600px;
            margin: auto;
            padding: 20px;
        }

        .addressLabel {
            float: left;
            width: 100px;
            padding: 5px;
            text-align: right;
        }

        .addressField {
            float: left;
            padding: 5px;
        }

        .clear {
            clear: both;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="content">

        <user:Address ID="ucbilling" Title ="Billing Address"
            runat="server" />
        <user:Address ID="ucshipping" Title ="Shipping Address"
            runat="server" />
        <asp:Button
            ID="btnSubmit"
            Text="Submit Form"
            runat="server"
             OnClick="btnSubmit_Click"/>
        <hr />
        <asp:Literal
            ID="ltlResults"
            runat="server" />
    </div>



</asp:Content>
