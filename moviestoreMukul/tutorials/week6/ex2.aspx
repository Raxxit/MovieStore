<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="ex2.aspx.cs" Inherits="moviestoreMukul.tutorials.week6.ex2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">

        <ItemTemplate>

            <section>
                <div class="container">
                    <div class="row border border-2 m-2 p-2">
                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                            <div>
                                <asp:Image ID="imgposter" ImageUrl='<%# Eval("Poster", "~/images/{0}") %>'
                                    CssClass="img-fluid" Width="150"
                                    Height="200" runat="server" />
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-6">
                            <p>
                                <b>Moviename</b> - <%# Eval("Moviename") %>
                                <b>BOX Totals: </b> <%# Eval("boxofficetotals", "{0:c}") %>
                            </p>
                            <p>Description</p> <%# Eval("Description") %>
                            <div>
                                <asp:LinkButton ID="lnkmovdetails"
                                    runat="server" Text="Subscribe"
                                    CssClass="btn btn-outline-info mb-4"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </ItemTemplate>

    </asp:Repeater>


</asp:Content>
