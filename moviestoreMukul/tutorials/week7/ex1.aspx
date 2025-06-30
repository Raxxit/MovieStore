<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="ex1.aspx.cs" Inherits="moviestoreMukul.tutorials.week7.ex1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
        <h3>List of Movies</h3>
        <asp:GridView
            ID="GrdView1"
            AutoGenerateColumns="false"
            OnPageIndexChanging="GrdView1_PageIndexChanging"
            AllowPaging="true"
            PageSize="3"
            CellPadding="20"
            runat="server">
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

</asp:Content>
