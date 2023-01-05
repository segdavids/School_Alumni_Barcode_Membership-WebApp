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
                       <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
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
                         <asp:Repeater ID="Repeater1" runat="server" OnItemCreated="Repeater1_ItemCreated">
         <ItemTemplate>
              <asp:Label ID="entrytxt"  Visible = "false" runat="server" Text='<%# Eval("GroupId") %>' />
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="widget-author user-group">
                                <div class="author-heading">
                                    <div class="cover-img">
                                        <img src="/media/figure/cover_1.jpg" alt="cover">
                                    </div>
                                    <div class="profile-img">
                                        <a href="group_details?gid=<%# Eval("GroupId") %>&gnm=<%# Eval("GroupName") %>">
                                            <img src="/media/groups/user_group1.jpg" alt="author">
                                        </a>
                                    </div>
                                    <div class="profile-name">
                                        <h4 class="author-name"><a href="group_details?gid=<%# Eval("GroupId") %>&gnm=<%# Eval("GroupName") %>" style="color:brown"><%# Eval("GroupName") %></a></h4>
                                        <div class="author-location"><%# Eval("Description") %></div>
                                    </div>
                                </div>
                                <ul class="member-thumb">
                                    <% foreach (var user in studentList)  {
                                            string fullname =  user.Fullname;
                                            int userid =  user.UserId;
                                            string picurl =  user.PictureURL;

                                            %>
                                    <li><a href="member_profile?mid=<%: userid %>"> <img src="/media/userimages/<%:  picurl == ""?"flat-user-icon-11.png": picurl %>" style="height:44px;width:44px" title="<%: fullname %>" ></a></li>
                                    <% } %>

                                   <li style="background-color:brown;"><a href="add_membertogrpup" title="ADD MEMBER TO GROUP"><i class="icofont-plus" style="color:#f7d35c" ></i></a></li>
                                </ul>
                                <ul class="author-statistics">
                                    <li >
                                        <a href="#"><span class="item-number"><%# Eval("NumberofUsers") %></span> <span class="item-text"> MEMBERS</span></a>
                                    </li>
                                    <li>
<%--                                        <a href="/admin/edit_group?gid=<%#Eval("GroupId") %>"<span class="item-number"><i class="icofont-edit"></i></span> <span class="item-text">EDIT GROUP</span></a>--%>
                                    </li>
                                </ul>
                            </div>
                        </div>
                       
             </ItemTemplate>
                             </asp:Repeater>
                       

                        
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
