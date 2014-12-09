<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="TestCart.aspx.cs" Inherits="WebAccessSite.TestCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
   
    <style>
        .rowStyle {
            height:10px;
        }
        .headerStyle {
            height:10px;
        }
        .imageStyle {
            height: 100px;
            width: 100px;
        }
    </style>
    <div class="container-fluid ShopContainer" style="width:800px; margin-top:20px; padding:10px; margin-left:auto; margin-right:auto;">
        <div class="panel panel-primary">
            <div class="panel-heading"><h2 style="text-align:center;">Shopping Cart</h2> </div>
        
       
            
         

           
        <asp:GridView ID="cartGridView"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="774px" GridLines="None">
            <Columns>
                <asp:ImageField ControlStyle-CssClass="imageStyle" DataImageUrlField="itemImage" SortExpression="itemImage"></asp:ImageField>
                <asp:BoundField  DataField="itemName" HeaderText="Item Name" SortExpression="itemName" />
                <asp:BoundField DataField="subtotal" HeaderText="Subtotal" SortExpression="subtotal" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <asp:Button ID="removeCartItem" runat="server" Text="Remove" CssClass="btn-danger" OnClick="removeItem" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
                   
               
            
           
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VectoriousDesignsConnectionString %>" SelectCommand="SELECT [itemImage], [itemName], [subtotal], [quantity] FROM [testCartItem] WHERE ([userName] = @userName)">
            <SelectParameters>
                <asp:SessionParameter Name="userName" SessionField="Username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            <div class="panel-footer" style="background-color:#428bca;">
                
               
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Graphics/express-checkout-paypal (1).png" PostBackUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=matt.rutherford61091@gmail.com&item_name=Test&amount=10.00&undefined_quantity=1&currency_code=USD"/>
                    <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/Graphics/bitcoin.png" /> 
                
            </div>
             
            </div>
  </div>
</asp:Content>
