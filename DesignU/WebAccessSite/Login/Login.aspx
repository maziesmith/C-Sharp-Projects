<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAccessSite.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="/favicon.ico" />

    <title>Design-U</title>
    <!--Jquery Validation Script-->
    <script src="/Scripts/livevalidation_standalone.js"></script>

    <script type="text/javascript">
        function refreshParent() {
            parent.window.location.href = parent.window.location.href;
        }
    </script>

    <!-- Bootstrap core CSS -->
    <link href="/Styles/bootstrap.css" rel="stylesheet" />
    <!-- Bootstrap theme -->
    <link href="/Styles/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="theme.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>
<body>
    <div runat="server" id="logoutView" class="alert alert-danger" style="width:333px; height:150px; vertical-align:middle;text-align:center;display:none">
        <strong>Logging you out  ... </strong>
        <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%;height:25px"></div>
    </div>
    <div runat="server" id="loginView">
        <form class="form-inline" role="form" runat="server">
            <div runat="server" id="successDiv" class="alert alert-success" style="height: 150px; width: 329px; margin: 0; vertical-align: middle; text-align: center; display: none">
                <strong>Logged in successfully. &nbsp;&nbsp; <span class="glyphicon glyphicon-ok-sign"></span>
                </strong>
            </div>
            <div runat="server" id="loginDiv" style="padding-top: 1px">
                <div runat="server" id="error" class="alert alert-danger" style="padding-top: 2px; padding-bottom: 2px; margin-bottom: 3px; display: none;"><span class="glyphicon glyphicon-warning-sign"></span><span runat="server" id="errorMsg">Invalid username or password.</span></div>
                <asp:Panel runat="server" DefaultButton="transferFocus">
                    <div class="form-group" style="margin-bottom: 10px; margin-top: 7px">
                        <asp:TextBox runat="server" CssClass="form-control" Placeholder="Username" ID="txtUsername" Style="display: inline-block"></asp:TextBox>
                        <div runat="server" id="usernameError" class="text-danger glyphicon glyphicon-warning-sign" style="display: none; position: absolute; right: 10px; top: 39px;"></div>
                        <asp:Button runat="server" ID="transferFocus" OnClick="transferFocus_Click" Style="display: none" />
                    </div>
                </asp:Panel>
                <asp:Panel runat="server" DefaultButton="submitLogin">
                    <div class="form-group" style="margin-bottom: 7px;">
                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" Placeholder="Password" ID="txtPassword" Style="display: inline-block"></asp:TextBox>
                        <div runat="server" id="pwError" class="text-danger glyphicon glyphicon-warning-sign" style="display: none; position: absolute; right: 10px; top: 82px;"></div>
                    </div>
                    <div class="btn-group btn-group-justified">
                        <div class="btn-group"><a class="btn btn-success" href="/accCreatePage/CreateAccount.aspx" target="_top">New Account</a></div>
                        <div class="btn-group"><a class="btn btn-info" href="Login/ForgotPassword.aspx" target="_top">Lost Password</a></div>
                        <div class="btn-group" style="width:2px;"><asp:Button runat="server" ID="submitLogin" CssClass="btn btn-primary" Text="Login" OnClick="btnSubmitLogin_Click" /></div>
                    </div>
                </asp:Panel>
            </div>
        </form>
     </div>
</body>
</html>
