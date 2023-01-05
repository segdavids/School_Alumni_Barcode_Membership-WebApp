<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="newsfeed.aspx.cs" Inherits="WebApp.newsfeed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 | NewsFeed</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Content -->
        <div class="page-content col-lg-12 col-12">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container col-lg-12 col-12">
                <!-- Banner Area Start -->
                <div class="newsfeed-banner" style="background-color:brown">
                    <div class="media">
                        <div class="item-icon">
                            <i class="icofont-megaphone-alt" style="color:brown"></i>
                        </div>
                        <div class="media-body">
                            <h3 class="item-title">Members Newsfeed</h3>
                            <p>Stay up to date with DOBA2004 activities and what we have been up to</p>
                        </div>
                    </div>
                    <ul class="animation-img">
                        <li data-sal="slide-down" data-sal-duration="800" data-sal-delay="400"><img src="media/banner/shape_7.png" alt="shape"></li>
                        <li data-sal="slide-up" data-sal-duration="500"><img src="media/banner/people_2.png" alt="shape"></li>
                    </ul>
                </div>
                <div class="newsfeed-search">
                    <ul class="member-list">
                        <li class="active-member">
                            <a href="#">
                                <span class="member-icon">
                                    <i class="icofont-users"></i>
                                </span>
                                <span class="member-text">
                                    Total Members:
                                </span>
                                <span class="member-count" id="totalmembers" runat="server"></span>
                            </a>
                        </li>
                    </ul>
                    <ul class="search-list">
                        <li class="search-filter">
                            <button class="drop-btn" type="button">
                                <i class="icofont-abacus-alt"></i>
                            </button>
                            <div class="drop-menu">
                                <select class="select2">
                                    <option>--Everything--</option>
                                    <option>Status</option>
                                    <option>Photos</option>
                                    <option>Videos</option>
                                    <option>New Members</option>
                                </select>
                            </div>
                        </li>
                        <li class="search-input">
                            <button class="drop-btn" type="button">
                                <i class="icofont-search"></i>
                            </button>
                            <div class="drop-menu">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search....">
                                    <div class="input-group-append">
                                        <button class="search-btn" type="button"><i class="icofont-search-1"></i></button>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                   <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
                <div class="row">
                    <div class="col-lg-8">
                           <asp:Repeater ID="Repeater4" runat="server" >
                            <ItemTemplate>
                        <div class="block-box post-view">
                            <div class="post-header">
                                <div class="media">
                                    <div class="user-img">
                                        <img style="height:44px;width:44px" title="<%# Eval("fullname") %>" src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("PictureURL") %>" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="user-title"><a href="member_profile?mid=<%# Eval("PosterId") %>"><%# Eval("fullname") %> <i class="icofont-check"></i>posted in the group <a href="#"><%# Eval("GroupName") %></a></div>
                                        <ul class="entry-meta">
                                            <li class="meta-privacy"><i class="icofont-world"></i> Public</li>
                                            <li class="meta-time"><%# Convert.ToDateTime(Eval("DatePosted")).ToString("dd-MMM-yyyy") %></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="dropdown">
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                        ...
                                    </button>
                                    <div class="dropdown-menu">
                                      <a class="dropdown-item" href="edit_post?pid=">Edit</a>
                                        <asp:LinkButton ID="LinkButton1" class="dropdown-item" runat="server">Delete</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="post-body">
                                <p><%# Eval("PostDetails") %></p>
                               
                                <div class="post-meta-wrap">
                                    <div class="post-meta">
                                        <div class="post-reaction">
                                           <%-- <div class="reaction-icon">
                                                <img src="/media/figure/reaction_1.png" alt="icon">
                                                <img src="/media/figure/reaction_2.png" alt="icon">
                                                <img src="/media/figure/reaction_3.png" alt="icon">
                                            </div>--%>
