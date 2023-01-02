<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="WebApp.Admin.settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 | Admin Settings</title>
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
                                                    string profileurl = profileimage.ToString();
                                            %>
                            <img src="/media/userimages/<%:  profileurl == ""?"flat-user-icon-11.png":profileurl %>" style="height:100px;width:100px" alt="User">
                                            <% } %>
                            </div>

                            <div class="media-body">
                                <h3 class="item-title">DOBA2004 Settings</h3>
                                <div class="item-subtitle"><span id="emailadd" runat="server"></span></div>
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
                        <li class="active"><a href="#">Edit Profile</a></li>
                        <li><a href="/admin/account/password"> Password</a></li>
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
                                            <div class="col-lg-6 form-group">
                                                <label>First Name:</label>
                                                <input type="text" id="firstnametxt" runat="server" class="form-control" name="fname" placeholder="First Name">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <label>Last Name:</label>
                                                <input type="text" id="lastnametxt" runat="server" class="form-control" name="lname" placeholder="Last Name">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <label>Email:</label>
                                                <input type="email" id="emailtxt" style="background-color:lightgray" runat="server" disabled="disabled" class="form-control" name="email" placeholder="E-mail">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <label>Phone:</label>
                                                <input type="text" id="phonetxt" runat="server" class="form-control" name="phone" placeholder="Phone">
                                            </div>
                                          <div class="col-lg-6 form-group">
                                                <label>Last login:</label>
                                                <input type="text" id="Date1" runat="server" disabled="disabled" style="background-color:lightgray" class="form-control">
                                            </div>
                                               <div class="col-lg-6 form-group">
                                                <label>Date Created:</label>
                                                <input type="text" id="creatextxt" runat="server" disabled="disabled" style="background-color:lightgray" class="form-control">
                                            </div>
                                 
                                           <%--   <div class="col-lg-6 form-group">
                                                <label>Country:</label>
                                                <asp:DropDownList ID="countrydll" class="select2" data-placeholder="Select a Country" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                              <div class="col-lg-6 form-group">
                                                <label>State:</label>
                                                <asp:DropDownList ID="statedll" class="select2" data-placeholder="Select a State" runat="server">
                                                </asp:DropDownList>
                                            </div>--%>
                                            <div class="col-lg-12 form-group">
                                                <label>Profile Image:</label>
                                                <asp:FileUpload ID="FileUpload1" class="form-control"  runat="server" />
                                            </div>
                                          <%--  <div class="col-lg-6 form-group">
                                                <label>Next of Kin:</label>
                                                <input type="text" class="form-control" id="noktxt" runat="server" name="phone" placeholder="Next of Kin Name">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <label>NOK Phone:</label>
                                                <input type="text" class="form-control" id="nokphonetxt" runat="server" name="phone" placeholder="Next of Kin Phone">
                                            </div>
                                              <div class="col-lg-6 form-group">
                                                <label>Ranking:</label>
                                                <asp:DropDownList ID="rankdll" class="select2" data-placeholder="Select a Category" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                              <div class="col-lg-6 form-group">
                                                <label>Specialization:</label>
                                                <asp:DropDownList ID="specializationdll" class="select2" data-placeholder="Select a Category" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                             <div class="col-lg-6 form-group">
                                                <label>Favorite Movies:</label>
                                                <input type="text" class="form-control" name="phone" id="moviestxt" runat="server" placeholder="List your favorite movies, separated by a comma">
                                            </div>
                                               <div class="col-lg-6 form-group">
                                                <label>Favorite Books:</label>
                                                <input type="text" class="form-control" name="phone" id="bookstxt" runat="server" placeholder="List your favorite books, separated by a comma">
                                            </div>                                           
                                              <div class="col-lg-12 form-group">
                                                <label>Hobbies:</label>
                                                <input type="text" class="form-control" name="phone" id="hobbytxt" runat="server" placeholder="List your hobbies, separated by a comma">
                                           </div>--%>
                                             <div class="col-lg-6 form-group">
                                                <label>Facebook:</label>
                                                <input type="text" class="form-control" id="facebooktxt" runat="server" name="phone" placeholder="facebook usename">
                                            </div>
                                             <div class="col-lg-6 form-group">
                                                <label>Twitter:</label>
                                                <input type="text" class="form-control" id="twittertxt" runat="server" name="phone" placeholder="Twitter handle">
                                            </div>
                                             <div class="col-lg-6 form-group">
                                                <label>Instagram:</label>
                                                <input type="text" class="form-control" id="igtxt" runat="server" name="phone" placeholder="Ig Handle">
                                            </div>
                                              <div class="col-lg-6 form-group">
                                                <label>Active:</label>
                                                <asp:DropDownList ID="activedll" class="select2" runat="server">
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:DropDownList>
                                            </div>
                                           
                                            <%--<div class="col-12 form-group">
                                                <label>About:</label>
                                                <textarea name="message" cols="30" rows="3" id="abouttxt" runat="server" spellcheck="true" class="textarea form-control" placeholder="A little biography about yourself"></textarea>
                                            </div>--%>
                                            <div class="col-12 form-group">
                                                <asp:Button ID="Button1" type="submit" class="submit-btn" OnClick="Update" runat="server" Text="Update" />
                                            </div>
                                        </div>
                                        <div class="form-response"></div>
                                    </div>
                    </div>   
            </div>




        </div>
</asp:Content>
