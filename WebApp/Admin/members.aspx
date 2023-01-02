<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="WebApp.Admin.members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 | Admin Members</title>
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
                                <img style="height:115px;width:115px" src="/media/banner/members.jpg" alt="User">
                            </div>
                            <div class="media-body">
                                <h3 class="item-title">DOBA2004 Members</h3>
                                <div class="item-subtitle">Nigeria Chapter</div>
                                <ul class="item-social">
                                    <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-instagram"><i class="icofont-instagram"></i></a></li>
                                    <li><a href="#" class="bg-success"><i class="icofont-whatsapp"></i></a></li>
                                </ul>
                                <ul class="user-meta">
                                    <li>Total Members: <span>30</span></li>
                                   
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block-box user-top-header">
                    <ul class="menu-list">
                        <li><a href="/admin/account/profile">Profile</a></li>
                        <li><a href="edit_profile?aid=">About</a></li>
                         <li class="active"><a href="#">Members</a></li>
                        <li><a href="/admin/all_groups">Groups</a></li>
                        <li><a href="/admin/gallery">Gallery</a></li>
                        <li><a href="/admin/blog">Blogs</a></li>
                        <li><a href="/admin/settings">Settings</a></li>
                        <li></li>
      
                    </ul>
                </div>
                <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
                   <div class="block-box product-filter">                       
                        <div class="filter-btn">
                            <a href="/admin/add_member" class="item-btn" style="color:brown">Add Member</a>
                             <a href="#header-search" class="item-btn" style="color:brown">Upload</a>
                        </div>
                    </div>
                <div class="block-box user-search-bar">

                    <div class="box-item search-box">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search Member">
                            <div class="input-group-append">
                                <button class="search-btn" type="button" style="color:brown; background-color:#f7d35c"><i class="icofont-search"></i></button>
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
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="widget-author">
                                <div class="author-heading">
                                    <div class="cover-img">
                                        <img src="/media/banner/cover1.png" alt="cover">
                                    </div>
                                    <div class="profile-img">
                                        <a href="#">
                                            <img src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("PictureURL") %>" style="height:90px;width:90px" alt="<%# Eval("FirstName") %>  <%# Eval("LastName") %>">
                                        </a>
                                    </div>
                                    <div class="profile-name">
                                            <asp:Label ID="entrytxt"  Visible = "false" runat="server" Text='<%# Eval("MemberId") %>' />
                                        <h4 class="author-name"><a href="/admin/member_profile?mid=<%# Eval("MemberId") %>"><%# Eval("FirstName") %>  <%# Eval("LastName") %> </a></h4>
                                        <div class="author-location"><%# Eval("Email") %></div>
                                    </div>
                                </div>
                                <ul class="author-badge">
                                     <li><a href="<%# Eval("Facebook") %>" style="background-color:#3b5998"><i class="icofont-facebook"></i></a></li>
<%--                                    <li><a href="<%# Eval("Instagram") %>" style="background-color:#DD2A7B  "><i class="icofont-instagram"></i></a></li>--%>
                                    <li><a href="<%# Eval("Twitter") %>" style="background-color:#00acee"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="/admin/edit_member?mid=<%# Eval("MemberId") %>"  style="background-color:brown;color:#f7d35c"><i class="icofont-edit"></i></a></li>
                                    <li><asp:LinkButton ID="deactivtaeuser" ToolTip="Deactivate User"  style="background-color:red" runat="server" OnClick="deactivate_user" Visible="false"><i class="icofont-unlock"></i></asp:LinkButton></li>
                                     <li><asp:LinkButton ID="activateuser" ToolTip="Activate User" runat="server" style="background-color:green" OnClick="activate_user" Visible="false"><i class="icofont-lock"></i></asp:LinkButton></li>         
                                </ul>
                                <ul class="author-statistics">
                                    <li>
                                        <a href="#"><span class="item-number"><%# Eval("Phone") %></span> <span class="item-text">PHONE</span></a>
                                    </li>
                                   
                                    <li>
                                        <a href="#"><span class="item-number"><%# Eval("CountryName") %></span> <span class="item-text">COUNTRY</span></a>
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
                        </ul>
                    </div>
                </div>
            </div>
          

            <div id="header-search" class="header-search">
            <button type="button" class="close">×</button>
            <div class="header-search-form">
                 <asp:FileUpload ID="FileUpload2" runat="server" />
                <asp:Button ID="Button2" runat="server" type="submit" OnClick="download_temp" class="item-btn " style="color:brown;background-color:#f7d35c" Text="Download Template" />
                    <asp:Button ID="Button1" runat="server" type="submit" OnClick="upload_member_clk" class="item-btn " style="color:brown;background-color:#f7d35c" Text="Upload" />
            </div>
        </div>

        </div>
      
</asp:Content>
