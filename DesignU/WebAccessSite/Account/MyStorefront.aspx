<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="MyStorefront.aspx.cs" Inherits="WebAccessSite.AccountPage.MyStorefront.MyStorefront" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

<hr />
<div class="ShopContainer container-fluid" style="margin-top: 20px;">
    <p class="caption shop-text">Storefront Name Goes Here</p>
</div>
<hr />

    
    <div id="ItemViewArea" class="GeneralContainer pagewrapper">
        <div class="container-fluid">
        <div class="h1" runat="server" id="storefrontTitle">
            My Storefront
        </div>
            <div id="settingsArea" class="container-fluid">
                <div class="row">
                    <asp:Label ID="commissionLabel" runat="server" Text="My Commission:"></asp:Label>
                    &nbsp;<asp:Label ID="commissionDisplayLabel" runat="server" Text="5%" />
                    <div id="commissionEditArea" style="display:none" runat="server">
                        <asp:TextBox TextMode="Number" runat="server" ID="commissionAmount" ClientIDMode="Static" min="0" max="20" step="1" class="input-sm text-right" BorderStyle="None" Columns="2" ToolTip="Your desired commission as a %" Style="padding-right: 1.4em; border-style:inset">5</asp:TextBox>
                        <div style="display: inline; margin-left: -1.5em">%</div>
                        <div id="commissionError" style="color:red; margin-left:.5em; display: none;" runat="server">
                            Commission must be between 0 and 20 percent.
                        </div>
                    </div>
                </div>
                <div class="row InnerRow" runat="server" id="storefrontNameControls" style="display:none">
                    <asp:Label ID="storefrontNameLabel" runat="server" Text="My Storefront's name:"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="storefrontNameBox" runat="server" CssClass="input-sm" Columns="40"></asp:TextBox>
                </div>
                <div class="row InnerRow">
                <asp:LinkButton runat="server" ID="manageBtn" CssClass="btn btn-default" PostBackUrl="?manage=true" Text="Manage Storefront" />
                </div>
            </div>
            <div id="itemsArea" runat="server"> </div>
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

<div id="Div1" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" data-keyboard="false" data-backdrop="static" style="height:390px;margin:auto">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">× </button>
                <h4 class="modal-title">Storefront Settings</h4>
            </div>
            <div class="modal-body">
                
            </div>
            <div class="modal-footer text-right">
                <a role="button" data-dismiss="modal" class="btn btn-default" >Cancel</a>
                <asp:LinkButton ID="svstngBtn" runat="server" CssClass="btn btn-success" OnClick="svstngBtn_Click" Text="Save Storefront settings" />
            </div>
        </div>
    </div>
</div>
        
      
</asp:Content>

