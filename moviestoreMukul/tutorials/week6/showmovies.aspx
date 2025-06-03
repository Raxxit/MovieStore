<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="showmovies.aspx.cs" Inherits="moviestoreMukul.tutorials.week6.showmovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">

        <ItemTemplate>

            <div class="row text-center lead text-bg-warning my-4">
                <h2>*** LATEST MOVIES ***</h2>
            </div>
            <div class="row justify-content-around">
                <div class="card border border-0 col-sm-3 m-2 d-flex">
                    <asp:ImageButton ID="imgposter" ImageUrl='<%#Eval("Poster", "~/images/{0}") %>'
                        CssClass="img-fluid flex-grow-1" runat="server" />
                    <p class="card-footer bg-warning bg-gradient text-dark text-center">
                        <%# Eval("Moviename") %>
                    </p>
                </div>
            </div>

        </ItemTemplate>

    </asp:Repeater>

</asp:Content>
