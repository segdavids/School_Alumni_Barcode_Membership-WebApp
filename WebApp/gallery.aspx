<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="WebApp.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 |  Gallery</title>
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
                                   <h3 class="item-title">DOBA2004 Gallery</h3>
                                <div class="item-subtitle">Nigeria Chapter</div>
                                <ul class="item-social">
                                    <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-instagram"><i class="icofont-instagram"></i></a></li>
                                    <li><a href="#" class="bg-success"><i class="icofont-whatsapp"></i></a></li>
                                </ul>
                                <ul class="user-meta">
                                    <li>Images: <span id="imahgescount" runat="server">0</span></li>
                                    <li>Videos: <span id="videocount" runat="server">0</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            
            
                 <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
                <div class="block-box user-top-header">
                    <ul class="menu-list">
                        <li class="active"><a href="#">Images/Videos</a></li>                       
                        <li></li>
                    </ul>
                </div>
                <div class="row gutters-20 zoom-gallery">
                     <asp:Repeater ID="Repeater3" runat="server" >
                            <ItemTemplate>
                    <div class="col-lg-3 col-md-4 col-6">
                        <div class="user-group-photo">
                             <asp:Label ID="entrytxt"  Visible = "false" runat="server" Text='<%# Eval("ItemId") %>' />
                            <a href="/media/gallery/<%# Eval("ItemLocation") %>" class="popup-zoom">

                                <img src="/media/gallery/<%# Eval("ItemLocation") %>" style="height:280px;width:234px" alt="Gallery">
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                         </asp:Repeater>
                    </div>
            
                <div class="load-more-post">
                    <a href="#" class="item-btn"><i class="icofont-refresh"></i>Load More Photos</a>
                </div>
            </div>
           



        </div>
</asp:Content>
