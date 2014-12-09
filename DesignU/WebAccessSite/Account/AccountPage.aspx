<%@ Page Title="Account" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="WebAccessSite.AccountPage.AccountPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    

 <div class="pagewrapper">
         <div class="GeneralContainer" id="OrderHistory">
        <div class="container-fluid">
            <div class="row">
                <div class="h1 bottomBorder">
                    Order History
                </div>
            </div>
            <div class="row">
                <div id="emptyBox" runat="server" style="display:none;">You have no recent orders to display.</div>
            </div>
        </div>
    </div>
     <div class="container-fluid">
    <div class="GeneralContainer" id="Finances">
        <div class="container-fluid">
            <div class="row">
                <div class="h1 bottomBorder">
                    Finances
                </div>
            </div>
            <div class="row">
                <label >Store Credit</label><br />
                <asp:TextBox runat="server" id="storecredit" cssClass="text-right" BorderStyle="None" enabled="false" text="0.00 DUCs"/>
            </div>
            <div class="row InnerRow">
                <label id="cc1"></label>
            </div>
        </div>
    </div>

    <div class="GeneralContainer" id="Profile">
     <div class ="container-fluid">
         
             <div class ="row">
                 <div class="col-xs-3">
                     <div class="thumbnail text-center">
                         <asp:Image  ID="avatar" runat="server"/>
                     </div>
                     <div class="text-center"><a href="#" class="btn btn-default" role="button" id="chgAvatarButton" onclick="chgAvatar">Change Avatar</a></div>
                 </div>
                 <div class="col-xs-5">
                     <div class="row">
                         <div class="h1 bottomBorder">
                             Profile
                         </div>
                     </div>
                     
                     <div class="row">
                         <div class="col-xs-6">
                             <label>Display Name</label>
                         </div>
                         <div class="col-xs-6">
                             <div id="lblUsername" runat="server" class="accPageInputDisplay"></div>
                         </div>
                    </div>
                     
                    <div class="row InnerRow">
                        <div class="col-xs-6">
                             <label for="firstName">First Name</label>
                        </div>
                        <div class="col-xs-6">
                             <asp:TextBox runat="server" id="txtFirstName" enabled="false" CssClass="accPageInputDisplay"/>
                        </div>
                    </div>
                     
                    <div class="row InnerRow">
                        <div class="col-xs-6">
                             <label for="lastName">Last Name</label>
                        </div>
                        <div class="col-xs-6">
                             <asp:TextBox runat="server" ID="txtLastName" enabled="false" CssClass="accPageInputDisplay"/>
                        </div>
                    </div>
                     
                    <div class="row InnerRow">
                        <div class="col-xs-6">
                             <label for="email">Email Address</label>
                        </div>
                        <div class="col-xs-6">
                             <asp:TextBox runat="server" ID="txtEmail" enabled="false" CssClass="accPageInputDisplay"/>
                        </div>
                    </div>
                    <div class="row InnerRow text-center">
                        <asp:Button CssClass="btn btn-primary" role="button" ID="chgProfileBtn" onclick="chgProfileBtn_Click" Text="Edit Profile Info" runat="server" style="display:inline"/>
                        <asp:Button CssClass="btn btn-default" role="button" ID="cancelBtn" OnClick="cancelBtn_Click" Text="Cancel" runat="server" style="display:none;"/>
                        <asp:Button CssClass="btn btn-success" role="button" ID="svProfileBtn" onclick="svProfileBtn_Click" Text="Save" runat="server" style="display:none;"/>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="row">
                        <div class="h1 bottomBorder">
                            &nbsp;
                        </div>
                    </div>
                    <div class="row"><a data-toggle="modal" data-target="#pwModal" href="/Account/ChangePassword.aspx" class="btn btn-default AccountPageLinkBtn" id="chgPWButton">Change Password</a></div>
                    <div class="row InnerRow"><a data-toggle="modal" data-target="#modalFrame" href="/Account/AccountSettings.aspx" class="btn btn-default AccountPageLinkBtn" id="accSettingsBtn">Account Settings</a></div>
                    <div class="row InnerRow"><a href="/Account/MyStorefront.aspx" class="btn btn-default AccountPageLinkBtn" id="storefrontButton">Go to My Storefront</a></div>
                </div>
             </div>
     </div>
 </div>
 <div class="GeneralContainer" id="RecentItems">
     <div class ="container-fluid">
         <a href="/AccountPage/MyDesigns/MyDesigns.aspx" style="color:black">
             <div class="h1 bottomBorder">
                 Recent Items
             </div>
         </a>
         
             <div id="item1div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item1Btn" data-toggle="modal" data-target="#modalFrame" href="/ViewItem/ViewItem.aspx?view=acc&id=1">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img1" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>content 1 name</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
             <div id="item2div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item2Btn" data-toggle="modal" data-target="#modalFrame" href="/ViewItem/ViewItem.aspx?view=acc&id=2">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img2" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>Content 1</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
             <div id="item3div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item3Btn" data-toggle="modal" data-target="#modalFrame" href="/ViewItem/ViewItem.aspx?view=acc&id=3">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img3" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>Content 1</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
             <div id="item4div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item4Btn"  data-toggle="modal" data-target="#modalFrame" href="/ViewItem/ViewItem.aspx?view=acc&id=4">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img4" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>Content 1</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
             <div id="item5div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item5Btn" data-toggle="modal" data-target="#modalFrame" href="/ViewItem/ViewItem.aspx?view=acc&id=5">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img5" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>Content 1</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
     </div>
 </div>
         </div>
     </div>


<div id="modalFrame" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" data-keyboard="false" data-backdrop="static" style="height:390px;margin:auto">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body" id="viewStuff" runat="server">
                <IFRAME style="width:100%;height:100%;border:none" scrolling="no" ID="viewPane" src="/ViewItem/ViewItem.aspx?id=0" runat="server"></IFRAME>
            </div>
        </div>
    </div>
</div>
<div id="pwModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm" style="width:335px">
        <div class="modal-content">
            <iframe runat="server" id="pwFrame" src="ChangePassword.aspx"></iframe>
        </div>
    </div>
</div>

</asp:Content>