<%--                                            <div class="meta-text">Fahim Rahman, Aahat and 15 others</div>--%>
                                        </div>
                                    </div>
                                    <%--<div class="post-meta">
                                        <div class="meta-text">2 Comments</div>
                                        <div class="meta-text">05 Share</div>
                                    </div>--%>
                                </div>
                            </div>
                            <div class="post-footer">
                                <ul>
                                    <li class="post-react">
                                         <asp:LinkButton ID="LinkButton4" runat="server"><i class="icofont-thumbs-up"></i>React!</asp:LinkButton>
                                        <ul class="react-list">
                                            <li><a href="#"><img src="/media/figure/reaction_1.png" alt="Like"></a></li>
                                            <li><a href="#"><img src="/media/figure/reaction_2.png" alt="Like"></a></li>
                                            <li><a href="#"><img src="/media/figure/reaction_4.png" alt="Like"></a></li>
                                            <li><a href="#"><img src="/media/figure/reaction_2.png" alt="Like"></a></li>
                                            <li><a href="#"><img src="/media/figure/reaction_7.png" alt="Like"></a></li>
                                            <li><a href="#"><img src="/media/figure/reaction_6.png" alt="Like"></a></li>
                                            <li><a href="#"><img src="/media/figure/reaction_5.png" alt="Like"></a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton2" OnClick="PostComment" runat="server"><i class="icofont-comment"></i>Comment</asp:LinkButton></li>
                                    <li class="post-share">
                                       <asp:LinkButton ID="LinkButton3" class="share-btn" runat="server"> <i class="icofont-share"></i>Share</asp:LinkButton>
                                        <ul class="share-list">
                                            <li><a href="#" class="color-fb"><i class="icofont-facebook"></i></a></li>
                                            <li><a href="#" class="color-instagram"><i class="icofont-instagram"></i></a></li>
                                            <li><a href="#" class="color-whatsapp"><i class="icofont-brand-whatsapp"></i></a></li>
                                            <li><a href="#" class="color-twitter"><i class="icofont-twitter"></i></a></li>
                                        </ul>
                                    </li>
                                </ul>
<%--                                <span style="color:brown;font-weight:700">This feature is not available for Admin</span>--%>
                            </div>
                        </div>
                       </ItemTemplate>
                              </asp:Repeater>
                        
                       
                     
                        <div class="block-box load-more-btn">
                            <a href="#" class="item-btn"><i class="icofont-refresh"></i>Load More Posts</a>
                        </div>
                    </div>
                    <div class="col-lg-4 widget-block widget-break-lg">
                       
                        <div class="widget widget-memebers">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown">Members</h3>
                              
                            </div>
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab"  href="#newest-member" style="color:brown;background-color:#f7d35c" role="tab" aria-selected="true">NEWEST</a>
                                </li>
                                <li class="nav-item">
<%--                                    <a class="nav-link" data-toggle="tab" href="#popular-member" style="color:brown;background-color:#f7d35c" role="tab" aria-selected="false">POPULAR</a>--%>
                                </li>
                              
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="newest-member" role="tabpanel">
                                    <div class="members-list">
                                        <asp:Repeater ID="Repeater2" runat="server" >
                                        <ItemTemplate>
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("PictureURL") %>" style="height:44px;width:44px" alt="<%# Eval("fullname") %> ">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title"><a href="/member_profile?mid=<%# Eval("MemberId") %>"><%# Eval("fullname") %> </a></h4>
                                        <div class="item-username"><%# Eval("Email") %> </div>
