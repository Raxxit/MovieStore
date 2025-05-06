<%@ Page Title="2 controls" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="2controls.aspx.cs" Inherits="moviestoreMukul.tutorials.week2._2controls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
        First Counter:
        <asp:Button
            ID="Button1"
            Text="0"
             OnClick="Button_Click"
            runat="server" />
        <br />
        <br />
        Second Counter:
        <asp:Button
            ID="Button2"
            Text="0"
            OnClick="Button_Click"
            runat="server" />
    </div>

</asp:Content>
