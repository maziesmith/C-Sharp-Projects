<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="WebAccessSite.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div class="ShopContainer container-fluid" style="margin-top: 20px;">
    <p class="caption shop-text">Search Results</p>
    </div>
    <style>
        .rowStyle {
            height:10px;
        }
        .headerStyle {
            height:10px;
        }
    </style>
    <div class="container-fluid ShopContainer" style="width:800px; margin-top:20px; padding:10px; margin-left:auto; margin-right:auto;">
        <div style="margin-left:100px; margin-right:auto;">
         <asp:GridView RowStyle-CssClass="rowStyle" HeaderStyle-CssClass="headerStyle" ID="GridView1" runat="server" GridLines="None"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="81px" Width="677px">
        <Columns>
            <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
            <asp:BoundField DataField="prodURL" HeaderText="Location" HtmlEncode="False" DataFormatString="<a target='_parent' href='ShopPage/{0}'>Link to Product</a>" />
        </Columns>

    </asp:GridView>
          </div>  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VectoriousDesignsConnectionString %>" SelectCommand="SELECT [prodName], [prodURL] FROM [ProductSearch] WHERE ([prodName] = @prodName)">
        <SelectParameters>
            <asp:FormParameter FormField="txtSearch" Name="prodName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
  </div>
   
</asp:Content>
