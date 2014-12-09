<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="ChooseProduct.aspx.cs" Inherits="WebAccessSite.CreatePage.ChooseProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

        $("[rel='tooltip']").tooltip();

        $('#hover-cap1 .shop-thumbnail').hover(
            function () {
                $(this).find('.caption-btm').slideDown(250); //.fadeIn(250)
            },
            function () {
                $(this).find('.caption-btm').slideUp(250); //.fadeOut(205)
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
    <p class="caption shop-text">Choose A Product To Design</p>
</div>
<hr />

    <!-- Carousel --> 


       
<br />

<!-- Product Boxes! -->
<div class="container-fluid ShopContainer" style="margin-bottom: 100px">
<div class="row">

<div class="col-sm-6 col-md-4" id="hover-cap1">

  <div class="shop-thumbnail">
    <div class="caption-btm">
        <h4 style="margin: 20px;"><center>Choose A Product To Design</center></h4>
        <div class="shop-text" style="padding: 0px;">
            <div onclick="location.href='CreatePage.aspx?cat=tshirt'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">T-Shirt</p>
            </div>

            <div onclick="location.href='CreatePage.aspx?cat=hoodie'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Hoodie</p>
            </div>

            <div onclick="location.href='CreatePage.aspx?cat=longsleeve'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
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
            <div onclick="location.href='CreatePage.aspx?cat=btn'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Button</p>
            </div>

            <div onclick="location.href='CreatePage.aspx?cat=flag'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Flag</p>
            </div>

            <div onclick="location.href='CreatePage.aspx?cat=keychain'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
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
            <div onclick="location.href='CreatePage.aspx?cat=poster'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Poster</p>
            </div>

            <div onclick="location.href='CreatePage.aspx?cat=sticker'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
                <p class="GeneralContainer container-fluid" style="vertical-align:super">Sticker</p>
            </div>

            <div onclick="location.href='CreatePage.aspx?cat=postcard'" style="width: 90%; margin-bottom:10px; cursor: pointer;" class="ShopContainer container-fluid">
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




</asp:Content>
