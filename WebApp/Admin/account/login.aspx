<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApp.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Meta Data -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DOBA2004 | Admin Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="media/favicon.png">
    <link rel="stylesheet" href="/dependencies/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/dependencies/icofont/icofont.min.css">
    <link rel="stylesheet" href="/dependencies/slick-carousel/css/slick.css">
    <link rel="stylesheet" href="/dependencies/slick-carousel/css/slick-theme.css">
    <link rel="stylesheet" href="/dependencies/magnific-popup/css/magnific-popup.css">
    <link rel="stylesheet" href="/dependencies/sal.js/sal.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/select2/css/select2.min.css" type="text/css">

    <!-- Site Stylesheet -->
    <link rel="stylesheet" href="/assets/css/app.css">

    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,300;0,400;0,600;0,700;0,800;0,900;1,400&display=swap" rel="stylesheet">
</head>
<body class="sticky-header">
    <form id="form1" runat="server">
        <!--[if lte IE 9]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  	<![endif]-->
    <a href="#wrapper" data-type="section-switch" class="scrollup">
        <i class="icofont-bubble-up"></i>
    </a>
    <!-- Preloader Start Here -->
    <div id="preloader"></div>
    <!-- Preloader End Here -->
    <div id="wrapper" class="wrapper overflow-hidden">

        <!--=====================================-->
        <!--=          Header Menu Start       	=-->
        <!--=====================================-->
        <div class="login-page-wrap">
            <div class="content-wrap">
                <div class="login-content">
                    <div class="item-logo">
                        <a href="#"><img src="/media/logo.png" alt="logo"></a>
                    </div>
                    <div class="login-form-wrap">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item" >
                                <a class="nav-link " style="background-color:#f7d35c;color:brown" data-toggle="tab" href="#login-tab" role="tab" aria-selected="true"><i class="icofont-users-alt-4" style="color:brown"></i> Sign In </a>
                            </li>
                           <%-- <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#registration-tab" role="tab" aria-selected="false"><i class="icofont-download"></i> Registration</a>
                            </li>--%>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane login-tab fade show active" id="login-tab" role="tabpanel"  style="color:brown">
                                <h3 class="item-title" style="color:brown" >DOBA2004 Admin <span>Login</span></h3>
                               
                                <div>
                                    <div class="form-group">
                                        <input type="email" class="form-control"  id="emailtxt" runat="server" name="login-email" placeholder="Admin E-mail"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="passwordtxt" runat="server" name="login-password" placeholder="Password">
                                    </div>
                                    <div class="form-group reset-password">
                                        <a href="forgot_password">* Reset Password</a>
                                    </div>
                                    <div class="form-group mb-4">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="validationFormCheck2">
                                            <label class="form-check-label" for="validationFormCheck2">Keep me as signed in</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="Button1" type="submit" name="login-btn" class="submit-btn" OnClick="Button1_Click" runat="server" style="color:#f7d35c" Text="Login" />
                                    </div>
                                </div>
                                <!-- <div class="account-create">
                    		Don't have an account yet? <a href="#registration-tab">Sign Up Now</a>
                    	</div> -->
                            </div>
                            <div class="tab-pane registration-tab fade" id="registration-tab" role="tabpanel">
                                <h3 class="item-title">Sign Up Your Account</h3>
                                <div>
                                    <div class="form-group">
                                        <input type="text" name="fname" class="form-control" placeholder="First Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="lname" class="form-control" placeholder="Last Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" class="form-control" placeholder="E-mail">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control" placeholder="Type Password">
                                    </div>
                                    <div class="form-group">
                                        <input type="date" name="date" class="form-control" placeholder="Your Birth Day">
                                    </div>
                                    <div class="form-group">
                                        <select class="select2" name="gender" data-placeholder="Select Gender">
                                            <option value=""></option>
                                            <option value="male">Male</option>
                                            <option value="male">Female</option>
                                            <option value="transgender">Transgender</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-check mb-3">
                                            <input type="checkbox" class="form-check-input" id="validationFormCheck1">
                                            <label class="form-check-label" for="validationFormCheck1">I accept the <a href="#">Terms and Conditions</a></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" name="registration" class="submit-btn" value="Complete Registration">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="map-line">
                    <img src="/media/banner/map_line.png" alt="map">
                    <ul class="map-marker">
                        <li><img src="/media/banner/marker_2.png" alt="marker"></li>
                        <li><img src="/media/banner/marker_2.png" alt="marker"></li>
                        <li><img src="/media/banner/marker_2.png" alt="marker"></li>
                        <li><img src="/media/banner/marker_2.png" alt="marker"></li>
                    </ul>
                </div>
            </div>
        </div>

        <!--=====================================-->
        <!--=      Header Search Start          =-->
        <!--=====================================-->
        <div id="header-search" class="header-search">
            <button type="button" class="close">×</button>
            <div class="header-search-form">
                <input type="search" value="" placeholder="Search here..." />
                <button type="submit" class="search-btn">
                    <i class="flaticon-search"></i>
                </button>
            </div>
        </div>
    </div>
    </form>
     <!-- Jquery Js -->
    <script src="/dependencies/jquery/js/jquery.min.js"></script>
    <script src="/dependencies/popper.js/js/popper.min.js"></script>
    <script src="/dependencies/bootstrap/js/bootstrap.min.js"></script>
    <script src="/dependencies/imagesloaded/js/imagesloaded.pkgd.min.js"></script>
    <script src="/dependencies/isotope-layout/js/isotope.pkgd.min.js"></script>
    <script src="/dependencies/slick-carousel/js/slick.min.js"></script>
    <script src="/dependencies/sal.js/sal.js"></script>
    <script src="/dependencies/magnific-popup/js/jquery.magnific-popup.min.js"></script>
    <script src="/dependencies/bootstrap-validator/js/validator.min.js"></script>
    <script src="/dependencies/select2/js/select2.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtmXSwv4YmAKtcZyyad9W7D4AC08z0Rb4"></script>

    <!-- Site Scripts -->
    <script src="/assets/js/app.js"></script>
</body>
</html>
