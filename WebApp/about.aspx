<%@ Page Title="" Language="C#" MasterPageFile="~/dmgs.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="about.aspx.cs" Inherits="WebApp.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | About</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--=====================================-->
        <!--=          Banner Start       		=-->
        <!--=====================================-->
        <section class="breadcrumbs-banner">
            <div class="container">
                <div class="breadcrumbs-area">
                    <h1>About Us</h1>
                    <ul>
                        <li>
                            <a href="/">Home</a>
                        </li>
                        <li>About Us</li>
                    </ul>
                </div>
            </div>
            <div class="breadcrumb-animate-img" data-sal="slide-up" data-sal-duration="1000">
                <img src="media/figure/breadcrumb_img.png" alt="img">
            </div>
        </section>

        <!--=====================================-->
        <!--=         About Us Start       		=-->
        <!--=====================================-->
        <section class="about-us">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-lg-6">
                        <div class="about-us-content">
                            <div class="item-subtitle">About DMGS Alumni Community</div>
                            <h2 class="item-title" style="color:brown">We Improve Your Experience Day by Day</h2>
                            <p>Social hen an unknown printer took a galley of type a scrambled make type specimen book. It has survived not only five centuries but also the leap into electronic typesetting, remaining essential unchanged they popularised with release.Social hen an unknown printer took galley type a scrambled.</p>
                            <p>it has survived not only five centuriesut also the leap into lectronic typesetting, remaining essentialunchanged they popularised with release.Social hen an unknown printer.it has survived not only five centuriesut also the leap into lectronic typesetting, remaining essentialunchanged they popularised with release.</p>
                            <div class="progress-box">
                                <div class="media">
                                    <div class="item-icon">
                                        <i class="icofont-users-social" style="color:#f7d35c"></i>
                                    </div>
                                    <div class="media-body">
                                        <div class="item-title" style="color:brown">1500K+</div>
                                        <div class="item-subtitle">Registered Members</div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-icon">
                                        <i class="icofont-numbered" style="color:#f7d35c"></i>
                                    </div>
                                    <div class="media-body">
                                        <div class="item-title" style="color:brown">121+</div>
                                        <div class="item-subtitle">Features Available</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-us-img">
                            <div class="item-img" data-sal="slide-left" data-sal-duration="800">
                                <img src="media/about/about_1.png" alt="about">
                            </div>
                            <div class="item-video" data-sal="slide-up" data-sal-duration="800" data-sal-delay="200">
                                <img src="media/about/about_2.png" alt="about">
                                <div class="video-icon">
                                    <a class="play-btn popup-youtube" href="https://www.youtube.com/watch?v=1iIZeIy7TqM">
                                        <i class="icofont-ui-play"></i>
                                    </a>
                                </div>
                            </div>
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
                                  
                                   
                                     <li class="nav-item active">
                                        <a class="nav-link" data-toggle="tab" href="#team<%:all6.Count>1? all6[0].Team:1%>" role="tab" aria-selected="false">
                                            <img style="height:270px;width:270px" src="media/userimages/<%:all6.Count>1?  all6[0].PictureURL == ""?"flat-user-icon-11.png":all6[0].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>1? all6[0].Fullname:"Member" %>">
                                        </a>
                                    </li>                                 
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team<%: all6.Count>2?  all6[1].Team:2 %>" role="tab" aria-selected="false">
                                            <img style="height:235px;width:235px" src="media/userimages/<%:all6.Count>2?  all6[1].PictureURL == ""?"flat-user-icon-11.png":all6[1].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>2? all6[1].Fullname:"Member" %>">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team<%:all6.Count>3? all6[2].Team:3%>" role="tab" aria-selected="false">
                                            <img style="height:235px;width:235px" src="media/userimages/<%: all6.Count>3?  all6[2].PictureURL == ""?"flat-user-icon-11.png":all6[2].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>3? all6[2].Fullname:"Member" %>">
                                        </a>
                                    </li>
                            </ul>
                            </div>
                            <div class="col-lg-4 col-sm-6 order-lg-3">
                                <ul class="nav nav-tabs nav-tabs-right" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team<%:all6.Count>4? all6[3].Team:4%>" role="tab" aria-selected="false">
                                            <img style="height:235px;width:235px" src="media/userimages/<%: all6.Count>4?  all6[3].PictureURL == ""?"flat-user-icon-11.png":all6[3].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>4? all6[3].Fullname:"Member" %>">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team<%:all6.Count>5? all6[4].Team:5%>" role="tab" aria-selected="false">
                                            <img style="height:235px;width:235px" src="media/userimages/<%: all6.Count>5?  all6[4].PictureURL == ""?"flat-user-icon-11.png":all6[4].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>5? all6[4].Fullname:"Member" %>">
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#team<%:all6.Count>6? all6[5].Team:6%>" role="tab" aria-selected="false">
                                            <img  style="height:270px;width:270px" src="media/userimages/<%:all6.Count>6? all6[5].PictureURL == ""?"flat-user-icon-11.png":all6[5].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>6? all6[5].Fullname:"Member" %>">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 order-lg-2">
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="team<%:all6.Count>1? all6[0].Team:1%>" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                            <img style="height:296.5px;width:296.5px" src="media/userimages/<%:all6.Count>1?  all6[0].PictureURL == ""?"flat-user-icon-11.png":all6[0].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>1? all6[0].Fullname:"Member" %>">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="member_details?mid=<%:all6.Count>1? all6[0].UserId:0%>"><%:all6.Count>1? all6[0].Fullname:""%></a></h3>
                                                <div class="group-count">
                                                    <span><a href="https://www.facebook.com/<%:all6.Count>1? all6[0].Facebook:""%>" style="color:brown"><i class="icofont-facebook"></i></a></span>  <span><a href="https://www.twitter.com/<%:all6.Count>1? all6[0].Twitter:""%>" style="color:brown"><i class="icofont-twitter"></i></a></span> <span><a href="https://www.instagram.com/<%:all6.Count>1? all6[0].Instagram:""%>" style="color:brown"><i class="icofont-instagram"></i></a></span> 
                                                </div>
                                            </div>	
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team<%:all6.Count>2? all6[1].Team:2%>" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img style="height:296.5px;width:296.5px" src="media/userimages/<%:all6.Count>2?  all6[1].PictureURL == ""?"flat-user-icon-11.png":all6[1].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>2? all6[1].Fullname:"Member" %>">
                                            </div>
                                             <div class="item-content">
                                                <h3 class="item-title"><a href="member_details?mid=<%:all6.Count>2? all6[1].UserId:0%>"><%:all6.Count>2? all6[1].Fullname:""%></a></h3>
                                                <div class="group-count">
                                                    <span><a href="https://www.facebook.com/<%:all6.Count>2? all6[1].Facebook:""%>" style="color:brown"><i class="icofont-facebook"></i></a></span>  <span><a href="https://www.twitter.com/<%:all6.Count>2? all6[1].Twitter:""%>" style="color:brown"><i class="icofont-twitter"></i></a></span> <span><a href="https://www.instagram.com/<%:all6.Count>2? all6[1].Instagram:""%>" style="color:brown"><i class="icofont-instagram"></i></a></span> 
                                                </div>
                                            </div>	
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team<%:all6.Count>3? all6[2].Team:3%>" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img style="height:296.5px;width:296.5px" src="media/userimages/<%:all6.Count>3?  all6[2].PictureURL == ""?"flat-user-icon-11.png":all6[2].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>3? all6[2].Fullname:"Member" %>">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="member_details?mid=<%:all6.Count>3? all6[2].UserId:0%>"><%:all6.Count>3? all6[2].Fullname:""%></a></h3>
                                                <div class="group-count">
                                                    <span><a href="https://www.facebook.com/<%:all6.Count>3? all6[2].Facebook:""%>" style="color:brown"><i class="icofont-facebook"></i></a></span>  <span><a href="https://www.twitter.com/<%:all6.Count>3? all6[2].Twitter:""%>" style="color:brown"><i class="icofont-twitter"></i></a></span> <span><a href="https://www.instagram.com/<%:all6.Count>3? all6[2].Instagram:""%>" style="color:brown"><i class="icofont-instagram"></i></a></span> 
                                                </div>
                                            </div>	
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team<%:all6.Count>4? all6[3].Team:4%>" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img style="height:296.5px;width:296.5px" src="media/userimages/<%:all6.Count>4?  all6[3].PictureURL == ""?"flat-user-icon-11.png":all6[3].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>4? all6[3].Fullname:"Member" %>">
                                            </div>
                                             <div class="item-content">
                                                <h3 class="item-title"><a href="member_details?mid=<%:all6.Count>4? all6[3].UserId:0%>"><%:all6.Count>4? all6[3].Fullname:""%></a></h3>
                                                <div class="group-count">
                                                    <span><a href="https://www.facebook.com/<%:all6.Count>4? all6[3].Facebook:""%>" style="color:brown"><i class="icofont-facebook"></i></a></span>  <span><a href="https://www.twitter.com/<%:all6.Count>4? all6[3].Twitter:""%>" style="color:brown"><i class="icofont-twitter"></i></a></span> <span><a href="https://www.instagram.com/<%:all6.Count>4? all6[3].Instagram:""%>" style="color:brown"><i class="icofont-instagram"></i></a></span> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team<%:all6.Count>5? all6[4].Team:5%>" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img" >
                                                <img style="height:296.5px;width:296.5px;background-color:lightgray" src="media/userimages/<%:all6.Count>5?  all6[4].PictureURL == ""?"flat-user-icon-11.png":all6[4].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>5? all6[4].Fullname:"Member" %>">
                                            </div>
                                            <div class="item-content">
                                                <h3 class="item-title"><a href="member_details?mid=<%:all6.Count>5? all6[4].UserId:0%>"><%:all6.Count>5? all6[4].Fullname:""%></a></h3>
                                                <div class="group-count">
                                                    <span><a href="https://www.facebook.com/<%:all6.Count>5? all6[4].Facebook:""%>" style="color:brown"><i class="icofont-facebook"></i></a></span>  <span><a href="https://www.twitter.com/<%:all6.Count>5? all6[4].Twitter:""%>" style="color:brown"><i class="icofont-twitter"></i></a></span> <span><a href="https://www.instagram.com/<%:all6.Count>5? all6[4].Instagram:""%>" style="color:brown"><i class="icofont-instagram"></i></a></span> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="team<%:all6.Count>6? all6[5].Team:6%>" role="tabpanel">
                                        <div class="team-box">
                                            <div class="item-img">
                                                <img style="height:296.5px;width:296.5px" src="media/userimages/<%:all6.Count>6?  all6[5].PictureURL == ""?"flat-user-icon-11.png":all6[5].PictureURL:"flat-user-icon-11.png" %>" alt="<%:all6.Count>6? all6[5].Fullname:"Member" %>">
                                            </div>
                                             <div class="item-content">
                                                <h3 class="item-title"><a href="member_details?mid=<%:all6.Count>6? all6[5].UserId:0%>"><%:all6.Count>6? all6[5].Fullname:""%></a></h3>
                                                <div class="group-count">
                                                    <span><a href="https://www.facebook.com/<%:all6.Count>6? all6[5].Facebook:""%>" style="color:brown"><i class="icofont-facebook"></i></a></span>  <span><a href="https://www.twitter.com/<%:all6.Count>6? all6[5].Twitter:""%>" style="color:brown"><i class="icofont-twitter"></i></a></span> <span><a href="https://www.instagram.com/<%:all6.Count>6? all6[5].Instagram:""%>" style="color:brown"><i class="icofont-instagram"></i></a></span> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="shape-wrap">
                            <li><img src="media/figure/shape_9.png" alt="shape"></li>
                            <li><img src="media/team/shape_circle_1.png" alt="shape"></li>
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
       
       
</asp:Content>
