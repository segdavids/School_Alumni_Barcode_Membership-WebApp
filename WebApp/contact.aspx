<%@ Page Title="" Language="C#" MasterPageFile="~/dmgs.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApp.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>DOBA2004 | Contact</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!--=====================================-->
        <!--=          Banner Start       		=-->
        <!--=====================================-->
        <section class="breadcrumbs-banner">
            <div class="container">
                <div class="breadcrumbs-area">
                    <h1>Contact Us</h1>
                    <ul>
                        <li>
                            <a href="/">Home</a>
                        </li>
                        <li>Contact Us</li>
                    </ul>
                </div>
            </div>
            <div class="breadcrumb-animate-img" data-sal="slide-up" data-sal-duration="1000">
                <img src="media/figure/breadcrumb_img.png" alt="img">
            </div>
        </section>

        <!--=====================================-->
        <!--=          Contact Page Start       =-->
        <!--=====================================-->
        <section class="contact-page">
            <div class="map-area">
                <div id="googleMap" class="google-map"></div>
            </div>
            <div class="contact-box-wrap">
                <div class="container">
                    <div class="contact-form">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="contact-box">
                                    <h3 class="item-title" style="color:brown">Get In Touch</h3>
                                    <div id="contact-form">
                                        <div class="row gutters-20">
                                            <div class="col-lg-6 form-group">
                                                <input type="text" class="form-control" name="fname" placeholder="First Name">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <input type="text" class="form-control" name="lname" placeholder="Last Name">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <input type="email" class="form-control" name="email" placeholder="E-mail">
                                            </div>
                                            <div class="col-lg-6 form-group">
                                                <input type="text" class="form-control" name="phone" placeholder="Phone">
                                            </div>
                                            <div class="col-12 form-group">
                                                <textarea name="message" id="message" cols="30" rows="3" class="textarea form-control" placeholder="Message"></textarea>
                                            </div>
                                            <div class="col-12 form-group">
                                                <input type="submit" class="submit-btn" value="Send Us Message">
                                            </div>
                                        </div>
                                        <div class="form-response"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="contact-box contact-method">
                                    <h3 class="item-title" style="color:brown">Contact Info.</h3>
                                    <ul>
                                        <li><i class="icofont-location-pin"></i>598 Kazi Avenue, New York, NY23598</li>
                                        <li><i class="icofont-ui-message"></i>info@radiustheme.net</li>
                                        <li><i class="icofont-phone"></i>(+123) 456 789 101</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
     
</asp:Content>
