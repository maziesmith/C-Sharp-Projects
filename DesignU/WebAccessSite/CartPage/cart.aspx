<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebAccessSite.CartPage.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
   
     
    

    

    <div class="container-fluid GeneralContainer">
        <div class="panel panel-primary">
            <div class="panel-heading"><h2 style="text-align:center;">Shopping Cart</h2> </div>
            
        
         <div class="table-responsive">
             <table class="table table-hover table-bordered">
                 <thead>
                     <tr>
                        <th>Item</th>
                        <th style="width:5em;">Quantity</th>
                        <th style="width:5em;">Subtotal</th>
                        <th style="width:5em;">Remove</th>
                    </tr>
                 </thead>
                 <tbody runat="server" id="cartDisplay">
                 </tbody>
                 <%--<tr>
                         <td><asp:Image runat="server" /></td>
                        <td style="width:199px;"><asp:TextBox runat="server" ID="quantityRow1"></asp:TextBox></td>
                         <td><asp:Label runat="server" Text="$10.00" ID="subtotalRow1"></asp:Label></td>
                         <td><asp:LinkButton CssClass="btn btn-danger" runat="server" ID="removeButtonRow1" OnClick="removeButtonRow1_Click"><i aria-hidden="true" class="glyphicon glyphicon-remove"</i></asp:LinkButton></td>
                        
                     </tr>
                     <tr id="tableSecondRow">
                         <td><asp:Image runat="server" /></td>
                        <td style="width:199px;"><asp:TextBox runat="server" ID="quantityRow2"></asp:TextBox></td>
                         <td><asp:Label runat="server" Text="$10.00" ID="subtotalRow2"></asp:Label></td>
                         <td><asp:LinkButton CssClass="btn btn-danger" runat="server" ID="removeButtonRow2"><i aria-hidden="true" class="glyphicon glyphicon-remove"</i></asp:LinkButton></td>
                     </tr>
                     <tr id="tableThirdRow">
                         <td><asp:Image runat="server" /></td>
                        <td style="width:199px;"><asp:TextBox runat="server" ID="quantityRow3"></asp:TextBox></td>
                         <td><asp:Label Text="$10.00" runat="server" ID="subtotalRow3"></asp:Label></td>
                         <td><asp:LinkButton CssClass="btn btn-danger" runat="server" ID="removeButtonRow3"><i aria-hidden="true" class="glyphicon glyphicon-remove"</i></asp:LinkButton></td>
                     </tr>
                     --%>
             </table>
             </div>
            <div class="panel-footer" style="background-color:#428bca;">
                
               
                    <asp:ImageButton runat="server" ImageUrl="~/Graphics/express-checkout-paypal (1).png" PostBackUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=matt.rutherford61091@gmail.com&item_name=Test&amount=10.00&undefined_quantity=1&currency_code=USD"/>
                    <asp:ImageButton runat="server"  ImageUrl="~/Graphics/bitcoin.png" /> 
                
            </div>
         </div>
    </div>
    
    
<hr />
</asp:Content>
