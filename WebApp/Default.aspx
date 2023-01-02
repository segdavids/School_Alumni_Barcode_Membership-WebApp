﻿<%@ Page Title="" Language="C#" MasterPageFile="~/dmgs.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="default.aspx.cs" Inherits="WebApp.home._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 Alumni | Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!--=====================================-->
        <!--=          Banner Start       		=-->
        <!--=====================================-->
        <section class="hero-banner">
            <div class="container">
                <div class="hero-content" data-sal="zoom-out" data-sal-duration="1000">
                    <h1 class="item-title">Cirkle Community</h1>
                    <p>Having real social contacts can sometimes be difficult FUN, everything becomes much simpler!</p>
                    <div class="item-number">10,95,219</div>
                    <div class="conn-people">Connected People</div>
                    <a href="newsfeed.html" class="button-slide" style="background-color:#f7d35c" >
                        <span class="btn-text" style="color:#cc4f4d" >Come Onboard</span>
                        <span class="btn-icon " style="background-color:#cc4f4d;color:white" >
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                <path fill-rule="evenodd" fill="rgba(247,211,92,255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                            </svg>
                        </span>
                    </a>
                </div>
            </div>
            <div class="leftside-image">
                <div class="cartoon-image" data-sal="slide-down" data-sal-duration="1000" data-sal-delay="100">
                    <img src="media/banner/people_1.png" alt="People">
                </div>
               <%-- <div class="shape-image" data-sal="slide-down" data-sal-duration="500" data-sal-delay="700">
                    <img src="media/banner/shape_1.png" alt="shape">
                </div>--%>
            </div>
            <div class="map-line">
                <img src="media/banner/map_line.png" alt="map" data-sal="slide-up" data-sal-duration="500" data-sal-delay="800">
                <ul class="map-marker">
                    <li data-sal="slide-up" data-sal-duration="700" data-sal-delay="1000"><img src="media/banner/marker_2.png" alt="marker"></li>
                    <li data-sal="slide-up" data-sal-duration="800" data-sal-delay="1000"><img src="media/banner/marker_2.png" alt="marker"></li>
                    <li data-sal="slide-up" data-sal-duration="900" data-sal-delay="1000"><img src="media/banner/marker_2.png" alt="marker"></li>
                    <li data-sal="slide-up" data-sal-duration="1000" data-sal-delay="1000"><img src="media/banner/marker_2.png" alt="marker"></li>
                </ul>
            </div>
        </section>
     <!--=====================================-->
        <!--=         Why Choose Start       	=-->
        <!--=====================================-->
        <section class="why-choose-us">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="why-choose-box">
                            <div class="item-subtitle" style="color:brown">About DMGS Alumni Community</div>
                            <h2 class="item-title" style="color:brown"><span>Why Join Our</span> Cirkle from Social Network ?</h2>
                            <p>Social hen an unknown printer took a galley of type and scrambled make type specimen book. It has survived not only five centuries but also the leap into electronic typesetting, remaining essentialunchanged they popularised with release.</p>
                           <%-- <a href="login.html" class="button-slide" style="background-color:#f7d35c">
                                <span class="btn-text">Join Our Community</span>
                                <span class="btn-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                        <path fill-rule="evenodd" fill="rgb(255, 255, 255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                                    </svg>
                                </span>
                            </a>--%>
                             <a href="members" class="button-slide" style="background-color:#f7d35c" >
                        <span class="btn-text" style="color:#cc4f4d" >Join the Community</span>
                        <span class="btn-icon " style="background-color:#cc4f4d;color:white" >
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                <path fill-rule="evenodd" fill="rgba(247,211,92,255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                            </svg>
                        </span>
                    </a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="why-choose-box">
                            <ul class="features-list">
                                <li>
                                    <div class="media">
                                        <div class="item-icon">
                                            <i class="icofont-wechat" style="color:#f7d35c"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="item-title" style="color:brown">Meet Great People</h3>
                                            <p>when an unknown printer took a galley of scrambled it to make a type specimen It has survived not only.</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <div class="item-icon">
                                            <i class="icofont-users" style="color:#f7d35c"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="item-title" style="color:brown">Forum Discussion</h3>
                                            <p>when an unknown printer took a galley of scrambled it to make a type specimen It has survived not only.</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <div class="item-icon">
                                            <i class="icofont-paper"  style="color:#f7d35c"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="item-title" style="color:brown">Active Groups</h3>
                                            <p>when an unknown printer took a galley of scrambled it to make a type specimen It has survived not only.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=====================================-->
        <!--=         Community Start       	=-->
        <!--=====================================-->
        <section class="community-network">
            <ul class="map-marker">
                <li><img src="media/banner/marker_3.png" alt="marker"></li>
                <li><img src="media/banner/marker_3.png" alt="marker"></li>
                <li><img src="media/banner/marker_3.png" alt="marker"></li>
                <li><img src="media/banner/marker_3.png" alt="marker"></li>
                <li><img src="media/banner/marker_3.png" alt="marker"></li>
            </ul>
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-lg-6">
                        <div class="community-content">
                            <h2 class="item-title">Over 129 Countries represented in Our Community <span style="color:brown">DMGS Alumni</span></h2>
                            <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also leap electronic typesetting, remaining essentially.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-shape" data-sal="slide-left" data-sal-duration="500" data-sal-delay="500">
                <img src="media/figure/shape_22.png" alt="bg">
            </div>
        </section>
        <!--=====================================-->
        <!--=         Team Area  Start       	=-->
        <!--=====================================-->
        <section class="section team-circle">
            <div class="container position-relative">
                <div class="section-heading">
                    <h2 class="item-title" style="color:brown">Active Members</h2>
                    <p>when an unknown printer took a galley of type and meeting fari scrambled it to make a type specimen book.</p>
                </div>
                <div class="row justify-content-center">
                    <div class="col-xl-11">
                        <div class="row no-gutters">
                            <div class="col-lg-4 col-sm-6">
                                <ul class="nav nav-tabs nav-tabs-left" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#team1" role="tab" aria-selected="true">
                                            <img src="media/team/team_1.jpg" alt="team">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team2" role="tab" aria-selected="false">
                                            <img src="media/team/team_5.jpg" alt="team">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team3" role="tab" aria-selected="false">
                                            <img src="media/team/team_6.jpg" alt="team">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-sm-6 order-lg-3">
                                <ul class="nav nav-tabs nav-tabs-right" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team4" role="tab" aria-selected="false">
                                            <img src="media/team/team_3.jpg" alt="team">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team5" role="tab" aria-selected="false">
                                            <img src="media/team/team_4.jpg" alt="team">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team6" role="tab" aria-selected="false">
                                            <img src="media/team/team_7.jpg" alt="team">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 order-lg-2">
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="team1" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img src="media/team/team_1.jpg" alt="team">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="user-timeline.html">Ketty Rio</a></h3>
                                                <div class="group-count"><span>25</span> - Fashion</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team2" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img src="media/team/team_5.jpg" alt="team">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="user-timeline.html">Johnson John</a></h3>
                                                <div class="group-count"><span>25</span> - Fashion</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team3" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img src="media/team/team_6.jpg" alt="team">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="user-timeline.html">Fahim Rahman</a></h3>
                                                <div class="group-count"><span>25</span> - Fashion</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team4" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img src="media/team/team_3.jpg" alt="team">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="user-timeline.html">Mamunur Rashid</a></h3>
                                                <div class="group-count"><span>25</span> - Fashion</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team5" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img src="media/team/team_4.jpg" alt="team">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="user-timeline.html">Ketty Rio</a></h3>
                                                <div class="group-count"><span>25</span> - Fashion</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team6" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img src="media/team/team_7.jpg" alt="team">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="user-timeline.html">Ketty Rio</a></h3>
                                                <div class="group-count"><span>25</span> - Fashion</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="shape-wrap">
                            <li><img src="media/figure/shape_9.png" alt="shape"></li>
                            <li><img src="media/team/shape_1.png" alt="shape"></li>
                            <li><img src="media/team/shape_2.png" alt="shape"></li>
                            <li><img src="media/team/shape_circle_1.png" alt="shape"></li>
                            <li><img src="media/team/shape_circle_2.png" alt="shape"></li>
                            <li><img src="media/team/shape_circle_3.png" alt="shape"></li>
                            <li><img src="media/team/shape_3.png" alt="shape"></li>
                            <li><img src="media/team/shape_4.png" alt="shape"></li>
                        </ul>
                    </div>
                </div>
                <div class="see-all-btn">
                  <%--  <a href="members.html" class="button-slide">
                        <span class="btn-text">Discover All Member</span>
                        <span class="btn-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                <path fill-rule="evenodd" fill="rgb(255, 255, 255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                            </svg>
                        </span>
                    </a>--%>
                      <a href="members" class="button-slide" style="background-color:#f7d35c" >
                        <span class="btn-text" style="color:#cc4f4d" >See All Members</span>
                        <span class="btn-icon " style="background-color:#cc4f4d;color:white" >
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                <path fill-rule="evenodd" fill="rgba(247,211,92,255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                            </svg>
                        </span>
                    </a>
                </div>
            </div>
        </section>
        <!--=====================================-->
        <!--=         Why Choose  Start       	=-->
        <!--=====================================-->
        <section class="why-choose-fluid">

            <div class="container-fluid full-width">
                <div class="row no-gutters">
                    <div class="col-lg-6">
                        <div class="why-choose-content">

                            <div class="content-box">
                                <h2 class="item-title">Cirkle Makes Your Life Easier &amp; Simple</h2>
                                <p>Aliquam lorem ante dapibus in viverra quis feugiat atellu Peaselus vierra nullaut metus varius laoreet unknown printer took scrambled make.</p>
                                <p>Floor Members (120 Members)</p>
                          
                                  <a href="about" class="button-slide" style="background-color:#f7d35c" >
                        <span class="btn-text" style="color:#cc4f4d" >See all Groups</span>
                        <span class="btn-icon " style="background-color:#cc4f4d;color:white" >
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                <path fill-rule="evenodd" fill="rgba(247,211,92,255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                            </svg>
                        </span>
                    </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="why-choose-img">
                            <div class="image-box">
                                <img src="media/figure/why_choose_1.jpg" alt="image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!--=====================================-->
        <!--=         Location Find Start       =-->
        <!--=====================================-->
      <%--  <section class="section location-find">
            <div class="container">
                <div class="section-heading">
                    <h2 class="heading-title">Find People Near You</h2>
                    <p>when an unknown printer took a galley of type and meeting fari scrambled it to make a type specimen book. </p>
                </div>
                <div class="row gutters-20">
                    <div class="col-lg-6">
                        <div class="location-box">
                            <div class="item-img">
                                <a href="user-friends.html">
                                    <img src="media/location/location_1.jpg" alt="Newyork City">
                                </a>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="user-friends.html">Newyork City</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row gutters-20">
                            <div class="col-sm-6">
                                <div class="location-box">
                                    <div class="item-img">
                                        <a href="user-friends.html">
                                            <img src="media/location/location_2.jpg" alt="Newyork City">
                                        </a>
                                    </div>
                                    <div class="item-content">
                                        <h3 class="item-title"><a href="user-friends.html">Boston</a></h3>
                                    </div>
                                </div>
                                <div class="location-box">
                                    <div class="item-img">
                                        <a href="user-friends.html">
                                            <img src="media/location/location_3.jpg" alt="Newyork City">
                                        </a>
                                    </div>
                                    <div class="item-content">
                                        <h3 class="item-title"><a href="user-friends.html">California</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="location-box">
                                    <div class="item-img">
                                        <a href="user-friends.html">
                                            <img src="media/location/location_2.jpg" alt="Newyork City">
                                        </a>
                                    </div>
                                    <div class="item-content">
                                        <h3 class="item-title"><a href="user-friends.html">Kancas City</a></h3>
                                    </div>
                                </div>
                                <div class="location-box">
                                    <div class="item-img">
                                        <a href="user-friends.html">
                                            <img src="media/location/location_4.jpg" alt="Newyork City">
                                        </a>
                                    </div>
                                    <div class="item-content">
                                        <h3 class="item-title"><a href="user-friends.html">Los Angeles</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>--%>
        <!--=====================================-->
        <!--=         Banner Apps  Start       	=-->
        <!--=====================================-->
       <%-- <section class="banner-apps">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 d-flex align-items-center">
                        <div class="banner-content">
                            <h2 class="item-title">Fully Responsive Cirkle WordPress Theme</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                            <a href="https://themeforest.net/user/radiustheme/portfolio" class="button-slide">
                                <span class="btn-text">Purchase Now</span>
                                <span class="btn-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                        <path fill-rule="evenodd" fill="rgb(255, 255, 255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                                    </svg>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="banner-img">
                            <div class="apps-view">
                                <img src="media/banner/apps.png" alt="Apps">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>--%>
        <!--=====================================-->
        <!--=         Groups Area  Start       	=-->
        <!--=====================================-->
      <%--  <section class="section groups-popular">
            <div class="container">
                <div class="section-heading">
                    <h2 class="heading-title" style="color:brown">Alumni Groups</h2>
                    <p>when an unknown printer took a galley of type and meeting fari scrambled it to make a type specimen book. </p>
                </div>
                <div class="row gutters-15 justify-content-center">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="groups-box">
                            <div class="item-img">
                                <img src="media/groups/groups_1.jpg" alt="Groups">
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="group_details?gid=">Executives</a></h3>
                                <div class="groups-member">5 Members</div>
                            </div>
                        </div>
                    </div>
                  
                     <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="groups-box">
                            <div class="item-img">
                                <img src="media/groups/groups_1.jpg" alt="Groups">
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a style="color:#f7d35c" href="group_details?gid=">Floor Members</a></h3>
                                <div class="groups-member">105 Members</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="see-all-btn">
                      <a href="members" class="button-slide" style="background-color:#f7d35c" >
                        <span class="btn-text" style="color:#cc4f4d" >See All Groups</span>
                        <span class="btn-icon " style="background-color:#cc4f4d;color:white" >
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                <path fill-rule="evenodd" fill="rgba(247,211,92,255)" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                            </svg>
                        </span>
                    </a>
                </div>
            </div>
        </section>--%>
        <!--=====================================-->
        <!--=         Testimonial Start       	=-->
        <!--=====================================-->
       <%-- <section class="testimonial-carousel">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="testimonial-box">
                            <div class="slick-carousel slick-slider" data-slick='{"arrows": false, "slidesToShow": 1,  "fade": true, "asNavFor": ".slick-nav"}'>
                                <div class="slick-slide">
                                    <div class="testimonial-content">
                                        <h3 class="item-title">Zinia Jessy</h3>
                                        <div class="item-subtitle">CEO, Khadai R Ghumai</div>
                                        <p>" Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor utlabore et dolore magna aliqua enim miniectetur adipisicing eliteiusmod dolore magna aliqua Ut enim ad minim veniam."</p>
                                    </div>
                                </div>
                                <div class="slick-slide">
                                    <div class="testimonial-content">
                                        <h3 class="item-title">Fahim Rahman</h3>
                                        <div class="item-subtitle">CEO, Khadai R Ghumai</div>
                                        <p>" Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor utlabore et dolore magna aliqua enim miniectetur adipisicing eliteiusmod dolore magna aliqua Ut enim ad minim veniam."</p>
                                    </div>
                                </div>
                                <div class="slick-slide">
                                    <div class="testimonial-content">
                                        <h3 class="item-title">Tasfiq Al Rashid</h3>
                                        <div class="item-subtitle">CEO, Khadai R Ghumai</div>
                                        <p>" Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor utlabore et dolore magna aliqua enim miniectetur adipisicing eliteiusmod dolore magna aliqua Ut enim ad minim veniam."</p>
                                    </div>
                                </div>
                                <div class="slick-slide">
                                    <div class="testimonial-content">
                                        <h3 class="item-title">Mamunur Rahman</h3>
                                        <div class="item-subtitle">CEO, Khadai R Ghumai</div>
                                        <p>" Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor utlabore et dolore magna aliqua enim miniectetur adipisicing eliteiusmod dolore magna aliqua Ut enim ad minim veniam."</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slick-nav slick-carousel" data-slick='{"arrows": false, "slidesToShow": 3, "centerMode": true, "asNavFor": ".slick-slider", "focusOnSelect": true}'>
                                <div class="nav-item">
                                    <img src="media/testimonial/nav_1.jpg" alt="Product">
                                </div>
                                <div class="nav-item">
                                    <img src="media/testimonial/nav_2.jpg" alt="Product">
                                </div>
                                <div class="nav-item">
                                    <img src="media/testimonial/nav_3.jpg" alt="Product">
                                </div>
                                <div class="nav-item">
                                    <img src="media/testimonial/nav_1.jpg" alt="Product">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="shape-wrap">
                <li><img src="media/figure/shape_4.png" alt="shape"></li>
                <li><img src="media/figure/shape_8.png" alt="shape"></li>
                <li><img src="media/figure/shape_2.png" alt="shape"></li>
                <li><img src="media/figure/shape_9.png" alt="shape"></li>
                <li><img src="media/figure/shape_10.png" alt="shape"></li>
                <li><img src="media/figure/shape_11.png" alt="shape"></li>
                <li><img src="media/figure/shape_8.png" alt="shape"></li>
            </ul>
        </section>--%>
        <!--=====================================-->
        <!--=         Blog Area Start       	=-->
        <!--=====================================-->
        <section class="section blog-grid">
            <div class="container">
                <div class="section-heading flex-heading">
                    <div class="row">
                        <div class="col-lg-5">
                            <h2 class="heading-title" style="color:#cc4f4d"> Awesome Blogs &amp; Stories</h2>
                        </div>
                        <div class="col-lg-7">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor utlabore et dolore magna aliqua enim miniectetur adipisicing eliteiusmod dolore magna aliqua Ut enim ad minim veniam.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                     <div class="col-md-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <a href="single-blog.html">
                                    <img src="media/blog/blog_2.jpg" alt="Blog">
                                </a>
                                <div class="blog-date" style="background-color:#cc4f4d" ><i class="icofont-calendar" style="color:#f7d35c"></i>30 Dec 2022</div>
                            </div>
                            <div class="blog-content">
                                <h3 class="blog-title"><a href="single-blog.html">Upcoming Alumni meeting 2022</a></h3>
                                <ul class="entry-meta">
                                    <li><i class="icofont-ui-user"></i>by <a href="#">Admin</a></li>
                                    <li><i class="icofont-tag"></i><a href="#">Annual</a>, <a href="#">Upcoming events</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                      <div class="col-md-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <a href="single-blog.html">
                                    <img src="media/blog/blog_4.jpg" alt="Blog">
                                </a>
                                <div class="blog-date" style="background-color:#cc4f4d" ><i class="icofont-calendar" style="color:#f7d35c"></i>30 Dec 2022</div>
                            </div>
                            <div class="blog-content">
                                <h3 class="blog-title"><a href="single-blog.html">Games Night 2022</a></h3>
                                <ul class="entry-meta">
                                    <li><i class="icofont-ui-user"></i>by <a href="#">Admin</a></li>
                                    <li><i class="icofont-tag"></i><a href="#">Annual</a>, <a href="#">Upcoming events</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <a href="single-blog.html">
                                    <img src="media/blog/blog_1.jpg" alt="Blog">
                                </a>
                                <div class="blog-date" style="background-color:#cc4f4d" style="color:#f7d35c"><i class="icofont-calendar" style="color:#f7d35c"></i>29 Dec 2021</div>
                            </div>
                            <div class="blog-content">
                                <h3 class="blog-title"><a href="single-blog.html">Past Alumni meeting - 2021</a></h3>
                                <ul class="entry-meta">
                                    <li><i class="icofont-ui-user"></i>by <a href="#">Admin</a></li>
                                    <li><i class="icofont-tag"></i><a href="#">Annual</a>, <a href="#">Past events</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                
                </div>
            </div>
        </section>
       
</asp:Content>
