<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="edit_group.aspx.cs" Inherits="WebApp.Admin.edit_group" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 | Edit Group</title>
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
                        <a href="all_groups" type="submit" class="submit-btn">Back</a>
                    </div>
                   <div class="banner-user">
                    <div class="banner-content">
                        <div class="media">
                            <img src="/media/logo.png"  alt="User">
                           
                            <div class="media-body">
                                <h3 ><span id="fullnametxt" runat="server" style="color:white;margin-left:5px">DOBA2004</span></h3>  
                                 <h7 ><span id="Span1" runat="server" style="color:white;margin-left:5px;font-weight:300"><span id="emailadd" runat="server">Edit Group</span></span></h7>  
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
                                           
                                            <div class="col-lg-6 form-group">
                                                <label>Group Name:</label>
                                                <input type="text" id="firstnametxt" runat="server" class="form-control" name="fname" placeholder="Name of the Group">
                                            </div>
                                           <div class="col-lg-6 form-group">
                                                <label>Active:</label>
                                                <asp:DropDownList ID="activedll" class="select2" runat="server">
                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Value="0">No</asp:ListItem>
                                            </asp:DropDownList>
                                            </div>
                                           
                                            <div class="col-12 form-group">
                                                <label>Description:</label>
                                                <textarea name="message" cols="30" rows="3" id="abouttxt" runat="server" spellcheck="true" class="textarea form-control" placeholder="A little description about the group"></textarea>
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
