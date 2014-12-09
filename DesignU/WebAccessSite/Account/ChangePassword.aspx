<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebAccessSite.Account.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">× </button>
                <h4 class="modal-title">Change Password</h4>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <span class="input-group-addon pwLabel"><span runat="server" id="oldError" class="text-danger glyphicon glyphicon-warning-sign" style="display:none">warning</span> Old Password:</span>
                    <asp:TextBox ID="oldPwBox" runat="server" CssClass="form-control" TextMode="Password" placeholder="Old Password"></asp:TextBox>
                </div>
                <div class="input-group InnerRow">
                    <span class="input-group-addon pwLabel"><span runat="server" id="newError" class="text-danger glyphicon glyphicon-warning-sign" style="display:none">warning</span> New Password:</span>
                    <asp:TextBox ID="newPwBox" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password"></asp:TextBox>
                </div>
                <div class="input-group InnerRow">
                    <span class="input-group-addon pwLabel"><span runat="server" id="confirmError" class="text-danger glyphicon glyphicon-warning-sign" style="display:none"></span> Confirm Password:</span>
                    <asp:TextBox ID="confirmNewPwBox" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                </div>
            </div>
            <div class="modal-footer">
                &nbsp;
                <button id="Button1" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <asp:LinkButton ID="changePwBtn" runat="server" role="button" CssClass="btn btn-success" Text="Change Password" OnClick="changePwBtn_Click"/>
            </div>
    </form>
</body>
</html>
