<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="moviestoreMukul.tutorials.week3.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <div class="d-none d-md-block p-4">
                <asp:Image ID="Image1" ImageUrl="~/images/regis.png"
                    Width="350px" runat="server" CssClass="img-fluid" />
            </div>
        </div>
        <div class="col-md-7 offset-md-1">
            <h4>Working with Server controls</h4>
            <hr />
            <fieldset>
                <legend>Personal Profile</legend>
                <div class="mb-3">
                    <div class="form-check-inline">
                        <asp:RadioButton runat="server" GroupName="gender" ID="radmale" />
                        <asp:Label runat="server"
                            CssClass="form-check-label">Male</asp:Label>
                    </div>
                    <div class="form-check-inline">
                        <asp:RadioButton runat="server" GroupName="gender" ID="radfemale" />
                        <asp:Label runat="server"
                            CssClass="form-check-label">Female</asp:Label>
                    </div>
                    <div class="form-check-inline">
                        <asp:RadioButton runat="server" GroupName="gender" ID="radhelo" />
                        <asp:Label runat="server"
                            CssClass="form-check-label">Attack Helicopter</asp:Label>
                    </div>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">First Name</asp:Label>
                    <asp:TextBox runat="server" ID="txtfname"
                        CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Last Name</asp:Label>
                    <asp:TextBox runat="server" ID="txtlname"
                        CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Date of birth</asp:Label>
                    <asp:TextBox runat="server" ID="txtdob" TextMode="Date"
                        CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Favourite Movie</asp:Label>
                    <span id="notif" runat="server" class="badge bg-pill bg-primary"></span>
                    <asp:TextBox runat="server" ID="txtafmovies" TextMode="MultiLine" OnTextChanged="txtafmovies_TextChanged" AutoPostBack="true"
                        CssClass="form-control" />
                </div>
            </fieldset>
            <fieldset>
                <legend>Address</legend>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Country</asp:Label>
                    <asp:DropDownList ID="ddlcountry" CssClass="form-control" runat="server">
                        <asp:ListItem Value="-1">Choose Country</asp:ListItem>
                        <asp:ListItem Value="1">France</asp:ListItem>
                        <asp:ListItem Value="2">Mauritius</asp:ListItem>
                        <asp:ListItem Value="3">Madagascar</asp:ListItem>
                    </asp:DropDownList>

                </div>

                                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">City</asp:Label>
                    <asp:DropDownList ID="ddlcity" CssClass="form-control" runat="server">
                    </asp:DropDownList>

                </div>

            </fieldset>
            <fieldset>
                <legend>Login Details
                </legend>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Username</asp:Label>
                    <asp:TextBox runat="server" ID="txtuname" AccessKey="U"
                        CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Email</asp:Label>
                    <asp:TextBox runat="server" ID="txtemail" TextMode="Email"
                        CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Password</asp:Label>
                    <asp:TextBox runat="server" ID="txtpass" TextMode="Password"
                        CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Confirm Password</asp:Label>
                    <asp:TextBox runat="server" ID="txtcpass" TextMode="Password"
                        CssClass="form-control" />
                </div>
            </fieldset>
            <fieldset>
                <legend>How did you learn about us?</legend>
                <div class="mb-3">
                    <div class="form-check-inline">
                        <asp:CheckBox runat="server" OnCheckedChanged="chkagreement_CheckedChanged" ID="chkagreement" AutoPostBack="true" />
                        <asp:Label runat="server"
                            CssClass="form-check-label">Do you agree with our Term & Conditions and Privacy Statement?</asp:Label>

                        <asp:Image ID="imgsmiley" runat="server" Width="50" Height="50" />

                    </div>
                </div>
            </fieldset>
            <fieldset>
                <div class="mb-3">
                    <asp:Button ID="btnregister" OnClick="btnregister_Click" runat="server" CssClass="btn
btn-outline-primary btn-block"
                        Text="Register" />
                    <asp:Button ID="btnClear" OnClick="btnClear_Click" runat="server" CssClass="btn
btn-outline-danger btn-block"
                        Text="Clear All" />
                    <br />
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>

            </fieldset>
        </div>
    </div>

</asp:Content>
