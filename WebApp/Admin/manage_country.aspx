<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" AutoEventWireup="true" CodeBehind="manage_country.aspx.cs" Inherits="WebApp.Admin.manage_country" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Manage Country</title>
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
                                <h3 class="item-title">Settings - Manage Country</h3>
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
                        <li ><a href="/admin/account/password"> Password</a></li>
                         <li ><a href="/admin/manage_titles">Edit Title</a></li>
                        <li><a href="/admin/manage_role">Edit Role</a></li>
                        <li ><a href="/admin/manage_state">Edit state</a></li>
                        <li class="active"><a href="#">Edit Country</a></li>
                        <li ><a href="/admin/manage_shop_category">Category</a></li>
                        <li ><a href="/admin/profile_visibility"> Visibility</a></li>
                        <li></li>
      
                    </ul>

                </div>

                <div class="block-box product-filter">

                    <div id="contact-form">
                         <div class="filter-btn">
                            <a href="#header-search" style="margin-bottom:10px;color:brown" class="item-btn" >Add Country</a>
                        </div>
                        <div class="row gutters-20">
                            <div class="table-responsive" >
                                <table class="table table-bordered text-nowrap key-buttons">
                                    <thead>
                                        <tr>
                                            <th class="border-bottom-0">SN</th>
                                            <th class="border-bottom-0">Country Name</th>
                                            <th class="border-bottom-0">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Container.ItemIndex+1 %>
                                                        <asp:Label ID="entrytxt" Visible="false" runat="server" Text='<%# Eval("LocationId") %>' />
                                                    </td>
                                                    <td>
                                                         <asp:Label ID="titleidlbl" runat="server" Text='<%# Eval("LocationName") %>'></asp:Label>
                                                        <asp:TextBox ID="TextBox1" class="form-control mb-4" type="text" Text='<%# Eval("LocationName") %>' Visible="false" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td class="align-middle">
                                                        <div class="btn-group align-top">
                                                            <asp:LinkButton ID="updatebtn" Visible="false" class="btn btn-sm btn-success btn-svg" type="button" OnClick="Update" runat="server">Update</asp:LinkButton>
                                                             <asp:LinkButton ID="editbutton" class="btn btn-sm btn-warning btn-svg" type="button" OnClick="Edit" runat="server">Edit</asp:LinkButton>
                                                            <asp:LinkButton ID="deletebtn" ToolTip="Delete Account"  OnClientClick="alert('This Country cannot be deleted because it is already in use?');" runat="server" class="btn btn-sm btn-danger btn-svg" type="button"><svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M8 9h8v10H8z" opacity=".3"/><path d="M15.5 4l-1-1h-5l-1 1H5v2h14V4zM6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM8 9h8v10H8V9z"/></svg></asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="form-response"></div>
                    </div>

                </div>

            </div>


              <div id="header-search" class="header-search">
            <button type="button" class="close">×</button>
            <div class="header-search-form">
                <input type="text" id="ranknametxt" runat="server" name="fname" placeholder="Country Name">
                    <asp:Button ID="Button1" runat="server" type="submit" OnClick="add_member" class="item-btn " style="color:brown;background-color:#f7d35c" Text="Add Country" />
            </div>
        </div>

        </div>
</asp:Content>
