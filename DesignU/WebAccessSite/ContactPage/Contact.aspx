<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebAccessSite.ContactPage.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
        <div class="container-fluid">
        <div class="GeneralContainer">
            <div class="h1">
                <div class="centered">
                    Contact Us:
                </div>
            </div>
            <div class="row">
                <div class ="col-xs-3">
                    <div class="h4">
                        Phone:
                    </div>
                </div>
                <div class ="col-xs-9">
                    <div class="h4">
                        855-555-5050
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-3">
                    <div class="h4">
                        Email:
                    </div>
                </div>
                <div class="col-xs-9">
                    <div class="h4">
                        <a href="mailto:donotreply@notreal.com">
                            CustomerService@designu.com
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
