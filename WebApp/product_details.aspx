<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="product_details.aspx.cs" Inherits="WebApp.product_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Product Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container">
                <div class="product-breadcrumb block-box">
                    <div class="breadcrumb-area">
                        <h1 class="item-title">Shop Page</h1>
                        <ul>
                            <li>
                                <a href="/account/profile">Home</a>
                            </li>
                            <li>
                                <a href="/admin/shop">Shop</a>
                            </li>
                            <li>DMGS SweatShirt</li>
                        </ul>
                    </div>
                </div>
                <div class="single-product">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-gallery">
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade active show" id="related1">
                                        <a href="#">
                                            <img class="zoom_01 img-fluid" alt="single" src="/media/figure/product_7.png" data-zoom-image="/media/figure/product_7.png">
                                        </a>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="related2">
                                        <a href="#">
                                            <img class="zoom_01 img-fluid" alt="single" src="/media/figure/product_7.png" data-zoom-image="/media/figure/product_7.png">
                                        </a>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="related3">
                                        <a href="#">
                                            <img class="zoom_01 img-fluid" alt="single" src="/media/figure/product_7.png" data-zoom-image="/media/figure/product_7.png">
                                        </a>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="related4">
                                        <a href="#">
                                            <img class="zoom_01 img-fluid" alt="single" src="/media/figure/product_7.png" data-zoom-image="/media/figure/product_7.png">
                                        </a>
                                    </div>
                                </div>
                                <ul class="nav nav-tabs tab-nav-list">
                                    <li class="nav-item">
                                        <a class="active" href="#related1" data-toggle="tab" aria-expanded="false">
                                            <img alt="related1" src="/media/figure/product_7.png" class="img-fluid">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#related2" data-toggle="tab" aria-expanded="false">
                                            <img alt="related2" src="/media/figure/product_7.png" class="img-fluid">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#related3" data-toggle="tab" aria-expanded="false">
                                            <img alt="related3" src="/media/figure/product_7.png" class="img-fluid">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#related4" data-toggle="tab" aria-expanded="false">
                                            <img alt="related3" src="/media/figure/product_7.png" class="img-fluid">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-content">
                                <div class="item-category">Shirt</div>
                                <h2 class="item-title">DMGS SweatShirt</h2>
                                <div class="item-price">N10,000.00</div>
                                <ul class="entry-meta">
                                    <li>SKU:
                                        <span>9856000</span>
                                    </li>
                                    <li>Tags:
                                        <a href="#">Merch,</a>
                                        <a href="#">Cloth</a>
                                    </li>
                                </ul>
                                <p>Suspendisse lobortis semper libero, non vehicula mi suscipit et. Sed tortor quam interdum sit amet ullamcorper et, consectetur ac metus. Duis auctor tpulvinar.Suspendisse lobortis semper libero, non vehicula mi suscipit et. Sed tortor quam interdum sit amet ullamcorper et, consectetur ac metus. Duis auctor tellus vitae cursus pulvinar.Suspendisse lobortis semper libero, non vehicula mi suscipit et. Sed tortor quam interdum sit amet ullamcorper Duis auctor tellus vitae cursus pulvinar.</p>
                                <ul class="action-area">
                                    <li id="quantity-holder">
                                        <div class="input-group quantity-holder">
                                            <button class="quantity-btn quantity-plus" type="button">
                                                <i class="icofont-plus" aria-hidden="true"></i>
                                            </button>
                                            <input type="text" name='quantity' class="form-control quantity-input" value="1" placeholder="1">
                                            <button class="quantity-btn quantity-minus" type="button">
                                                <i class="icofont-minus" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" class="cart-btn" style="background-color:brown">Add to Cart</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-product-info">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#description" role="tab" aria-selected="true">Description</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#add-info" role="tab" aria-selected="false">Additional Info</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#reviews" role="tab" aria-selected="false">Reviews (1)</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="description" role="tabpanel">
                            <div class="product-description">
                                <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui</p>
                                <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas eum iure reprehenderit voluptate.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="add-info" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4">
                                    <ul class="additional-info">
                                        <li>King Cheesey Pizza TinTIn</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                    </ul>
                                </div>
                                <div class="col-lg-4">
                                    <ul class="additional-info">
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>Lorem ipsum dolor sit amet</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="reviews" role="tabpanel">
                            <div class="product-review">
                                <div class="media">
                                    <div class="item-img">
                                        <img src="/media/figure/author_5.jpg" alt="blog">
                                    </div>
                                    <div class="media-body">
                                        <div class="item-date">July 11, 2020</div>
                                        <div class="author-name">
                                            <h5 class="item-title">Matt Cloey</h5>
                                            <div class="item-rating">
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                            </div>
                                        </div>
                                        <p>Ahen an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book. It has survived not only five centuries.</p>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img">
                                        <img src="/media/figure/author_6.jpg" alt="blog">
                                    </div>
                                    <div class="media-body">
                                        <div class="item-date">July 11, 2020</div>
                                        <div class="author-name">
                                            <h5 class="item-title">Jessica Willium</h5>
                                            <div class="item-rating">
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                                <i class="icofont-star"></i>
                                            </div>
                                        </div>
                                        <p>Ahen an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book. It has survived not only five centuries.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="review-form">
                                <h3 class="heading-title">WRITE A REVIEW</h3>
                                <form>
                                    <div class="row gutters-15">
                                        <div class="col-lg-4 form-group">
                                            <input type="text" placeholder="Name *" class="form-control" name="name" required>
                                        </div>
                                        <div class="col-lg-4 form-group">
                                            <input type="email" placeholder="E-mail *" class="form-control" name="email" required>
                                        </div>
                                        <div class="col-lg-4 form-group">
                                            <input type="text" placeholder="Subject *" class="form-control" name="subject" required>
                                        </div>
                                        <div class="col-12 form-group">
                                            <textarea class="form-control textarea" placeholder="Comment Here *" name="message" id="message" cols="30" rows="6"></textarea>
                                        </div>
                                        <div class="col-12 form-group">
                                            <input type="submit" class="submit-btn" value="SUBMIT COMMENT">
                                        </div>
                                    </div>
                                    <div class="form-response"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="related-product">
                    <h3 class="heading-title">Related Products</h3>
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="block-box product-box">
                                <div class="product-img">
                                    <a href="#"><img src="/media/figure/product_7.png" alt="product"></a>
                                </div>
                                <div class="product-content">
                                    <div class="item-category">
                                        <a href="#">MERCH</a>
                                    </div>
                                    <h3 class="product-title"><a href="#">DMGS Shirt</a></h3>
                                    <div class="product-price">N10,000</div>
                                </div>
                            </div>
                        </div>
                     
                    </div>
                </div>
            </div>
            <!--=====================================-->
            <!--=        Footer Area Start       	=-->
            <!--=====================================-->
            <footer class="footer-wrap footer-dashboard">
                <div class="main-footer">
                    <div class="container">
                        <div class="row row-cols-lg-4 row-cols-sm-2 row-cols-1">
                            <div class="col">
                                <div class="footer-box">
                                    <div class="footer-logo">
                                        <a href="index.html"><img src="/media/logo_dark.png" alt="Logo"></a>
                                    </div>
                                    <p>Dorem ipsum dolor sit amet consec adipisicing elit sed do eiusmod por incidiut labore et loreLorem ipsum kelly amieo dolorey.</p>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-lg-center">
                                <div class="footer-box">
                                    <h3 class="footer-title">
                                        Important Links
                                    </h3>
                                    <div class="footer-link">
                                        <ul>
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="about-us.html">About us</a></li>
                                            <li><a href="shop.html">Shop</a></li>
                                            <li><a href="contact.html">Contacts</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-lg-center">
                                <div class="footer-box">
                                    <h3 class="footer-title">
                                        Community
                                    </h3>
                                    <div class="footer-link">
                                        <ul>
                                            <li><a href="newsfeed.html">NewsFeed</a></li>
                                            <li><a href="user-timeline.html">Profile</a></li>
                                            <li><a href="user-friends.html">Friends</a></li>
                                            <li><a href="user-groups.html">Groups</a></li>
                                            <li><a href="forums.html">Forums</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-lg-center">
                                <div class="footer-box">
                                    <h3 class="footer-title">
                                        Followers
                                    </h3>
                                    <div class="footer-link">
                                        <ul>
                                            <li><a href="https://www.facebook.com/">facebook</a></li>
                                            <li><a href="https://twitter.com/">twitter</a></li>
                                            <li><a href="https://www.instagram.com/">instagram</a></li>
                                            <li><a href="https://www.youtube.com/">Youtube</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="footer-copyright">Copy© cirkle 2021. All Rights Reserved</div>
                </div>
            </footer>



        </div>
</asp:Content>
