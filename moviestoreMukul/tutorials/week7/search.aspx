<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="moviestoreMukul.tutorials.week7.search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="row">
        <div class="col-lg-4 bg-light">
            <h5>Search Movies </h5>
            <div class="my-3">
                <asp:TextBox ID="txtmovieid" Placeholder="Movie Id"
                    CssClass="form-control" runat="server" OnTextChanged="txtmovieid_TextChanged" AutoPostBack="true"></asp:TextBox>
            </div>
            <div class="my-3">
                <asp:TextBox ID="txtmovietitle" Placeholder="Movie Title"
                    CssClass="form-control" OnTextChanged="txtmovietitle_TextChanged" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
            <div class="my-3">
                <asp:TextBox ID="txtdirector" Placeholder="Director"
                    CssClass="form-control" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
            <div class="my-3">
                <asp:DropDownList ID="ddlcategory" CssClass="form-control"
                    runat="server" AutoPostBack="true">
                    <asp:ListItem>All Categories</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-5 offset-lg-1">
            <asp:GridView ID="gvs" runat="server" CellPadding="10" AutoGenerateColumns="false"
                CssClass="border border-0 mt-4 bg-light" HeaderStyle-HorizontalAlign="Center">
                <Columns>
    <asp:ImageField DataImageUrlField="Poster"
        DataImageUrlFormatString="~/images/{0}"
        HeaderText="Poster" SortExpression="Poster" ControlStyle-Width="100" />
    <asp:TemplateField HeaderText="BOX">
        <ItemTemplate>
            <h5>
                <%# Eval("Boxofficetotals", "{0:c}") %>
            </h5>
        </ItemTemplate>
        </asp:TemplateField>
    <asp:ButtonField Text="Subscribe" ControlStyle-CssClass="btn btn-outline-warning" />

    <asp:BoundField DataField="Director"
        HeaderText="Director" />

    <asp:HyperLinkField HeaderText="View Details"
        DataTextField="Moviename"
        DataNavigateUrlFields="Movie_Id"
        ControlStyle-CssClass="btn btn-outline-success"
        DataNavigateUrlFormatString="details.aspx?id={0}" />


</Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
