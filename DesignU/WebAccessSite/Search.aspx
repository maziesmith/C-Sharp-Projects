<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebAccessSite.AjaxTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    

    


<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link rel="icon" href="/favicon.ico"/>



    <title>Design-U</title>
    <!--Jquery Validation Script-->
     <script src="/Scripts/livevalidation_standalone.js"></script>
     <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script> 
    <script type="text/javascript">
        $(document).ready(function () {
            SearchText();
        });
        function SearchText() {
            $(".autosuggest").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "AutoCompleteService.aspx/GetAutoCompleteData",
                        data: "{'search':'" + $('#txtSearch').val() + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                            console.log(data);
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                }
            });
        }
</script>
     

   
      
     
    <!-- Bootstrap core CSS -->
    <link href="/Styles/bootstrap.css" rel="stylesheet">
    <link href="../Styles/AutoComplete.css" rel="stylesheet" />
    <!-- Bootstrap theme -->
    <link href="/Styles/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet"/>

      <!-- Font for sticky notes on create page-->
      <link href='http://fonts.googleapis.com/css?family=Reenie+Beanie&amp;subset=latin' rel='stylesheet' type='text/css'/>

    <!-- Custom styles for this template -->
    <link href="theme.css" rel="stylesheet"/>
    <!--Link to font for stickynotes-->
     <link href='http://fonts.googleapis.com/css?family=Reenie+Beanie&amp;subset=latin' rel='stylesheet' type='text/css'/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

         


    
  </head>

  <body role="document">
    
  
      
    <div class="container">

      <nav id="Nav1" class="navbar navbar-default" role="navigation" runat="server">
        <div id="Div1" class="container-fluid" runat="server">

          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/MainPage.aspx"><img src="/Master/Logo.png" id="logo"/></a>
          </div>



          <div id="navbar" class="navbar-collapse collapse" runat="server">
            <ul class="nav navbar-nav">
              <li class="dropdown"><a href="/ShopPage/ShopPage.aspx">Shop</a></li>
              <li class="dropdown"><a href="/CreatePage/ChooseProduct.aspx">Create</a></li>
              <li class="dropdown"><a href="/SellPage/SellPage.aspx">Sell</a></li>
              <li class="dropdown"><a runat="server" id="accBtn" href="/Account/AccountPage.aspx">Account</a></li>
              <li class="dropdown"><a runat="server" id="loginBtn" href="#" data-toggle="modal" data-target="#loginModal">Login</a></li>
              <li class="dropdown"><a runat="server" id="logoutBtn" href="~/Login/Login.aspx?mode=logout" data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-off"></span> </a></li>
            </ul>
                 
              
              
                    
              <ul id="Ul1" class="nav navbar-nav navbar-right" style="padding-left: 0px; margin-right: -15px;" runat="server">
              <li id="Li1" class="" runat="server">
                <div class="navbar-form" role="search">
		                <div id="Div2" class="input-group" runat="server">
                                
			                <div class="input-group-btn">
				                <a href="../Search.aspx" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Search </a>
                                    
				               
			                </div>
		                </div>

		        </div><!-- Search Field on Navbar--> 

             </li>             

              <li class="dropdown can-drop">
                <a href="#" class="dropdown-toggle logo" data-toggle="dropdown" aria-expanded="false"><img src="/Master/icon-cart.png" style="height:50px; width:50px"/> <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="../CartPage/cart.aspx">View Cart</a></li>
                    <li><a href="#">Check Out</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Orders</li>
                    <li><a href="#">Details</a></li>
                    <li><a href="#">History</a></li>
                </ul>
              </li>                          
            </ul>
          </div><!--/.nav-collapse -->

        </div><!--/.container-fluid -->
      </nav>

       
    
<!--<iframe frameborder="0" src="../AjaxTest.aspx"></iframe>-->

<div class="pagewrapper">
    <div class="GeneralContainer container-fluid" style="width: 800px; margin-top:200px; padding:100px;">
    <form id="form2" class="form-horizontal" runat="server">
    <div class="container-fluid">
        
        <h2 class="caption">Search</h2>
    <div class="ui-widget">
        <asp:TextBox ID="txtSearch" CssClass="autosuggest form-control" ClientIDMode="Static"  runat="server"></asp:TextBox>
    </div>
        <br />
        <asp:Button Text="Search" runat="server" ID="Button1" CssClass="btn btn-info" PostBackUrl="~/SearchResults.aspx"/>
    </div>
    </form>
    </div>
</div>

      <!--Sticky Footer-->
      <div class="navbar navbar-inverse navbar-fixed-bottom" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
          <div class="container-fluid">
             <div class="row pull-middle">
                <div class="col-xs-3 pull-middle">
                  <a class="navbar-text" href="/AboutPage/About.aspx">About</a>
              </div>
              <div class="col-xs-3 pull-middle">
                  <a class="navbar-text" href="/ContactPage/Contact.aspx">Contact Us</a>
              </div>
              <div class="col-xs-3 pull-middle">
                  <a class="navbar-text" href="#">Tags</a>
              </div>
              <div class="col-xs-3 pull-middle">
                  <a class="navbar-text" href="/HelpPage/Help.aspx">Help</a>
              </div>
          </div>
        </div>
      </div>
   
    </div>
      
      
      

                
        
    
<!--Login Modal opens login page in iFrame-->
<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm" style="width:335px" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> × </button>
                <h4 class="modal-title">Welcome to Design-U</h4>
            </div>
            <div class="modal-body">
                <iframe width:"100%" height:"100%" frameborder="0" scrolling="no" src="../Login/Login.aspx"></iframe>
            </div>
        </div>
    </div>
</div>

      <!--Search Modal-->
      <div id="searchModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> × </button>
                <h4 class="modal-title">Search</h4>
            </div>
            <div class="modal-body">
                <iframe width:"100%" height:"100%" frameborder="0" scrolling="yes" src="../Search.aspx"></iframe>
            </div>
        </div>
    </div>
</div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../../assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>



      
  </body>
    </html>
