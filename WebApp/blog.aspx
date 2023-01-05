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
                                <img src="/media/banner/user_1.jpg" alt="User">
                            </div>
                            <div class="media-body">
                                <h3 class="item-title">DOBA2004 Blogs</h3>
                                <div class="item-subtitle">Nigeria Chapter</div>
                                <ul class="item-social">
                                     <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-instagram"><i class="icofont-instagram"></i></a></li>
                                    <li><a href="#" class="bg-success"><i class="icofont-whatsapp"></i></a></li>

                                </ul>
                                <ul class="user-meta">
                                    <li>Posts: <span id="noofpost" runat="server"></span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
          
                 <div class="block-box product-filter">
                        <label>Order By:</label>
                        <div class="select-box col-3" >
                            <select class="select2" data-placeholder="Select a Category">
                                <option value="1">All Post</option>
                                <option value="2">Newest Post</option>
                                <option value="2">Oldest Post</option>
                               
                            </select>
                            
                        </div>
                
                    </div>
                  
                 <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
               
                   <div class="block-box post-input-tab">
                           
                         
                           
                        </div>
                <div class="row gutters-20">
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCreated="Repeater1_ItemCreated">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6">
                                <asp:Label ID="entrytxt" Visible="false" runat="server" Text='<%# Eval("BlogId") %>' />
                                <div class="block-box user-blog">
                                    <div class="blog-img">
                                        <a href="#">
                                            <img src="/media/blog/<%# Eval("ThumbnailURL") ==DBNull.Value?"blog_2.jpg":Eval("ThumbnailURL") %>" style="height: 200px; width: 376px" alt="Blog"></a>
                                    </div>
                                    <div class="blog-content">
                                        <div class="blog-category">
                                            <% foreach (var tagitem in tags)
                                                {
                                                    string tagname = tagitem.ToLower().ToString();
                                            %>
                                            <a href="#" style="color: brown; background-color: #f7d35c"><%:  tagname %></a>
                                            <% } %>
                                        </div>
                                        <h3 class="blog-title"><a href="blog_details?bid=<%# Eval("BlogId") %>" style="color: brown"><%# Eval("PostTitle") %></a></h3>
                                        <div class="blog-date"><i class="icofont-calendar" style="color: brown"></i><%# Convert.ToDateTime(Eval("PostDate")).ToString("dd MMMM, yyyy") %>  </div>

                                        <p><%# Eval("PostContent") %></p>
                                    </div>
                                    <div class="blog-meta">
                                        <ul>
                                            <%-- <li class="blog-reaction">
                                        <div class="reaction-icon">
                                            <img src="/media/figure/reaction_1.png" alt="icon">
                                            <img src="/media/figure/reaction_2.png" alt="icon">
                                            <img src="/media/figure/reaction_3.png" alt="icon">
                                        </div>
                                        <div class="meta-text">+ 15 others</div>
                                    </li>--%>
                                            <li><i class="icofont-comment"></i><%# Eval("NoOfComment") %></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
              
                
                  
               
                </div>
                <div class="load-more-post">
                    <a href="#" class="item-btn"><i class="icofont-refresh"></i>Load More Posts</a>
                </div>
            </div>
          



        </div>
</asp:Content>
