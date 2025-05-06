<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="viewstate.aspx.cs" Inherits="moviestoreMukul.tutorials.week2.viewstate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
        Server Control:
        <asp:TextBox ID="txtAspCont" runat="server">
        </asp:TextBox>
        <br />
        <br />
        HTML Control :
        <input id="txtHtmlCont" type="text" runat="server" />
        <br />
        <br />
        <asp:Button
            ID="btnAdd"
            Text="Add"
             OnClick="btnAdd_Click"
            runat="server" />
        <asp:Label
            ID="lblCounter"
            Text="0"
            runat="server" />
    </div>

</asp:Content>
