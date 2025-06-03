<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="task9.aspx.cs" Inherits="moviestoreMukul.labs.week3.task9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:MultiView ID="mvBooking" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        Adults: <asp:TextBox ID="txtAdults" runat="server" /><br />
        Children: <asp:TextBox ID="txtChildren" runat="server" /><br />
        <asp:Button Text="Next" runat="server" OnClick="Next1_Click" />
    </asp:View>

    <asp:View ID="View2" runat="server">
        Departure: <asp:Calendar ID="calDepart" runat="server" /><br />
        Return: <asp:Calendar ID="calReturn" runat="server" /><br />
        <asp:Button Text="Next" runat="server" OnClick="Next2_Click" />
    </asp:View>

    <asp:View ID="View3" runat="server">
        <asp:Label ID="lblSummary" runat="server" />
    </asp:View>
</asp:MultiView>
<asp:Label ID="lblError" runat="server" ForeColor="Red" />


</asp:Content>
