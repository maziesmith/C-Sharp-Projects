<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="CreatePage.aspx.cs" Inherits="WebAccessSite.CreatePage.CreatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <script runat="server">
        protected string uploadedImgPath;
        protected void uploadImage_click(object sender, EventArgs e)
        {
            if (uploadImage.HasFile)
            {
                uploadedImgPath = "/Uploads/" + uploadImage.FileName;
                uploadImage.SaveAs(Server.MapPath(uploadedImgPath));
                //Saves uploaded image in session object for use later on
                Session["uploadedImage"] = uploadedImgPath;
            }
        }

    </script>

<hr />
<div class="ShopContainer container-fluid" style="margin-top: 20px;">
    <p class="caption shop-text">Design Your Product</p>
</div>
<hr />

    <div class="container-fluid GeneralContainer">
        <div class="row">
            <div class="form-horizontal" runat="server">
                <div class="col-sm-6 col-md-3 col-md-offset-1">             
                    <ul id="notes">
                        <li>
                            <p>1.Click Choose File <br />
                                2.Click Upload Image<br />
                                3.Add to Cart
                            </p>
                        </li>    
                    </ul>
                </div>

            <div class="col-sm-6 col-md-4">
                <div class="thumbnailCreationpage">
                    <div id="createImageContainer">
                        <div id="itemForCreation">
                            <asp:Image ID="originalItemImage" runat="server" />
                        </div>
                        <div id="uploadedImage">
                            <img style="border:none;" src="<%=uploadedImgPath%>" alt="" />
                        </div>
                    </div>
                    
                <div id="createPageCaption" class="caption">
                    <center><asp:Label ID="txtitemName" runat="server"></asp:Label></center>
                    
                    
                </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3">
                <h3>Description</h3>
                <asp:TextBox id="descBox" runat="server" TextMode="MultiLine" style="width:100%;height:150px;resize:none" CssClass="form-control">Item description will go here</asp:TextBox>
                <br />
                <div class="text-center"><asp:FileUpload ID="uploadImage" runat="server" /></div>
                <asp:Button runat="server" Text="Upload Image" CssClass="btn btn-info" ID="btnUploadImage" OnClick="uploadImage_click" style="padding-top:3px;"/>
                <br />
                <br />
                <div>
                    <asp:LinkButton CssClass="btn btn-primary" ID="svBtn" runat="server" OnClick="svBtn_Click"> Save this to my account  <span class="glyphicon glyphicon-cloud-upload" /> </asp:LinkButton>
                    <br /><br />
                    The options below are for purchasing only. The design will still be saved to your account.
                    <br />
                    <asp:DropDownList ID="sizeDropDown" runat="server" CssClass="form-control" style="width:6em; display:inline;">
                        <asp:ListItem value="XS">XS</asp:ListItem>
                        <asp:ListItem value="SM">SM</asp:ListItem>
                        <asp:ListItem value="MD">MD</asp:ListItem>
                        <asp:ListItem value="LG">LG</asp:ListItem>
                        <asp:ListItem value="XL">XL</asp:ListItem>
                        <asp:ListItem value="XXL">XXL</asp:ListItem>
                        <asp:ListItem value="XXXL">XXXL</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox  runat="server" ID="txtQuantity" Text="1" CssClass="form-control" style="width:3em; display:inline" />
                    <asp:Label runat="server" ID="lblSubtotal"></asp:Label>
                    <br />
                    <asp:Button CssClass="btn btn-success" ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="newAddToCart"  style="padding-top:3px;"/>

                </div>
            </div>
        </div>
        </div>
        
    </div>
</asp:Content>
