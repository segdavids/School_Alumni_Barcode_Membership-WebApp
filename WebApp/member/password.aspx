<%@ Page Title="" Language="C#" MasterPageFile="~/memba.Master" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="WebApp.member.password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 | Member Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container">
                <!-- Banner Area Start -->
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                    
                 <div class="banner-user">
                    <div class="banner-content">
                        <div class="media">
                            <div class="item-img">
                                <img src="/media/userimages/<%# Eval("PictureURL") == DBNull.Value ?"flat-user-icon-11.png": Eval("PictureURL") %>" style="height:115px;width:115px" alt="<%# Eval("FirstName") %>  <%# Eval("LastName") %>">

                            </div>
                            <div class="media-body">
                                <h3 class="item-title"><%# Eval("FirstName") %> <%# Eval("LastName") %></h3>
                                <div class="item-subtitle"><%# Eval("Email") %>t</div>
                                <ul class="item-social">
                                     <li><a href="https://facebook.com/<%# Eval("Facebook") %>" class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="https://twitter.com/<%# Eval("Twitter") %>" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="https://instagram.com/<%# Eval("Instagram") %>" class="bg-instagram"><i class="icofont-instagram"></i></a></li>
                                    <li><a href="https://whatsapp.com/<%# Eval("Phone") %>" class="bg-success"><i class="icofont-whatsapp"></i></a></li>

                                </ul>
                                 
                            </div>
                        </div>
                    </div>
                </div>
                        </ItemTemplate>
                </asp:Repeater>
                <div class="block-box user-top-header">
                    <ul class="menu-list">
                        <li class="/member/home"><a href="#"> Profile</a></li>
                        <li ><a href="/member/profile"> Edit Profile</a></li>
                        <li class="active"><a href="#"> Password</a></li>

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
                

                  <div class="block-box product-filter">
                         <div id="contact-form">
                                        <div class="row gutters-20">
                                            <div class="col-lg-12 form-group">
                                                <label>Current Password:</label>
                                                <input type="password" id="currentpwtxt" required="required" runat="server" class="form-control" name="fname" placeholder="Current Password">
                                            </div>
                                            <div class="col-lg-12 form-group">
                                                <label>New Password:</label>
                                                <input type="password" id="newpasswordtxt" required="required" runat="server" class="form-control" name="lname" placeholder="New Password">
                                            </div>
                                            <div class="col-lg-12 form-group">
                                                <label>Confirm Password:</label>
                                                <input type="password" id="confirmpasswordtxt" required="required" runat="server" class="form-control" placeholder="Confirm Password">
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
