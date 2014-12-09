<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="WebAccessSite.AccCreatePage.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <!--Super Sexy Account Creation Form-->
        <div class ="AccountContainer">
            <div id="Form1" class="form-horizontal" role="form" runat="server">
            <div class="page-header">
                <h1>Welcome to Design-U</h1>
                <h3><small>We just need a little bit of info to create your account...</small></h3>
            </div>
                <div class="form-group" runat="server">
                    <label for="email" class="col-sm-2 control-label">Email</label>
                     <div class="col-sm-10">
                         <asp:TextBox ID="tbEmail" ClientIDMode="Static" CssClass="form-control-halfsize" runat="server" placeholder="Email" ></asp:TextBox>
                     </div>
                </div>
                <div class="form-group" runat="server">
                    <label for="userName" class="col-sm-2 control-label">Username</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="tbUserName" ClientIDMode="Static" CssClass="form-control-halfsize" runat="server" placeholder="User Name"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" runat="server">
                    <label for="password" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="tbPassword" ClientIDMode="Static" TextMode="Password" CssClass="form-control-halfsize" runat="server" placeholder="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" runat="server">
                    <label for="password" class="col-sm-2 control-label">Confirm Password</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="tbConfirmPassword" ClientIDMode="Static" TextMode="Password" CssClass="form-control-halfsize" runat="server" placeholder="Confirm Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" runat="server">
                    <label for="firstName" class="col-sm-2 control-label">First Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="tbFirstName" ClientIDMode="Static" CssClass="form-control-halfsize" runat="server" placeholder="First Name"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" runat="server">
                    <label for="lastName" class="col-sm-2 control-label">Last Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="tbLastName" ClientIDMode="Static" CssClass="form-control-halfsize" runat="server" placeholder="Last Name"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" runat="server">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click"/>
                    </div>
                </div>
                </div>
            </div>
        
        

 <!--Lazy script implemntation but fuck it for now will move to seperate file later on :D --> 
    <script>
        new LiveValidation('tbEmail').add(Validate.Presence).add(Validate.Format, { pattern: /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/i});
        new LiveValidation('tbUserName').add(Validate.Presence);
        new LiveValidation('tbPassword').add(Validate.Presence);
        new LiveValidation('tbConfirmPassword').add(Validate.Presence).add(Validate.Confirmation, {match: 'tbPassword'});
        new LiveValidation('tbFirstName').add(Validate.Presence);
        new LiveValidation('tbLastName').add(Validate.Presence);
    </script>
        
</asp:Content>
