<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="WebApp.members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Members</title>

   <script>
       // JavaScript code
       function search_animal() {
           let input = document.getElementById('searchbar').value
           input = input.toLowerCase();
           let x = document.getElementsByClassName('list');

           for (i = 0; i < x.length; i++) {
               if (!x[i].innerHTML.toLowerCase().includes(input)) {
                   x[i].style.display = "none";
               }
               else {
                   x[i].style.display = "block";
               }
           }
       }
   </script>
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
                                    <input type="text" id="searchbar" onkeyup="search_animal()" class="form-control" placeholder="Search Member">
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
                         <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
                        <div class="user-list-view forum-member">
                             <asp:Repeater ID="Repeater1" runat="server" >
                                        <ItemTemplate>
                            <div class="widget-author block-box list">
                                 <asp:Label ID="entrytxt"  Visible = "false" runat="server" Text='<%# Eval("MemberId") %>' />
                                <div class="author-heading">
                                    <div class="cover-img">
                                        <img src="media/banner/cover1.png" alt="cover">
                                    </div>
                                    <div class="profile-img">
                                        <a href="#">
                                            <img src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("PictureURL") %>" style="height:90px;width:90px" alt="<%# Eval("FirstName") %>  <%# Eval("LastName") %>">
                                        </a>
                                    </div>
                                    <div class="profile-name">
                                         <h4 class="author-name"><a href="/member_profile?mid=<%# Eval("MemberId") %>"><span class="el"><%# Eval("FirstName") %>  <%# Eval("LastName") %></span> </a></h4>
                                        <div class="author-location"><%# Eval("Email") %></div>
                                    </div>
                                </div>
                                <ul class="author-badge">
                                    <li><a href="https://facebook.com/<%# Eval("Facebook") %>" style="background-color:#3b5998"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="https://instagram.com/<%# Eval("Instagram") %>" style="background-color:#DD2A7B  "><i class="icofont-instagram"></i></a></li>
                                    <li><a href="https://twitter.com/<%# Eval("Twitter") %>" style="background-color:#00acee"><i class="icofont-twitter"></i></a></li>
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
                         
                          </ItemTemplate>
                                 </asp:Repeater>
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
                                 <asp:Repeater ID="Repeater2" runat="server" >
                                        <ItemTemplate>
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("PictureURL") %>" style="height:44px;width:44px" alt="<%# Eval("fullname") %> ">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title"><a href="/member_profile?mid=<%# Eval("UserId") %>"><%# Eval("fullname") %> </a></h4>
                                        <div class="item-username"><%# Eval("Email") %> </div>
                                        <div class="member-status online"><i class="icofont-check"></i></div>
                                    </div>
                                </div>
                                            </ItemTemplate>
                                     </asp:Repeater>
                            </div>
                        </div>
                   <%--     <div class="widget widget-memebers">
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
                        </div>--%>
                        <div class="widget widget-groups">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown"> Groups</h3>                            
                            </div>
                            <div class="group-list">
                                <asp:Repeater ID="Repeater3" runat="server">
                                    <ItemTemplate>
                                        <div class="media">
                                            <div class="item-img">
                                                <a href="#">
                                                    <img src="/media/groups/user_group1.jpg" style="height:44px;width:44px" alt="author">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="item-title"><a href="group_details?gid=<%# Eval("GroupId") %>&gnm=<%# Eval("GroupName") %>" style="color:brown"><%# Eval("GroupName") %></a></h4>
                                                <div class="item-member"><%# Eval("NumberofUsers") %> Members</div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                               
                              
                            </div>
                            <div class="see-all-btn">
                                <a href="all_groups" class="item-btn"  style="color:brown;background-color:#f7d35c">See All Groups</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           



        </div>
</asp:Content>
