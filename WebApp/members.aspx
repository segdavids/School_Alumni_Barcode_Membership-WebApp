<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="WebApp.members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Members</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container col-12 col-md-12 col-xl-12 col-sm-12">
              

                <div class="row">
                    <div class="col-xl-8">
                        <div class="block-box user-search-bar">
                            <div class="box-item search-box">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search Member">
                                    <div class="input-group-append">
                                        <button class="search-btn" type="button" style="background-color:brown"><i class="icofont-search" style="color:#f7d35c"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="box-item search-filter">
                                <div class="dropdown">
                                    <label>Order By:</label>
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">Newest Member</button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">All Member</a>
                                        <a class="dropdown-item" href="#">Newest Member</a>
                                        <a class="dropdown-item" href="#">Oldest Member</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="user-list-view forum-member">
                            <div class="widget-author block-box">
                                <div class="author-heading">
                                    <div class="cover-img">
                                        <img src="media/figure/cover_1.jpg" alt="cover">
                                    </div>
                                    <div class="profile-img">
                                        <a href="#">
                                            <img src="media/figure/author_1.jpg" alt="author">
                                        </a>
                                    </div>
                                    <div class="profile-name">
                                        <h4 class="author-name"><a href="#" style="color:brown">Rebeca Powel</a></h4>
                                        <div class="author-location">@ahat akter</div>
                                    </div>
                                </div>
                                <ul class="author-badge">
                                    <li><a href="#" style="background-color:#3b5998"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" style="background-color:#DD2A7B  "><i class="icofont-instagram"></i></a></li>
                                    <li><a href="#" style="background-color:#00acee"><i class="icofont-twitter"></i></a></li>
                                </ul>
                               <%-- <ul class="author-statistics">
                                    <li>
                                        <a href="#"><span class="item-number">30</span> <span class="item-text">POSTS</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="item-number">12</span> <span class="item-text">COMMENTS</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="item-number">1,125</span> <span class="item-text">VIEWS</span></a>
                                    </li>
                                </ul>--%>
                            </div>
                         
                          
                            <div class="block-box load-more-btn">
                                <a href="#" class="item-btn view-btn"><i class="icofont-refresh"></i>Load More Member</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 widget-block widget-break-lg">
                        <div class="widget widget-memebers">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown">Group Administrators</h3>                              
                            </div>
                            <div class="members-list">
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/figure/chat_1.jpg" alt="Chat">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title"><a href="#">Julia Zessy</a></h4>
                                        <div class="item-username">@zessy </div>
                                        <div class="member-status online"><i class="icofont-check"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="widget widget-memebers">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown">Members</h3>
                            </div>
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#newest-member" role="tab" aria-selected="true">NEWEST</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#popular-member" role="tab" aria-selected="false">POPULAR</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#active-member" role="tab" aria-selected="false">ACTIVE</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="newest-member" role="tabpanel">
                                    <div class="members-list">
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_1.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Aahat Akter</a></h4>
                                                <div class="item-username">@Aahat </div>
                                                <div class="member-status online"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>
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
                                <div class="tab-pane fade" id="popular-member" role="tabpanel">
                                    <div class="members-list">
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_1.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Aahat Akter</a></h4>
                                                <div class="item-username">@Aahat </div>
                                                <div class="member-status online"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>
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
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_3.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Alia Karon</a></h4>
                                                <div class="item-username">@Alia</div>
                                                <div class="member-status online"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_4.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Masterero</a></h4>
                                                <div class="item-username">@Master</div>
                                                <div class="member-status offline"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="active-member" role="tabpanel">
                                    <div class="members-list">
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_1.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Aahat Akter</a></h4>
                                                <div class="item-username">@Aahat </div>
                                                <div class="member-status online"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>
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
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_3.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Alia Karon</a></h4>
                                                <div class="item-username">@Alia</div>
                                                <div class="member-status online"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="media/figure/chat_4.jpg" alt="Chat">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="#">Masterero</a></h4>
                                                <div class="item-username">@Master</div>
                                                <div class="member-status offline"><i class="icofont-check"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="widget widget-groups">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown">My Groups</h3>                            
                            </div>
                            <div class="group-list">
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/groups/groups_9.jpg" alt="group">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title"><a href="#">Kito Development</a></h4>
                                        <div class="item-member">265 Members</div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/groups/groups_10.jpg" alt="group">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title"><a href="#">Chef Express</a></h4>
                                        <div class="item-member">4,265 Members</div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="media/groups/groups_11.jpg" alt="group">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title"><a href="#">Photo Contest</a></h4>
                                        <div class="item-member">1,265 Members</div>
                                    </div>
                                </div>
                              
                            </div>
                            <div class="see-all-btn">
                                <a href="#" class="item-btn"  style="color:brown;background-color:#f7d35c">See All Groups</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           



        </div>
</asp:Content>
