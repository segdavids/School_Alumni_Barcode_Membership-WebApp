<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" AutoEventWireup="true" CodeBehind="blog_details.aspx.cs" Inherits="WebApp.Admin.blog_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 |  Blog Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container">
                  <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
                <asp:Repeater ID="Repeater1" runat="server" OnItemCreated="Repeater1_ItemCreated">
         <ItemTemplate>
                <div class="block-box user-single-blog">
                    <asp:Label ID="entrytxt"  Visible = "false" runat="server" Text='<%# Eval("BlogId") %>' />
                    <div class="blog-thumbnail">
                        <img src="/media/blog/<%# Eval("ThumbnailURL") ==DBNull.Value?"blog_2.jpg":Eval("ThumbnailURL") %>" style="height:300px;width:1170px" alt="Blog">
                    </div>
                    <div class="blog-content-wrap">
                        <div class="blog-entry-header">
                             <div class="entry-category">
                                    <% foreach (var tagitem in tags)  {
                                            string tagname =  tagitem.ToString();                                           
                                            %>
                                    <a href="#" style="color:brown;background-color:#f7d35c"><%:  tagname %></a>
                                    <% } %>                                   
                                </div>
                          
                            <h2 class="entry-title"><%# Eval("PostTitle") %></h2>
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <ul class="entry-meta">
                                        <li>
                                            <img src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value?"flat-user-icon-11.png":Eval("PictureURL") %>" style="height:44px;width:44px" alt="Chat">

                                            By <a href="#"><%# Eval("authorname") %></a>
                                        </li>
                                        <li><i class="icofont-calendar" style="color:brown"></i><%# Convert.ToDateTime(Eval("PostDate")).ToString("dd MMMM, yyyy")%> </li>
                                        <li><i class="icofont-comment" style="color:brown"></i> Comments: <%# Eval("NoOfComment") %></li>
                                        <li><a href="edit_blog?bid=<%# Eval("BlogId") %>">Edit BlogPost<i class="icofont-edit" style="color:brown"></i></a></li>
                                    </ul>
                                </div>
                                <div class="col-lg-4">
                                    <ul class="blog-share">
                                        <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                        <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                        <li><a href="#" class="bg-dribble"><i class="icofont-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="blog-content">
                            <p><%# Eval("PostContent") %></p>
                        </div>
                        <div class="blog-footer">
                            <div class="item-label">Choose your <span>Reaction</span></div>
                            <div class="reaction-icon">
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="like"><img src="/media/figure/reaction_1.png" alt="Like"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="cry"><img src="/media/figure/reaction_6.png" alt="Like"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="laugh"><img src="/media/figure/reaction_2.png" alt="Like"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="surprise"><img src="/media/figure/reaction_7.png" alt="Like"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="love"><img src="/media/figure/reaction_3.png" alt="Like"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="angry"><img src="/media/figure/reaction_5.png" alt="Like"></asp:LinkButton>
                            </div>
                        </div>
                        <div class="blog-comment-form">
                            <h3 class="item-title">Leave a Comment</h3>
                            <div>
                                <div class="row gutters-20">
                                    <div class="col-lg-4 form-group">
                                        <asp:TextBox ID="nametxt" type="nametxt" class="form-control" placeholder="Fulla Name" runat="server"></asp:TextBox>
                                    </div>                                                                     
                                    <div class="col-lg-12 form-group">
                                         <asp:TextBox id="messagetxt" runat="server" class="form-control textarea" placeholder="Comment" cols="30" rows="7" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-12 form-group">
                                        <asp:LinkButton ID="LinkButton1" runat="server"  type="submit" class="submit-btn" OnClick="PostComment">Post Comment</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             </ItemTemplate>
                    </asp:Repeater>
                <div class="realated-blog">
                    <div class="block-box blog-heading">
                        <h3 class="heading-title">Other Blog Posts</h3>
                    </div>
                    <div class="row">
                    
                          <asp:Repeater ID="Repeater2" runat="server" OnItemCreated="Repeater2_ItemCreated">
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
                                        <div class="blog-date"><i class="icofont-calendar" style="color: brown"></i><%# Convert.ToDateTime(Eval("PostDate")).ToString("dd MMMM, yyyy") %></div>
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
                </div>
            </div>
       



        </div>
</asp:Content>
