<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="ShopPage.aspx.cs" Inherits="WebAccessSite.ShopPage.ShopPage" %>



<asp:Content ID="Content1" contentplaceholderid="maincontent" runat="server">

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

        $("[rel='tooltip']").tooltip();

        $('#hover-cap1 .shop-thumbnail').hover(
            function () {$(this).find('.caption-btm').slideDown(250); //.fadeIn(250)
            },
            function () {$(this).find('.caption-btm').slideUp(250); //.fadeOut(205)
            }
        );

        $('#hover-cap2 .shop-thumbnail').hover(
            function () {
                $(this).find('.caption-btm').slideDown(250); //.fadeIn(250)
            },
            function () {
                $(this).find('.caption-btm').slideUp(250); //.fadeOut(205)
            }
        );

        $('#hover-cap3 .shop-thumbnail').hover(
            function () {
                $(this).find('.caption-btm').slideDown(250); //.fadeIn(250)
            },
            function () {
                $(this).find('.caption-btm').slideUp(250); //.fadeOut(205)
            }
        );
    });
</script>

<hr />
<div class="ShopContainer container-fluid" style="margin-top: 20px;">
    <p class="caption shop-text">Shop Products</p>
</div>
<hr />

  



       
<br />

<!-- Product Boxes! -->
<div class="container-fluid ShopContainer" style="margin-bottom: 100px">
<div class="row">

<div class="col-sm-6 col-md-4" id="hover-cap1">

  <div class="shop-thumbnail">
    <div class="caption-btm">
        <h4 style="margin: 20px;"><center>Choose A Product To Design</center></h4>
        <div class="shop-text" style="padding: 0px;">
            <div onclick="location.href='ShopApparel.aspx?cat=tshirt'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">T-Shirt</p>
            </div>

            <div onclick="location.href='ShopApparel.aspx?cat=hoodie'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Hoodie</p>
            </div>

            <div onclick="location.href='ShopApparel.aspx?cat=longsleeve'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Long Sleeve Shirt</p>
            </div>
        </div>        
    </div>
       <img src="/Graphics/ShopTshirt.png" alt="..." style="border-radius: 10px; padding: 20px;" />
  </div>
  <h4 class="shop-text GeneralContainer"><center>Apparel</center></h4>

</div>

<div class="col-sm-6 col-md-4" id="hover-cap2">

  <div class="shop-thumbnail">
    <div class="caption-btm">
        <h4 style="margin: 20px;"><center>Choose A Product To Design</center></h4>
        <div class="shop-text" style="padding: 0px; margin-bottom: 80px">
            <div onclick="location.href='ShopAccessories.aspx?cat=btn'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Button</p>
            </div>

            <div onclick="location.href='ShopAccessories.aspx?cat=flag'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Flag</p>
            </div>

            <div onclick="location.href='ShopAccessories.aspx?cat=keychain'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Keychain</p>
            </div>
        </div>        
    </div>
       <img src="/Graphics/ShopButton.png" alt="..." style="border-radius: 10px; padding: 20px;" />
  </div>
  <h4 class="shop-text GeneralContainer"><center>Accessories</center></h4>

</div>

<div class="col-sm-6 col-md-4" id="hover-cap3">

  <div class="shop-thumbnail" >
    <div class="caption-btm" >
        <h4 style="margin: 20px;"><center>Choose A Product To Design</center></h4>
        <div class="shop-text" style="padding: 0px; margin-bottom: 80px">
            <div onclick="location.href='ShopArt.aspx?cat=poster'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Poster</p>
            </div>

            <div onclick="location.href='ShopArt.aspx?cat=sticker'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Sticker</p>
            </div>

            <div onclick="location.href='ShopArt.aspx?cat=postcard'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Postcard</p>
            </div>
        </div>        
    </div>
       <img src="/Graphics/ShopFrame.png" alt="..." style="border-radius: 10px; padding: 20px;" />
  </div>
  <h4 class="shop-text GeneralContainer"><center>Art</center></h4>

</div>


</div>
</div>

    

    <%-- 
        here's the layout that i'm using
             <div id="item1div" runat="server" class="ShopContainer" style="width: 220px; padding: 10px; margin: 5px; float: left; text-align: center; display: none">
                 <asp:LinkButton class="itemLink" runat="server" ID="item1Btn" data-toggle="modal" data-target="#viewItemModal" href="/ViewItem/ViewItem.aspx?view=acc&id=1">
                     <div class="thumbnail" style="margin: 1px;">
                         <img id="Img1" src="http://placehold.it/200" runat="server" alt="...">
                         <div class="caption">
                             <h3 id="item1Name" runat="server">content 1 name</h3>
                         </div>
                     </div>
                 </asp:LinkButton>
             </div>
        
        so when you populate the image and name, you'll also set the href of the LinkButton to ("/ViewItem/ViewItem.aspx?view=shop&id=" + (whatever the item's itemId is))
         --%>

        <%-- viewItem modal opens ViewItem.aspx in an iframe and passes it the parameters
        of which item to display and whether to display for full size or mobile view.
        also contains control buttons (add/remove from storefront, edit, cancel)--%>


</asp:Content>
