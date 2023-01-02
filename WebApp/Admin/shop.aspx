<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="WebApp.Admin.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 | Shop</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container">
                <div class="product-page">
                    <div class="product-breadcrumb block-box">
                        <div class="breadcrumb-area">
                            <h1 class="item-title">Shop Page</h1>
                            <ul>
                                <li>
                                    <a href="/">Home</a>
                                </li>
                                <li>Shop</li>
                            </ul>
                        </div>
                    </div>
                     <div class="block-box product-filter">                       
                        <div class="filter-btn">
                            <a href="/admin/add_product" class="item-btn" style="color:brown">Add Product</a>
                        </div>
                    </div>
                    <div class="block-box product-filter">
                        <label>Filter By:</label>
                        <div class="select-box">
                            <select class="select2" data-placeholder="Select a Category">
                                <option value="1">Merch</option>
                                <option value="2">Uniforms</option>
                               
                            </select>
                            <select class="select2" data-placeholder="Sort by">
                                <option value="1">Sort by Popularity</option>
                                <option value="2">Sort by New</option>
                                <option value="3">Sort by Old</option>
                            </select>
                        </div>
                        <div class="filter-btn">
                            <a href="#" class="item-btn" style="color:brown">Filter Product</a>
                        </div>
                    </div>
                    <div class="row">
                     
                    
                        <div class="col-lg-4 col-md-6">
                            <div class="block-box product-box">
                                <div class="product-img">
                                    <a href="product_details?pid="><img src="/media/figure/product_7.png" alt="product"></a>
                                </div>
                                <div class="product-content">
                                    <div class="item-category">
                                        <a href="#">Merch</a>
                                    </div>
                                    <h3 class="product-title"><a href="single-shop.html">DMGS SweatShirt</a></h3>
                                    <div class="product-price" style="color:brown">N10,000.00</div>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                 <%--   <div class="block-box load-more-btn">
                        <a href="#" class="item-btn"><i class="icofont-refresh"></i>Load More</a>
                    </div>--%>
                </div>
            </div>

          



        </div>
</asp:Content>
