<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="all_groups.aspx.cs" Inherits="WebApp.all_groups" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | User Grroups</title>
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
                                <h3 class="item-title">DOBA2004 Groups</h3>
                                <div class="item-subtitle">Nigeria Chapter</div>
                                <ul class="item-social">
                                    <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-dribble"><i class="icofont-instagram"></i></a></li>
                                </ul>
                                <ul class="user-meta">
                                    <li>Groups: <span>30</span></li>
                                    <li>Members: <span>12</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
              
                <div class="block-box user-search-bar">
                    <div class="box-item search-box">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search Groups">
                            <div class="input-group-append">
                                        <button class="search-btn" type="button" style="background-color:brown"><i class="icofont-search" style="color:#f7d35c"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="box-item search-filter">
                        <div class="dropdown">
                            <label>Order By:</label>
                            <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">Newest Groups</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">All Groups</a>
                                <a class="dropdown-item" href="#">Newest Groups</a>
                                <a class="dropdown-item" href="#">Oldest Groups</a>
                            </div>
                        </div>
                    </div>
                    <div class="box-item search-switcher">
                        <ul class="user-view-switcher">
                            <li class="active">
                                <a class="user-view-trigger" href="#" data-type="user-grid-view">
                                    <i class="icofont-layout"></i>
                                </a>
                            </li>
                            <li>
                                <a class="user-view-trigger" href="#" data-type="user-list-view">
                                    <i class="icofont-listine-dots"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="user-view" class="user-grid-view">
                    <div class="row gutters-20">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="widget-author user-group">
                                <div class="author-heading">
                                    <div class="cover-img">
                                        <img src="media/figure/cover_1.jpg" alt="cover">
                                    </div>
                                    <div class="profile-img">
                                        <a href="#">
                                            <img src="media/groups/user_group1.jpg" alt="author">
                                        </a>
                                    </div>
                                    <div class="profile-name">
                                        <h4 class="author-name"><a href="group_details?gid=<%--<%#GroupId %>--%>" style="color:brown">Tourist Ways</a></h4>
                                        <div class="author-location">@tourist</div>
                                    </div>
                                </div>
                                <ul class="member-thumb">
                                    <li><img src="media/figure/chat_1.jpg" alt="member"></li>
                                    <li><img src="media/figure/chat_2.jpg" alt="member"></li>
                                    <li><img src="media/figure/chat_3.jpg" alt="member"></li>
                                    <li><img src="media/figure/chat_5.jpg" alt="member"></li>
                                    <li><i class="icofont-plus"></i></li>
                                </ul>
                                <ul class="author-statistics">
                                    <li>
                                        <a href="#"><span class="item-number">25</span> <span class="item-text">GROUP POSTS</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="item-number">230</span> <span class="item-text">ALL MEMBERS</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                       

                        
                    </div>
                    <div class="pagination">
                        <ul>
                            <li><a href="#" class="active">1</a></li>
                            <li><a href="#">2</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--=====================================-->
            <!--=        Footer Area Start       	=-->
            <!--=====================================-->
          



        </div>
</asp:Content>
