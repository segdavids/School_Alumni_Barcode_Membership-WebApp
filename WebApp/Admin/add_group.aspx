<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" AutoEventWireup="true" CodeBehind="add_group.aspx.cs" Inherits="WebApp.Admin.add_group" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Add Group</title>
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
                                             <a href="all_groups.aspx" type="submit" class="submit-btn">Back</a> 
                                            </div>
                   <div class="banner-user">
                    <div class="banner-content">
                        <div class="media">
                            <img src="/media/logo.png"  alt="User">
                           
                            <div class="media-body">
                                <h3 ><span id="fullnametxt" runat="server" style="color:white;margin-left:5px">DOBA2004</span></h3>  
                                 <h7 ><span id="Span1" runat="server" style="color:white;margin-left:5px;font-weight:300"><span id="emailadd" runat="server">Create Group</span></span></h7>  
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
                                                <label>Group Name:</label>
                                                <input type="text" id="firstnametxt" runat="server" class="form-control" name="fname" placeholder="Name of the Group">
                                            </div>
                                          
                                           
                                            <div class="col-12 form-group">
                                                <label>Description:</label>
                                                <textarea name="message" cols="30" rows="3" id="abouttxt" runat="server" spellcheck="true" class="textarea form-control" placeholder="A little description about the group"></textarea>
                                            </div>
                                            <div class="col-12 form-group">
                                                <asp:Button ID="Button1" type="submit" class="submit-btn" OnClick="Button1_Click" runat="server" Text="Add Group" />
                                            </div>
                                        </div>
                                        <div class="form-response"></div>
                                    </div>
                    </div>                 
                </div>
            </div>
        </div>
</asp:Content>
