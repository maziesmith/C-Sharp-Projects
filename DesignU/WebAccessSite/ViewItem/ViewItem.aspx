<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewItem.aspx.cs" Inherits="WebAccessSite.ViewItem.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>View Item</title>
  <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
     
    <!-- Bootstrap core CSS -->
    <link href="/Styles/bootstrap.css" rel="stylesheet" />

</head>

    <%-- this page is designed to be accessed within a modal dialog.
        it NEEDS the querystring parameters to function properly.
        accessing it as a standalone page will NOT work. --%>

<body>
    <form id="form1" runat="server">
    
        <div class="GeneralContainer" style="padding:10px;background-color:white">
            <div class="row">
                <button class="close" data-dismiss="modal" style="margin:-8px 11px">&times;</button>
                <div class="col-sm-4" style="margin-right:20px;">
                    <asp:Image ID="imgItemModal" runat="server" style="width:200px"/>
                </div>
                <div class="col-sm-7">
                    <div class="row">
                        <h1 class="bottomBorder no-margin"><asp:Label ID="viewItemLabel" runat="server"></asp:Label></h1>
                    </div>
                    <div class="row" runat="server" id="desc" style="padding-bottom:5px;height:151px;margin-bottom:10px;overflow-y:scroll">
                            descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things descriptiony things 
                    </div>
                </div>
            </div>
            <div class="modal-footer" style="padding-bottom: 1px;margin-right: 0px;">
                <div id="shopInfo" runat="server" style="padding-left:15px;text-align:left;display:inline;position: absolute;left: 0;bottom: 15px; display:none">
                    Size
                    &nbsp;
                    <asp:DropDownList ID="sizeBox" runat="server" CssClass="text-right">
                        <asp:ListItem>XS</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                        <asp:ListItem>XXL</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    Quantity
                    &nbsp;
                    <asp:TextBox ID="quantBox" runat="server" style="text-align:right;width:3em" min="1" max="99" step="1" TextMode="Number" />
                    &nbsp;
                    Price:
                    &nbsp;
                    <asp:Label ID="priceBox" runat="server" Text="$25.00" />

                </div>
                <div runat="server" id="btnArea" style="display:inline;">
                    <asp:LinkButton runat="server" ID="cancelBtn" data-dismiss="modal" class="btn btn-default" style="margin-right:5px;">Close</asp:LinkButton>
                    <div runat="server" id="storeFrontAndDesignsBtns" style="display: inline">
                        <asp:LinkButton runat="server" ID="deleteModalBtn" data-toggle="modal" data-target="#confirmDeleteModal" CssClass="btn btn-danger">Delete Item</asp:LinkButton>
                        <asp:LinkButton runat="server" id="EditBtn" OnClientClick="" CssClass="btn btn-primary">Edit Item</asp:LinkButton>
                        <asp:LinkButton runat="server" ID="removeBtn" OnClick="removeBtn_Click" class="btn btn-warning" Style="display: none">Remove from Storefront</asp:LinkButton>
                        <asp:LinkButton runat="server" ID="addBtn" OnClick="addBtn_Click" class="btn btn-success" Style="display: inline-block">Add to Storefront</asp:LinkButton>
                    </div>
                    <div runat="server" id="shopBtns" style="display: none;">
                        <asp:LinkButton runat="server" ID="addToCartBtn" OnClick="addToCartBtn_Click" CssClass="btn btn-success" Style="display: inline">Add to Cart</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>

        <div id="confirmDeleteModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm" style="width:335px;height: 210px;position: absolute;top: 60px;bottom: 0;left: 180px;right: 0;margin: auto;" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" data-target="confirmDeleteModal" aria-hidden="true"> × </button>
                <h3 class="modal-title">Are you sure?</h3>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this item? It will vanish from our database and you won't be able to recover it!
            </div>
            <div class="modal-footer text-right" style="padding-left: 8px;padding-right: 8px;text-align: center;">
                <a class="btn btn-default" role="button" data-dismiss="modal" style="display:inline">No! I want to keep this!</a>
                <asp:LinkButton runat="server" ID="deleteBtn" OnClick="deleteBtn_Click" class="btn btn-danger" style="display:inline">Confirm Delete <span class="glyphicon glyphicon-minus-sign" /></asp:LinkButton></div>
        </div>
    </div>
</div>
    
    </form>
</body>
</html>
