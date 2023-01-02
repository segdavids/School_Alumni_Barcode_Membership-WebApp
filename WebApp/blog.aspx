<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="blog.aspx.cs" Inherits="WebApp.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Blog</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container">
                <!-- Banner Area Start -->
                <div class="banner-user">
                    <div class="banner-content">
                        <div class="media">
                            <div class="item-img">
                                <img src="media/banner/user_1.jpg" alt="User">
                            </div>
                            <div class="media-body">
                                <h3 class="item-title">Rebeca Powel</h3>
                                <div class="item-subtitle">United State of America</div>
                                <ul class="item-social">
                                    <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-dribble"><i class="icofont-instagram"></i></a></li>

                                </ul>
                                <ul class="user-meta">
                                    <li>Posts: <span>30</span></li>
                                    <li>Comments: <span>12</span></li>
                                    <li>Views: <span>1.2k</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            
                <div class="block-box user-search-bar justify-content-between">
                    <div class="box-item">
                        <div class="item-show-title">Total 20 Posts</div>
                    </div>
                    <div class="box-item search-filter">
                        <div class="dropdown">
                            <label>Order By:</label>
                            <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">Newest Post</button>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">All Post</a>
                                <a class="dropdown-item" href="#">Newest Post</a>
                                <a class="dropdown-item" href="#">Oldest Post</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row gutters-20">
                    <div class="col-lg-4 col-md-6">
                        <div class="block-box user-blog">
                            <div class="blog-img">
                                <a href="#"><img src="media/blog/blog_4.jpg" alt="Blog"></a>
                            </div>
                            <div class="blog-content">
                                <div class="blog-category">
                                    <a href="#" style="color:brown;background-color:#f7d35c">Community</a>
                                    <a href="#" style="color:brown;background-color:#f7d35c">Inspiration</a>
                                </div>
                                <h3 class="blog-title"><a href="blog_details?bid=" style="color:brown">Spoke with the developer sety 2020 Gaming Area</a></h3>
                                <div class="blog-date"><i class="icofont-calendar" style="color:brown"></i> 15 October, 2020</div>
                                <p>when ann unknown printer took galley type and scrambled it to make aretype specimen book has survived not only.</p>
                            </div>
                            <div class="blog-meta">
                                <ul>
                                    <li class="blog-reaction">
                                        <div class="reaction-icon">
                                            <img src="media/figure/reaction_1.png" alt="icon">
                                            <img src="media/figure/reaction_2.png" alt="icon">
                                            <img src="media/figure/reaction_3.png" alt="icon">
                                        </div>
                                        <div class="meta-text">+ 15 others</div>
                                    </li>
                                    <li><i class="icofont-comment"></i> 05</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                 
              
                
                  
               
                </div>
                <div class="load-more-post">
                    <a href="#" class="item-btn"><i class="icofont-refresh"></i>Load More Posts</a>
                </div>
            </div>
          



        </div>
</asp:Content>
