<%@ Page Title="" Language="C#" MasterPageFile="~/memba.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApp.member.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA20042004 | Member Profile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Page Content -->
        <div class="page-content">

            <!--=====================================-->
            <!--=        Newsfeed  Area Start       =-->
            <!--=====================================-->
            <div class="container">
                <div class="product-page">
                    
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
                        <li><a href="/member/home"> Profile</a></li>
                        <li class="active"><a href="/member/profile"> Edit Profile</a></li>
                        <li ><a href="/member/password"> Password</a></li>

                        <li></li>
      
                    </ul>
                </div>
                  <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
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
                                                <label>DOB:</label>
                                                <input type="date" id="dobtxt" runat="server" class="form-control" name="phone" placeholder="DOB">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <label>Nickname:</label>
                                                <input type="text" class="form-control" id="nicknametxt" runat="server" name="phone" placeholder="Nickname">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <label>Country:</label>
                                                <asp:DropDownList ID="countrydll" class="select2" data-placeholder="Select a Country" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                              <div class="col-lg-6 form-group">
                                                <label>State:</label>
                                                <asp:DropDownList ID="statedll" class="select2" data-placeholder="Select a State" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-12 form-group">
                                                <label>Profile Image:</label>
                                                <asp:FileUpload ID="FileUpload1" class="form-control"  runat="server" />
                                            </div>
                                            <div class="col-lg-6 form-group">
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
                                           </div>
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
                                           
                                            <div class="col-12 form-group">
                                                <label>About:</label>
                                                <textarea name="message" cols="30" rows="3" id="abouttxt" runat="server" spellcheck="true" class="textarea form-control" placeholder="A little biography about yourself"></textarea>
                                            </div>
                                            <div class="col-12 form-group">
                                                <asp:Button ID="Button1" type="submit" class="submit-btn" OnClick="Update" runat="server" Text="Update" />
                                            </div>
                                        </div>
                                        <div class="form-response"></div>
                                    </div>
                    </div>                 
                </div>
            </div>

          



        </div>
</asp:Content>
