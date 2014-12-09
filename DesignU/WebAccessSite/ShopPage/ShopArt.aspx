<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="ShopArt.aspx.cs" Inherits="WebAccessSite.ShopPage.ShopArt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

<hr />
<div class="ShopContainer container-fluid" style="margin-top: 20px;">
    <p class="caption shop-text">Shop Art</p>
</div>
<hr />



<div class="GeneralContainer">

     <div class="container-fluid">

             <div id="item1div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: inline">
                 <asp:HyperLink class="itemLink" runat="server" ID="item1Btn" data-toggle="modal" data-target="#viewItemModal" NavigateUrl="/ViewItem/ViewItem.aspx?view=shop&id=0">
                     <div class="thumbnail" style="margin: 1px;">
                         <asp:Image ID="originalItemImage" runat="server" />
                         <div class="caption">
                             <h3><asp:Label CssClass="label label-info" runat="server" ID="itemName"></asp:Label></h3>
                         </div>
                     </div>
                 </asp:HyperLink>
             </div>
             <div id="item2div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item2Btn" data-toggle="modal" data-target="#viewItemModal" href="/ViewItem/ViewItem.aspx?id=2">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img2" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>Content 1</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
             <div id="item3div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item3Btn" data-toggle="modal" data-target="#viewItemModal" href="/ViewItem/ViewItem.aspx?id=3">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img3" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>Content 1</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
             <div id="item4div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item4Btn"  data-toggle="modal" data-target="#viewItemModal" href="/ViewItem/ViewItem.aspx?id=4">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img4" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3>Content 1</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
             <div id="item5div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item5Btn" data-toggle="modal" data-target="#viewItemModal" href="/ViewItem/ViewItem.aspx?id=5">
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

    <div id="viewItemModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" data-keyboard="false" data-backdrop="static" style="height:390px;margin:auto">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body" id="viewStuff" runat="server">
                <IFRAME style="width:100%;height:100%;border:none" scrolling="no" ID="viewItemPane" src="/ViewItem/ViewItem.aspx?id=0" runat="server"></IFRAME>
            </div>
        </div>
    </div>
    </div>


</asp:Content>
