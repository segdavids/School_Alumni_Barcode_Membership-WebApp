<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/account/admin.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="profile.aspx.cs" Inherits="WebApp.Admin.account.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DOBA2004 | Admin Profile</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>

     <script>
        $(document).ready(function() {


            var element = $("#frontid"); // global variable
            var getCanvas; // global variable
            var newData;
            var element2 = $("#backid");
            var getCanvas2; // global variable2
            var newdata2;


            $("#btn-Preview-Image").on('click', function() {
                html2canvas(element, {
                    onrendered: function(canvas) {
                        getCanvas = canvas;
                        var imgageData = getCanvas.toDataURL("image/png");
                        var a = document.createElement("a");
                        a.href = imgageData; //Image Base64 Goes here
                        a.download = "Front-ID.png"; //File name Here
                        a.click(); //Downloaded file
                    }
                });
            });

        });
     </script>
     <script>
         $(document).ready(function () {


             var element = $("#backid"); // global variable
             var getCanvas; // global variable
             var newData;
             var element2 = $("#backid");
             var getCanvas2; // global variable2
             var newdata2;


             $("#btn-Preview-Imageback").on('click', function () {
                 html2canvas(element, {
                     onrendered: function (canvas) {
                         getCanvas = canvas;
                         var imgageData = getCanvas.toDataURL("image/png");
                         var a = document.createElement("a");
                         a.href = imgageData; //Image Base64 Goes here
                         a.download = "Back-ID.png"; //File name Here
                         a.click(); //Downloaded file
                     }
                 });

             });
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
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
                                <h3 class="item-title"><%# Eval("FirstName") %> <%# Eval("LastName") %></h3>
                                <div class="item-subtitle">Admin Account</div>
                                <ul class="item-social">
                                     <li><a href="<%# Eval("FirstName") %> " class="bg-fb"><i class="icofont-facebook"></i></a></li>
                                    <li><a href="#" class="bg-twitter"><i class="icofont-twitter"></i></a></li>
                                    <li><a href="#" class="bg-instagram"><i class="icofont-instagram"></i></a></li>
                                    <li><a href="#" class="bg-success"><i class="icofont-whatsapp"></i></a></li>
                                    <li><a href="/admin/settings" title="Edit" class="bg-warning"><i class="icofont-edit"></i></a></li>

                                </ul>
                                 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block-box user-top-header">
                    <ul class="menu-list">
                        <li class="active"><a href="#">Profile</a></li>
                         <li><a href="/admin/members">Members</a></li>
                        <li><a href="/admin/all_groups">Groups</a></li>
                        <li><a href="/admin/gallery">Gallery</a></li>
                        <li><a href="/admin/blog">Blogs</a></li>
                        <li><a href="/admin/settings">Settings</a></li>
                        <li></li>
      
                    </ul>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="block-box user-about">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown">Bio & Personal</h3>
                               
                            </div>
                            <ul class="user-info">
                                <li>
                                    <label>Bio:</label>
                                    <p>N/A</p>
                                </li>
                                <li>
                                    <label>Next of Kin:</label>
                                    <p>N/A</p>
                                </li>
                                <li>
                                    <label>Next of Kin Phone:</label>
                                    <p>N/A</p>
                                </li>
                                 <li>
                                    <label>Member Ranking:</label>
                                    <p>N/A</p>
                                </li>                                                
                                <li>
                                    <label>Favourite Books:</label>
                                    <p>N/A.</p>
                                </li>
                                <li>
                                    <label>Favourite Movies:</label>
                                    <p>N/A.</p>
                                </li>
                                <li>
                                    <label>Leisure Activities/Hobbies:</label>
                                    <p>N/A.</p>
                                </li>
                            </ul>
                        </div>
                        <div class="block-box user-about">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown">Education and Employment</h3>
                               
                            </div>
                            <ul class="user-info">                             
                                <li>
                                    <label>Education:</label>
                                    <p>N/A</p>
                                </li>
                                <li>
                                    <label>Specialization:</label>
                                    <p>N/A</p>
                                </li>                            
                            </ul>
                        </div>
                        <div class="block-box user-about">
                            <div class="widget-heading">
                                <h3 class="widget-title" style="color:brown">Contact Info</h3>
                               
                            </div>
                            <ul class="user-info">
                                <li>
                                    <label>E-mail:</label>
                                    <p>N/A</p>
                                </li>
                                <li>
                                    <label>Phone:</label>
                                    <p><%# Eval("MobileNo") %></p>
                                </li>
                                <li>
                                    <label>Address:</label>
                                    <p>N/A</p>
                                </li>
                                <li>
                                    <label>Website:</label>
                                    <p><a href="#"></a></p>
                                </li>
                                 <li>
                                    <label>Facebook:</label>
                                    <p><a href="https://www.facebook.com/" style="color:dimgray">N/A</a></p>
                                </li>
                                 <li>
                                    <label>Twitter:</label>
                                    <p><a href="https://www.twitter.com/" style="color:dimgray">N/A</a></p>
                                </li>
                                 <li>
                                    <label>Instagram:</label>
                                    <p><a href="https://www.instagram.com/" style="color:dimgray">N/A</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <div class="col-lg-4 widget-block widget-break-lg">
                        <div class="widget widget-user-about">
                            <div class="widget-heading">
                                <h3 class="widget-title">Admin Profile Badge</h3>
                               
                            </div>
                            <div class="user-info">
                                <p>Admin Account.</p>
                                <ul class="info-list">
                                    <li><span>Joined:</span><%# Convert.ToDateTime(Eval("DateCreated")).ToString("dd/MM/yyyy") %></li>
                                    <li><span>E-mail:</span><%# Eval("Email") %></li>
                                    <li><span>Address:</span>-</li>
                                    <li><span>Phone:</span><%# Eval("MobileNo") %></li>
                                    <li><span>Country:</span>NG</li>
                                    <li><span>Web:</span><a href="#">doba.org</a></li>
                                    <li class="social-share"><span>Social:</span>
                                        <div class="social-icon">
                                            <a href="#"><i class="icofont-facebook"></i></a>
                                            <a href="#"><i class="icofont-twitter"></i></a>
                                            <a href="#"><i class="icofont-whatsapp"></i></a>
                                            <a href="#"><i class="icofont-instagram"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                         <div class="widget widget-memebers" style="background-color:brown">
                          
                            <div class="members-list" style="height:120px">
                                <div class="media" style="margin-top:10px">
                                    <div class="item-img">
                                       
                                            <img src="/media/logo_dark.png" alt="Chat">
                                    </div>
                                    <div class="media-body">
                                        <h3 class="item-title"><a href="#" style="color:white;font-size:18px"><%# Eval("FirstName") %> <%# Eval("LastName") %></a></h3>
                                        <h4 class="item-title"><a href="#" style="color:white;font-weight:400">Admin</a></h4>
                                         <a href="#"><i class="icofont-email" style="color:#f7d35c"></i></a>
                                         <a href="#"><i class="icofont-facebook" style="color:#f7d35c"></i></a>
                                         <a href="#"><i class="icofont-twitter" style="color:#f7d35c"></i></a>
                                        
<%--                                        <div class="member-status online"><i class="icofont-check"></i></div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>

                           <div class="widget widget-memebers" style="background-color:brown">
                          
                            <div class="media item-forum" style="height:120px">
                                <div class="media" >
                                    <div class="item-img">
                                        
                                            <img id="image2" runat="server" style="height: 100px; width: 100px" alt="QRCode">
                                    
                                    </div>
                                    <div class="media-body">
                                        <h3 class="item-title"><a href="#" style="color:white;font-size:18px">DOBA2004</a></h3>
                                        <h4 class="item-title"><a href="#" style="color:white;font-weight:400">Scan QR-Code to view <asp:Label ID="profilename" runat="server"></asp:Label>'s detailed Profile</a></h4>
                      <%--                   <a href="#"><i class="icofont-email" style="color:#f7d35c"></i></a>
                                         <a href="#"><i class="icofont-facebook" style="color:#f7d35c"></i></a>
                                         <a href="#"><i class="icofont-twitter" style="color:#f7d35c"></i></a>--%>
                                        
<%--                                        <div class="member-status online"><i class="icofont-check"></i></div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        


        </div>
             </ItemTemplate>
        </asp:Repeater>
        <!-- ALERT -->
                              <div class="alert alert-danger" role="alert" id="exceptiondiv" runat="server" visible="false">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><span id="exceptiontxt" runat="server"></span>
                                </div>
</asp:Content>
