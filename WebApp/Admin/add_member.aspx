<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" AutoEventWireup="true" CodeBehind="add_member.aspx.cs" Inherits="WebApp.Admin.add_member" %>
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
                <div class="product-page">
                       <div class="col-12 form-group">
                                             <a href="members.aspx" type="submit" class="submit-btn">Back to Members</a> 
                                            </div>
                   <div class="banner-user">
                    <div class="banner-content">
                        <div class="media">
                            <img src="/media/flat-user-icon-11.png" style="height:100px;width:100px" alt="User">
                           
                            <div class="media-body">
                                <h3 ><span id="fullnametxt" runat="server" style="color:white;margin-left:5px"></span></h3>  
                                 <h7 ><span id="Span1" runat="server" style="color:white;margin-left:5px;font-weight:300"><span id="emailadd" runat="server"></span></span></h7>  
                            </div>
                        </div>
                    </div>
                </div>
                  <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
                    <div class="block-box product-filter">
                         <div id="contact-form">
                                        <div class="row gutters-20">
                                            <div class="col-lg-12 form-group">
                                                <label>Title:</label>
                                                 <asp:DropDownList ID="titltedll" class="select2" data-placeholder="Select a suitable Title" runat="server">
                                                </asp:DropDownList>
                                            </div>
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
                                                <input type="email" id="emailtxt" runat="server" class="form-control" name="email" placeholder="E-mail">
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
                                                <asp:Button ID="Button1" type="submit" class="submit-btn" OnClick="AddMemmber" runat="server" Text="Add Member" />
                                            </div>
                                        </div>
                                        <div class="form-response"></div>
                                    </div>
                    </div>                 
                </div>
            </div>

          



        </div>
</asp:Content>
