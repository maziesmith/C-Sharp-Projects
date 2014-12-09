<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="WebAccessSite.MainPage" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="maincontent">

<style>
    .carousel-control {
        display: none; 
    }
</style>



    
    


   
    <!-- Carousel --> 
<br />
<div class="container-fluid  GeneralContainer">
<div id="carousel-frontpage" class="carousel slide" data-interval="false" data-ride="carousel" >
 
   
 
  <!-- Wrapper for slides -->
<div class="carousel-inner">
    <div class="item active">
      <img src="Master/bannerimage.png" alt="...">
      <div class="carousel-caption">
          
      </div>
    </div>
  
</div>
 
  <!-- Controls -->
        <a class="left carousel-control" href="#carousel-frontpage" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>

        <a class="right carousel-control" href="#carousel-frontpage" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div> 
</div> <!-- Carousel -->  
<br />  


<!-- Content Boxes! -->
<div class="container-fluid">
<div class="row">
  <div class="col-xs-3 col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="Graphics/shoppingcartcontent.png" alt="...">
      <div class="caption">
        <h3><center>Shop</center></h3>
        <p><center>Whether its Apparel, Accesories, or Art we got you covered</center></p>
       
      </div>
    </div>
</div>


<div class="col-xs-3 col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="Graphics/createcontentimage.png" alt="...">
      <div class="caption">
        <h3><center>Create</center></h3>
        <p><center>Add your own designs using our creation engine</center></p>
        
      </div>
    </div>
</div>

<div class="col-xs-3 col-sm-6 col-md-3 col-xs-6">
    <div class="thumbnail">
      <img src="Graphics/shopcontentimage.png" alt="...">
      <div class="caption">
        <h3><center>Sell</center></h3>
        <p><center>Open a storefront to show off your custom items</center></p>
       
      </div>
    </div>
</div>

    <div class="col-xs-3 col-sm-6 col-md-3 col-xs-6">
    <div class="thumbnail">
      <img  src="Graphics/royaltiesimage.png" alt="...">
      <div class="caption">
        <h3><center>Earn Royalties</center></h3>
        <p><center>DesignU pays you for your custom designs</center></p>
       
      </div>
    </div>
</div>



</div>
</div>




       
    
</asp:Content>

