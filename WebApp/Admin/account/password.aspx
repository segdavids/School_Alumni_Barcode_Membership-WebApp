<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="WebApp.Admin.account.password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Admin Password</title>
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
                                  <% foreach (var profileimage in profileurllist)
                                                {
                                                    string profileurl = "flat-user-icon-11.png";
                                            %>
                            <img src="/media/userimages/<%:  profileurl == ""?"flat-user-icon-11.png":profileurl %>" style="height:115px;width:115px" alt="User">
                                            <% } %>
                            </div>

                            <div class="media-body">
                                <h3 class="item-title">Settings - Change Password</h3>
                                <div class="item-subtitle"><span id="emailadd" runat="server">Admin</span></div>
                                <ul class="item-social">
                                    <li><a href="#" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-instagram"><i class="icofont-instagram"></i></a></li>
                                    <li><a href="#" class="bg-success"><i class="icofont-whatsapp"></i></a></li>

                                </ul>
                                <ul class="user-meta">
                                    <li>Admin: <span id="fullnametxt" runat="server"></span></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block-box user-top-header">
                    <ul class="menu-list">
                        <li><a href="/admin/account/profile">Profile</a></li>
                        <li><a href="/admin/members">Members</a></li>
                        <li><a href="/admin/all_groups">Groups</a></li>
                        <li><a href="/admin/gallery">Gallery</a></li>
                        <li><a href="/admin/settings">Blogs</a></li>
                        <li class="active"><a href="#">Settings</a></li>
                        <li></li>

                    </ul>
                </div>


                <!-- ALERT -->
                <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                    <span id="exceptiontxt" runat="server"></span>
                </div>

                <div class="block-box post-input-tab">
                </div>
                  <div class="block-box user-top-header">
                    <ul class="menu-list">
                        <li ><a href="/admin/settings">Edit Profile</a></li>
                        <li class="active"><a href="#"> Password</a></li>
                         <li><a href="/admin/manage_titles">Edit Title</a></li>
                        <li><a href="/admin/manage_role">Edit Role</a></li>
                        <li><a href="/admin/manage_state">Edit state</a></li>
                        <li ><a href="/admin/manage_country">Edit Country</a></li>
                        <li ><a href="/admin/manage_shop_category">Category</a></li>
                        <li></li>
      
                    </ul>
                </div>

                  <div class="block-box product-filter">
                         <div id="contact-form">
                                        <div class="row gutters-20">
                                            <div class="col-lg-12 form-group">
                                                <label>Current Password:</label>
                                                <input type="password" id="currentpwtxt" runat="server" class="form-control" name="fname" placeholder="Current Password">
                                            </div>
                                            <div class="col-lg-12 form-group">
                                                <label>New Password:</label>
                                                <input type="password" id="newpasswordtxt" runat="server" class="form-control" name="lname" placeholder="New Password">
                                            </div>
                                            <div class="col-lg-12 form-group">
                                                <label>Confirm Password:</label>
                                                <input type="password" id="confirmpasswordtxt" runat="server" class="form-control" placeholder="Confirm Password">
                                            </div>
                                           
                                            <div class="col-12 form-group">
                                                <asp:Button ID="Button1" type="submit" class="submit-btn" OnClick="Reset_Password" runat="server" Text="Save" />
                                            </div>
                                        </div>
                                        <div class="form-response"></div>
                                    </div>
                    </div>   
            </div>




        </div>
</asp:Content>
