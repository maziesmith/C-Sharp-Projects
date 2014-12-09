<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="ShopStorefront.aspx.cs" Inherits="WebAccessSite.ShopPage.ShopStorefront" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

<hr />
<div class="ShopContainer container-fluid" style="margin-top: 20px;">
    <p class="caption shop-text" runat="server" id="storeName">Storefront Name Goes Here</p>
</div>
<hr />

    
        <div id="ItemViewArea" class="GeneralContainer pagewrapper">
            <div class="container-fluid">
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
        
        
       
</asp:Content>

