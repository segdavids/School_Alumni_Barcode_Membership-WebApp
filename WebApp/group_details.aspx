<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="group_details.aspx.cs" Inherits="WebApp.group_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 |  Group Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container">
                <!-- Banner Area Start -->
                <div class="col-12 form-group">
                    <a href="all_groups" type="submit" class="submit-btn">Back to Groups</a>
                </div>
                 <div class="banner-user">
                    <div class="banner-content">
                        <div class="media">
                            <div class="item-img">
                                <img src="/media/banner/user_1.jpg" alt="User">
                            </div>
                            <div class="media-body">
                                <h3 class="item-title">DOBA2004 - <span id="groupname" runat="server"></span></h3>
                                <div class="item-subtitle">Nigeria Chapter</div>
                                <ul class="item-social">
                                    <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-instagram"><i class="icofont-instagram"></i></a></li>
                                    <li><a href="#" class="bg-success"><i class="icofont-whatsapp"></i></a></li>
                                </ul>
                                <ul class="user-meta">
                                    <li>Group Type: <span>Public</span></li>
                                    <li>Posts: <span id="grouppostnumber" runat="server"></span></li>
                                    <li>Members: <span id="groupmembers" runat="server"></span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                 <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="block-box post-input-tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item" role="presentation" data-toggle="tooltip" data-placement="top" title="STATUS">
                                    <a class="nav-link active" data-toggle="tab" href="#post-status" role="tab" aria-selected="true"><i class="icofont-copy"></i>Status</a>
                                </li>
                                <li class="nav-item" role="presentation" data-toggle="tooltip" data-placement="top" title="MEDIA">
                                    <a class="nav-link" data-toggle="tab" href="#post-media" role="tab" aria-selected="false"><i class="icofont-image"></i>Photo/ Video</a>
                                </li>
                              
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="post-status" role="tabpanel">
                                    <textarea name="status-input" id="status-input1" class="form-control textarea" placeholder="Share what are you thinking . . ." cols="30" rows="6"></textarea>
                                </div>
                                <div class="tab-pane fade" id="post-media" role="tabpanel">
                                    <!-- <label>Media Gallery</label>
        	<a href="#" class="media-insert"><i class="icofont-upload-alt"></i>Upload</a> -->
                                    <textarea name="status-input" id="status-input2" class="form-control textarea" placeholder="Upload Video or Photo to the group . . ." cols="30" rows="6"></textarea>
                                </div>
                           
                            </div>
                            <div class="post-footer">
                                <div class="insert-btn">
                                    <a href="#"></a>
                                    <a href="#"></a>
                                    <a href="#"></a>
                                </div>
                                <div class="submit-btn">
                                    <asp:Button ID="Button1" class="btn btn-submit" runat="server" style="color:#ffd800;background-color:brown" Text="Post in Group" />
                                </div>
                            </div>
                        </div>
                        <div class="block-box user-timeline-header">
                            <ul class="menu-list d-none d-md-block">
                                <li><a href="#" class="active">All Updates</a></li>
 
                            </ul>
                            <div class="header-dropdown d-md-none">
                                <label>Show:</label>
                                <div class="dropdown">
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                        All Updates
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">All Updates</a>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="header-dropdown">
                                <label>Show:</label>
                                <div class="dropdown">
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                        Everything
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Everything</a>
                                        <a class="dropdown-item" href="#">Status</a>
                                        <a class="dropdown-item" href="#">Photo</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                          <asp:Repeater ID="Repeater4" runat="server" >
                            <ItemTemplate>
                        <div class="block-box post-view">
                            <div class="post-header">
                                <div class="media">
                                    <div class="user-img">
                                        <img style="height:44px;width:44px" title="<%# Eval("fullname") %>" src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("PictureURL") %>" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="user-title"><a href="member_profile?mid=<%# Eval("PosterId") %>"><%# Eval("fullname") %> <i class="icofont-check"></i></div>
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
                                
                            </div>
                        </div>
                       </ItemTemplate>
                              </asp:Repeater>
                        <span style="color:brown;font-weight:700" id="errodiv" runat="server"></span>
                        <div class="block-box load-more-btn">
                            <a href="#" class="item-btn"><i class="icofont-refresh"></i>Load More Posts</a>
                        </div>
                    </div>
                    <div class="col-lg-4 widget-block widget-break-lg">
                        <asp:Repeater ID="Repeater1" runat="server" >
                            <ItemTemplate>
                                <div class="widget widget-user-about">
                                    <div class="widget-heading">
                                        <h3 class="widget-title" style="color: brown">Group Info</h3>

                                    </div>
                                    <div class="user-info">
                                        <p><%# Eval("Description") %>.</p>
                                        <ul class="info-list">
                                            <li><span>Created:</span><%# Convert.ToDateTime(Eval("DateCreated")).ToString("dd-MMM-yyyy") %></li>
                                            <li><span>E-mail:</span><%# Eval("GroupEmail") %></li>
                                            <li><span>Phone:</span><%# Eval("GroupPhone") %></li>
                                            <li><span>Country:</span><%# Eval("LocationName") %></li>
                                            <li><span>Web:</span><a href="<%# ConfigurationManager.AppSettings["domainurl"] %>group_details?gid=<%# Eval("GroupId") %>&gnm=<%# Eval("GroupName") %>"><i class="icofont-globe"></i></a></li>
                                          <%--  <li class="social-share"><span>Social:</span>
                                                <div class="social-icon">
                                                    <a href="#"><i class="icofont-facebook"></i></a>
                                                    <a href="#"><i class="icofont-twitter"></i></a>
                                                    <a href="#"><i class="icofont-dribbble"></i></a>
                                                    <a href="#"><i class="icofont-whatsapp"></i></a>
                                                    <a href="#"><i class="icofont-instagram"></i></a>
                                                </div>
                                            </li>--%>
                                        </ul>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                          <asp:Repeater ID="Repeater2" runat="server" >
                            <ItemTemplate>
                        <div class="widget widget-memebers">
                            <div class="widget-heading">
                                <h3 class="widget-title">Group Administrators</h3>
                                <div class="dropdown">
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                        ...
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Edit</a>
                                        <a class="dropdown-item" href="#">Delete</a>
                                    </div>
                                </div>
                            </div>
                            <div class="members-list">
                                <div class="media">
                                    <div class="item-img">
                                        <a href="#">
                                            <img src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("Email") %>"  style="height:44px;width:44px" title="<%# Eval("fullname") %>">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="item-title"><a href="#"><%# Eval("fullname") %></a></h4>
                                        <div class="item-username"><%# Eval("Email") %> </div>
                                        <div class="member-status online"><i class="icofont-check"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                </ItemTemplate>
                              </asp:Repeater>
                        <div class="widget widget-gallery">
                            <div class="widget-heading">
                                <h3 class="widget-title">Photo Gallery</h3>
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
                            <ul class="photo-list">
                                <asp:Repeater ID="Repeater3" runat="server" >
                            <ItemTemplate>
                                <li><img src="/media/gallery/<%# Eval("ImageUrl") == DBNull.Value ?"defaultgallery.png": Eval("ImageUrl") %>" title="<%# Eval("ImageUrl") == DBNull.Value ?"Image cant be Loaded": "" %>"></li>
                                </ItemTemplate>
                                    </asp:Repeater>
          
                            </ul>
                        </div>
                     
                     
                      
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
