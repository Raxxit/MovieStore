<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="moviestoreMukul.tutorials.week7.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:DetailsView ID="DetailsView1" AutoGenerateRows="false" runat="server" Width="400px">
        <Fields>
            <asp:ImageField DataImageUrlField="Poster"
    DataImageUrlFormatString="~/images/{0}"
     SortExpression="Poster" ControlStyle-Width="100" />
<asp:TemplateField>
     <ItemTemplate>
     <strong><em>
                  <%# Eval("Moviename") %>
     </em></strong>
         <br />
         <%# Eval("description") %>   
 </ItemTemplate>
 </asp:TemplateField>

        </Fields>
    </asp:DetailsView>

</asp:Content>