<%--                                        <div class="member-status online"><i class="icofont-check"></i></div>--%>
                                    </div>
                                </div>
                                            </ItemTemplate>
                                     </asp:Repeater>
                                       

                                      
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="popular-member" role="tabpanel">
                                    <div class="members-list">
                                      
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_2.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Kazi Rahman</a></h4>
                                                <div class="item-username">@Rahman</div>
                                                <div class="member-status online"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>

                                      
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                        <div class="widget widget-groups">
                            <div class="widget-heading">
                                <h3 class="widget-title">Groups</h3>
                               
                            </div>
                            <ul class="nav nav-tabs" role="tablist">
                               
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#newest-group" role="tab" style="color:brown;background-color:#f7d35c" aria-selected="false">NEWEST</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                              
                                <div class="tab-pane fade show active" id="newest-group" role="tabpanel">
                                    <div class="group-list">
                                        <asp:Repeater ID="Repeater3" runat="server">
                                            <ItemTemplate>
                                                <div class="media">
                                                    <div class="item-img">
                                                        <a href="#">
                                                            <img src="/media/groups/user_group1.jpg" style="height: 44px; width: 44px" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="item-title"><a href="group_details?gid=<%# Eval("GroupId") %>&gnm=<%# Eval("GroupName") %>" style="color: brown"><%# Eval("GroupName") %></a></h4>
                                                        <div class="item-member"><%# Eval("NumberofUsers") %> Members</div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                      <%--   <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/groups/groups_11.jpg" alt="group">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Photo Contest</a></h4>
                                                <div class="item-member">1,265 Members</div>
                                            </div>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--<div class="widget widget-banner">
                            <h3 class="item-title">Most Popular</h3>
                            <div class="item-subtitle">Circle Application</div>
                            <a href="#" class="item-btn">
                                <span class="btn-text">Register Now</span>
                                <span class="btn-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="21px" height="10px">
                                        <path fill-rule="evenodd" d="M16.671,9.998 L12.997,9.998 L16.462,6.000 L5.000,6.000 L5.000,4.000 L16.462,4.000 L12.997,0.002 L16.671,0.002 L21.003,5.000 L16.671,9.998 ZM17.000,5.379 L17.328,5.000 L17.000,4.621 L17.000,5.379 ZM-0.000,4.000 L3.000,4.000 L3.000,6.000 L-0.000,6.000 L-0.000,4.000 Z" />
                                    </svg>
                                </span>
                            </a>
                            <div class="item-img">
                                <img src="media/figure/widget_banner_1.png" alt="banner">
                            </div>
                        </div>--%>
                        <%--<div class="widget widget-memebers widget-activity">
                            <div class="widget-heading">
                                <h3 class="widget-title">Friends Activity</h3>
                                <div class="dropdown">
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                        ...
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Close</a>
                                        <a class="dropdown-item" href="#">Edit</a>
                                        <a class="dropdown-item" href="#">Delete</a>
                                    </div>
                                </div>
                            </div>
                            <div class="activity-list">
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/figure/chat_10.jpg" alt="Chat">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title">
                                            <a href="#" class="author-name">Aahat Akter</a>
                                            commented on Destroy Dex's
                                            <a href="#" class="activity-link">Photo</a>
                                        </h4>
                                        <div class="activity-time">20 minutes ago</div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/figure/chat_8.jpg" alt="Chat">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title">
                                            <a href="#" class="author-name">Neko Bebop</a>
                                            liked Marina
                                            <a href="#" class="activity-link">Status</a>
                                        </h4>
                                        <div class="activity-time">15 minutes ago</div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/figure/chat_1.jpg" alt="Chat">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title">
                                            <a href="#" class="author-name">Neko Bebop</a>
                                            commented on Destroy Dex's
                                            <a href="#" class="activity-link">Photo</a>
                                        </h4>
                                        <div class="activity-time">20 minutes ago</div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/figure/chat_6.jpg" alt="Chat">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title">
                                            <a href="#" class="author-name">Neko Bebop</a>
                                            commented on Destroy Dex's
                                            <a href="#" class="activity-link">Photo</a>
                                        </h4>
                                        <div class="activity-time">20 minutes ago</div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
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
                                        <a href="index.html"><img src="media/logo_dark.png" alt="Logo"></a>
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
