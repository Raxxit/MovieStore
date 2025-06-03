<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="moviestoreMukul.tutorials.week3.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
    <script>
        function val_password(source, args) {
            if (args.Value.length >= 5 && args.Value.length <= 10) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
    </script>
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

            <asp:ValidationSummary ForeColor="Red" DisplayMode="BulletList" HeaderText="Errors in the form are: " ShowSummary="true" ShowMessageBox="false" ID="ValidationSummary" runat="server" />

            <hr />
            <fieldset>
                <legend>Personal Details</legend>
                <div class="mb-3">
                    <div class="form-check-inline">
                        <asp:RadioButton runat="server" GroupName="gender" ID="radmale" Checked="true" />
                        <asp:Label runat="server"
                            CssClass="form-check-label" AssociatedControlID="radMale">Male</asp:Label>
                    </div>
                    <div class="form-check-inline">
                        <asp:RadioButton runat="server" GroupName="gender" ID="radfemale" />
                        <asp:Label runat="server"
                            CssClass="form-check-label" AssociatedControlID="radFemale">Female</asp:Label>
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
                    <asp:RequiredFieldValidator Display="Dynamic" ID="rfvfname" ControlToValidate="txtfname" Text="Required" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="First Name is mandatory" ></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Last Name</asp:Label>
                    <asp:TextBox runat="server" ID="txtlname"
                        CssClass="form-control" />
                    <asp:RequiredFieldValidator Display="Dynamic" ID="rfvlname" ControlToValidate="txtlname" Text="Required" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Last Name is mandatory"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Date of birth</asp:Label>
                    <asp:TextBox runat="server" ID="txtdob" TextMode="Date"
                        CssClass="form-control" />
                    <asp:RangeValidator Display="Dynamic" ID="rvdob" ControlToValidate="txtdob" runat="server" Text="age not allowed" ErrorMessage="Age is not between 18 and 45"></asp:RangeValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Profile Picture</asp:Label>
                    <asp:FileUpload ID="fuppic" runat="server" CssClass="form-control" />
                </div>
            </fieldset>

            <fieldset>

                <legend>Contact Details</legend>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Email</asp:Label>
                    <asp:TextBox runat="server" ID="txtemail" TextMode="Email"
                        CssClass="form-control" />

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" ValidationExpression="^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+[.])+[a-z]{2,5}$" runat="server" ErrorMessage="incorrect email format" Text="invalid format" ForeColor="Red"></asp:RegularExpressionValidator>

                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Mobile Number</asp:Label>
                    <asp:TextBox runat="server" ID="txtmob"
                        CssClass="form-control" />
                    <asp:CompareValidator Display="Dynamic" ID="CompareValidator1" ControlToValidate="txtmob" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" runat="server" Text='<img src="../../images/cross.gif">' ErrorMessage="Expecting Numeric value"></asp:CompareValidator>
                    <asp:RegularExpressionValidator Display="Dynamic" ID="revmob" ControlToValidate="txtmob" ForeColor="Red" ValidationExpression="\d{8}" runat="server" Text='<img src="../../images/cross.gif">' ErrorMessage="Expecting Numeric value"></asp:RegularExpressionValidator>

                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Street</asp:Label>
                    <asp:TextBox runat="server" ID="txtstreet"
                        CssClass="form-control" />
                </div>

                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Country</asp:Label>
                    <asp:DropDownList OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" ID="ddlcountry" CssClass="form-control" runat="server" AutoPostBack="true">

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ControlToValidate="ddlcountry" InitialValue="-1" Display="Dynamic" ID="rfvcountry" Text="Required" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="country is mandatory"></asp:RequiredFieldValidator>

                </div>

                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>

                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">City</asp:Label>
                    <asp:DropDownList ID="ddlcity" CssClass="form-control" runat="server">
                    </asp:DropDownList>

                </div>
            </fieldset>

            <fieldset>
                <legend>Your Favourite Movies</legend>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Favourite Movie</asp:Label>
                    <span id="notif" runat="server" class="badge bg-pill bg-primary"></span>
                    <asp:TextBox runat="server" ID="txtafmovies" TextMode="MultiLine" OnTextChanged="txtafmovies_TextChanged" AutoPostBack="true"
                        CssClass="form-control" />
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
                    <asp:RegularExpressionValidator ControlToValidate="txtuname" ID="RegularExpressionValidator2" ValidationExpression="\w{5,10}" runat="server" Text="must be 5-10 char excluding whitespaces" ErrorMessage="Username not allowed"></asp:RegularExpressionValidator>

                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Password</asp:Label>
                    <asp:TextBox runat="server" ID="txtpass" TextMode="Password"
                        CssClass="form-control" />
                    <asp:CustomValidator Display="Dynamic" ID="customvalidatorpass" OnServerValidate="customvalidatorpass_ServerValidate" ValidateEmptyText="true" ClientValidationFunction="val_password" ControlToValidate="txtpass" runat="server" Text="Password should be 5-10 chars" ErrorMessage="Password should be 5-10 chars"></asp:CustomValidator>
                </div>


                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Confirm Password</asp:Label>
                    <asp:TextBox runat="server" ID="txtcpass" TextMode="Password"
                        CssClass="form-control" />

                    <asp:CompareValidator Display="Dynamic" ID="cvpass" ControlToValidate="txtcpass" ForeColor="Red" ControlToCompare="txtpass" Operator="Equal" runat="server" Text='<img src="../../images/cross.gif">' ErrorMessage="Passwords do not match"></asp:CompareValidator>
                    

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
                        Text="Clear All" CausesValidation="false" />
                    <br />
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>

            </fieldset>
        </div>
    </div>

</asp:Content>
