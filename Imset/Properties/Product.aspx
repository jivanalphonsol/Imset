<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Imset.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8">
    <!-- Google Tag Manager -->

    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':

                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],

                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =

                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);

        })(window, document, 'script', 'dataLayer', 'GTM-P6ZSJ6DN');</script>

    <!-- End Google Tag Manager →

    <!--====== Title ======-->
    <title>IMSET - Manufacturer of Biosafety Cabinets </title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">

    <!--====== Animate CSS ======-->
    <link rel="stylesheet" href="assets/css/animate.css">

    <!--====== Magnific Popup CSS ======-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <!--====== Slick CSS ======-->
    <link rel="stylesheet" href="assets/css/slick.css">

    <!--====== Line Icons CSS ======-->
    <link rel="stylesheet" href="assets/css/LineIcons.css">

    <!--====== Font Awesome CSS ======-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!--====== Default CSS ======-->
    <link rel="stylesheet" href="assets/css/default.css">

    <!--====== Style CSS ======-->
    <link rel="stylesheet" href="assets/css/style.css">

    <!--=== Gallery ====-->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.min.css" />

    <style>
        .header-hero-content {
            padding-top: 275px !important;
        }

        .clrd-font {
            background: #FF512F;
            background: -webkit-linear-gradient(to right, #F09819, #FF512F);
            background: linear-gradient(to right, #F09819, #FF512F);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .btn-primary {
            background-color: transparent;
            color: #fff;
            border: 2px solid #fff;
            font-size: 20px;
            text-transform: uppercase;
            border-radius: 0px;
        }

            .btn-primary:hover {
                background-color: transparent;
                border-color: #d6962c;
                color: #d6962c;
                border-radius: 20px;
            }

        .single_portfolio_text {
            display: inline-block;
            padding: 0;
            position: relative;
            overflow: hidden;
            /*padding: 0 7px 14px 7px;*/
            padding: 0 25px 18px 25px;
        }

            .single_portfolio_text img {
                width: 80%;
            }

            .single_portfolio_text:hover .portfolio_images_overlay {
                top: 5%;
                left: 5%;
            }

        .portfolio_images_overlay {
            width: 90%;
            height: 90%;
            background: rgba(0, 0, 0, 0.8);
            padding: 20px;
            margin: 0 auto;
            top: -100%;
            left: 5%;
            position: absolute;
            transition: .6s;
        }

            .portfolio_images_overlay h6 {
                text-transform: uppercase;
                color: #fff;
                font-size: 30px;
                font-weight: 900;
                border: 2px solid #fff;
                padding-top: 10px;
                padding-bottom: 10px;
            }

            .portfolio_images_overlay .product_price {
                font-size: 35px;
                color: #fff;
                font-weight: 800;
                line-height: 30px;
            }

                .portfolio_images_overlay .product_price i {
                    margin-right: -10px;
                }

        .zoom {
            width: 200px;
            height: 200px;
            position: absolute;
            bottom: -100px;
            right: -100px;
            border-radius: 50%;
            background: #FF512F;
            background: -webkit-linear-gradient(to right, #F09819, #FF512F);
            background: linear-gradient(to right, #F09819, #FF512F);
            box-shadow: 0px 0px 0px 10px rgba(0,0,0,0.5);
            opacity: 0.9;
        }

            .zoom:before {
                content: "\f00e";
                font-family: FontAwesome;
                color: rgba(255, 255, 255, 0.5);
                font-size: 70px;
                padding-right: 20px;
                position: absolute;
                top: 10px;
                left: 30px;
            }

        .lb-data .lb-close {
            display: block;
            float: right;
            width: 30px;
            height: 30px;
            background: url(../images/close.png) top right no-repeat;
            text-align: right;
            outline: 0;
            filter: alpha(Opacity=70);
            opacity: .7;
            -webkit-transition: opacity .2s;
            -moz-transition: opacity .2s;
            -o-transition: opacity .2s;
            transition: opacity .2s;
        }



        @media (min-width:769px) and (max-width:991px) {
            .portfolio_images_overlay {
                padding: 0px;
            }
        }

        @media (max-width:768px) {
            .portfolio_images_overlay {
                padding: 170px 20px;
            }
        }

        @media (max-width:580px) {
            .portfolio_images_overlay {
                padding: 100px 20px;
            }
        }

        @media (max-width:480px) {
            .portfolio_images_overlay {
                padding: 40px 20px;
            }
        }

        @media (max-width:320px) {
            .portfolio_images_overlay {
                padding: 20px;
            }
        }
    </style>

    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-YRN0ZYTZN2"></script>
    <script> window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'G-YRN0ZYTZN2'); </script>
</head>
<body>

    <!-- Google Tag Manager (noscript) -->

    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P6ZSJ6DN"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>

    <!-- End Google Tag Manager (noscript) -->

    <form id="form1" runat="server">
        <div>
            <!--====== PRELOADER PART START ======-->

            <div class="preloader">
                <div class="loader">
                    <div class="ytp-spinner">
                        <div class="ytp-spinner-container">
                            <div class="ytp-spinner-rotator">
                                <div class="ytp-spinner-left">
                                    <div class="ytp-spinner-circle"></div>
                                </div>
                                <div class="ytp-spinner-right">
                                    <div class="ytp-spinner-circle"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--====== PRELOADER PART ENDS ======-->
            <!--====== HEADER PART START ======-->

            <header class="header-area">
                <div class="navbar-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <nav class="navbar navbar-expand-lg">
                                    <a class="navbar-brand" href="index.aspx">
                                        <img src="assets/images/IMSETlogo3.png" width="130" height="80" alt="Logo" />
                                    </a>
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                    </button>

                                    <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                        <ul id="nav" class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="page-scroll" href="Index.aspx">Home</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#aboutus">About Us</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#services">Services</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Product.aspx">Our Products</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#productscatlog">Products Catalogue</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="gallery.aspx">Gallery</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="our_clients.aspx">Our Clients</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="contact.aspx">Reach Us</a>
                                            </li>

                                            <!--    <li class="nav-item">
                                          <a class="page-scroll" href="#blog">Blog</a>
                                      </li> -->
                                        </ul>
                                    </div>
                                    <!-- navbar collapse -->

                                    <%--                                    <div class="navbar-btn d-none d-sm-inline-block">
                                        <a class="main-btn" data-scroll-nav="0" href="contact.aspx">Login</a>
                                    </div>--%>
                                </nav>
                                <!-- navbar -->
                            </div>
                        </div>
                        <!-- row -->
                    </div>
                    <!-- container -->
                </div>
                <!-- navbar area -->

                <div id="home" class="header-hero bg_cover" style="background-image: url(assets/images/banner-bg.svg)">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="header-hero-content text-center">
                                    <h3 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">Gallery</h3>

                                </div>
                                <!-- header hero content -->
                            </div>
                        </div>
                        <!-- row -->

                    </div>
                    <!-- container -->

                </div>
                <!-- header hero -->
            </header>

            <!--====== HEADER PART ENDS ======-->
            <!--====== ABOUT PART START ======-->

            <!--====== OUR PRODUTS PART START ======-->

            <section id="products" class="video-counter pt-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="video-content mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                                <img class="dots" src="assets/images/dots.svg" alt="dots">
                                <div class="video-wrapper">
                                    <div class="video-image">
                                        <img src="assets/images/video.png" alt="video">
                                    </div>
                                    <div class="video-icon">
                                        <div class="video-icon">

                                            <button type="button" class="btn  popup_btn" data-toggle="modal" data-target="#exampleModal">
                                                Product Gallary
                                            </button>

                                        </div>
                                        <!-- Button trigger modal -->
                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">

                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="header-hero-image text-center">
                                                                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                                                        <!-- Indicators -->
                                                                        <ol class="carousel-indicators">
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="8" class="active"></li>
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="10"></li>
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="11"></li>
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="12"></li>
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="13"></li>
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="14"></li>
                                                                            <li data-target="#carouselExampleIndicators" data-slide-to="15"></li>
                                                                        </ol>
                                                                        <!-- Wrapper for slides -->
                                                                        <div class="carousel-inner">
                                                                            <div class="carousel-item active">
                                                                                <img src="assets/images/banner_IIA_2.png">
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="assets/images/banner_IIb_1.png" data-color="firebrick" alt="Second Image">
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="assets/images/banner_III.png" data-color="violet" alt="Third Image" />
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="assets/images/Customizedcabinet.png" data-color="firebrick" alt="fourth Image" />
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="assets/images/VerticleLaminarFlow_1.png" data-color="firebrick" alt="Fifth Image" />
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="assets/images/banner_Workstation_1.png" data-color="violet" alt="sixth Image" />
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="assets/images/PolyCabinetAirFlow.png" data-color="firebrick" alt="seventh Image" />
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="assets/images/banner_IIb_8.png" data-color="firebrick" alt="eighth Image" />
                                                                                <div class="carousel-caption d-md-block"></div>
                                                                            </div>
                                                                        </div>
                                                                        <!-- Controls -->

                                                                    </div>

                                                                </div>
                                                                <!-- header hero image -->
                                                            </div>
                                                        </div>
                                                        <!-- row -->
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- video wrapper -->
                            </div>
                            <!-- video content -->
                        </div>
                        <div class="col-lg-6 ">
                            <div class=" mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
                                <div class="counter-content">
                                    <div class="section-title">
                                        <div class="line"></div>
                                        <h3 class="title">Our <span>Products</span></h3>
                                    </div>
                                    <!-- section title -->
                                </div>
                                <div class="row no-gutters col-lg-12">
                                    <div class="col-lg-6 product-content m5">
                                        <a href="biosafety-cabinet-class-II-A2" target="_self" class="main-btn wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.8s">Biosafety Cabinet Class II A2
                                        </a>
                                    </div>
                                    <div class="col-lg-6 m5">
                                        <%-- <a href="BioCabinetB2.aspx" class="main-btn wow fadeInUp" data-wow-duration="1.1s" data-wow-delay="0.8s">Biosafety Cabinet Clss II B2--%>
                                        <a href="biosafety-cabinet-class-II-B2" class="main-btn wow fadeinup" data-wow-duration="1.1s" data-wow-delay="0.8s">biosafety cabinet clss ii b2 
                                        </a>
                                    </div>
                                    <div class="col-lg-6  m5">
                                        <%-- <a href="BioCabinetIII.aspx" class="main-btn wow fadeInLeft" data-wow-duration="1.2s" data-wow-delay="0.8s">Biosafety Cabinet Class III--%>
                                        <a href="biosafety-cabinet-class-III" class="main-btn wow fadeInLeft" data-wow-duration="1.2s" data-wow-delay="0.8s">Biosafety Cabinet Class III
                                        </a>
                                    </div>
                                    <div class="col-lg-6 product-content m5">
                                        <%-- <a href="CustomizedBioCabinet.aspx" class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">Customized Biosafety Cabinet--%>
                                        <a href="Customized-safety-cabinet-series" class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">Customized Biosafety Cabinet
                                        </a>
                                    </div>

                                    <div class="col-lg-6 product-content m5">
                                        <%--<a href="VerLaminarAirFlow.aspx" class="main-btn wow fadeInLeft" data-wow-duration="1.4s" data-wow-delay="0.8s">Vertical Laminar Air Flow</a>--%>
                                        <a href="Vertical-Laminar-Air-Flow-Cabinet" class="main-btn wow fadeInLeft" data-wow-duration="1.4s" data-wow-delay="0.8s">Vertical Laminar Air Flow</a>
                                    </div>
                                    <div class="col-lg-6 m5">
                                        <%--  <a href="PCRWorkstation.aspx" class="main-btn wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.8s">PCR Workstation
                                        --%>
                                        <a href="PCR-Workstation" class="main-btn wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.8s">PCR Workstation
                                        </a>
                                    </div>
                                    <div class="col-lg-6 m5">
                                        <%--<a href="PolyCabinetAirFlow.aspx" class="main-btn wow fadeInUp LH" data-wow-duration="1.6s" data-wow-delay="0.8s">Polypropylene Biosafety Cabinet /--%>
                                        <a href="Polypropylene-Biosafety-Cabinet-Laminar-Air-Flow" class="main-btn wow fadeInUp LH" data-wow-duration="1.6s" data-wow-delay="0.8s">Polypropylene Biosafety Cabinet /
                                            <br>
                                            Polypropylene Laminar Air Flow
                                        </a>
                                    </div>

                                    <!-- row -->
                                </div>
                                <!-- counter wrapper -->
                            </div>
                        </div>

                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </section>

            <!--====== OUR PRODUCTS PART ENDS ======-->


            <!--====== ABOUT PART ENDS ======-->
            <!--====== FOOTER PART START ======-->

            <footer id="footer" class="footer-area pt-160">
                <div class="container pt-195">
                    <div class="footer-widget pb-100">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-8">
                                <div class="footer-about mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                                    <a class="logo" href="#">
                                        <img src="assets/images/IMSETlogo.png" alt="logo">
                                    </a>
                                    <p class="text">We highly appreciate in offering products that provide optimum functionality and are long lasting. Our products are highly appreciated by the Clients as perfect finishing and accessible to use. </p>
                                    <ul class="social">
                                        <li><a href="#"><i class="lni-facebook-filled"></i></a></li>
                                        <li><a href="#"><i class="lni-twitter-filled"></i></a></li>
                                        <li><a href="#"><i class="lni-instagram-filled"></i></a></li>
                                        <li><a href="#"><i class="lni-linkedin-original"></i></a></li>
                                    </ul>
                                </div>
                                <!-- footer about -->
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-8">
                                <div class="footer-link d-flex mt-50 justify-content-md-between">

                                    <div class="link-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                                        <div class="footer-title">
                                            <h4 class="title">Resources</h4>
                                        </div>
                                        <ul class="link">
                                            <li><a href="#">Home</a></li>
                                            <li><a href="index.aspx#aboutus">About Us</a></li>
                                            <li><a href="index.aspx#services">Services</a></li>
                                            <li><a href="Product.aspx">Our Products</a></li>
                                            <li><a href="gallery.aspx">Gallery</a></li>
                                            <li><a href="our_clients.aspx">Our Clients</a></li>
                                            <li><a href="contact.aspx">Contact US</a></li>
                                        </ul>
                                    </div>
                                    <!-- footer wrapper -->
                                </div>
                                <!-- footer link -->
                            </div>
                            <div class="col-lg-5 col-md-6 col-sm-8">
                                <div class="footer-contact mt-100 wow fadeIn contact_block" data-wow-duration="1s" data-wow-delay="0.8s">
                                    <div class="footer-title">
                                        <h4 class="title">Contact Us</h4>
                                    </div>
                                    <ul class="contact">
                                        <li><i class="fa fa-headphones pr-10 fa-halfx"></i>+91 9320059699</li>
                                        <li><i class="fa fa-envelope pr-10 fa-halfx"></i>marketing.imset@gmail.com </li>
                                        <li><i class="fa fa-envelope pr-10 fa-halfx"></i>imset.in@gmail.com</li>
                                        <li><i class="fa fa fa-globe pr-10 fa-halfx"></i>www.imset.co.in</li>
                                        <li>
                                            <i class="fa fa-map-marker pr-10 fa-halfx"></i>IMSET, H-7,
                                            <br>
                                            Rajalaxmi Commercial Complex,
                                    Ground Floor, Kalher, 
                                            <br>
                                            Tal - Bhiwandi,<br>
                                            Dist - Thane 421302,
                                    Maharashtra, India
                                        </li>
                                    </ul>
                                </div>
                                <!-- footer contact -->
                            </div>
                        </div>
                        <!-- row -->
                    </div>
                    <!-- footer widget -->
                    <div class="footer-copyright">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="copyright d-sm-flex justify-content-between">
                                    <div class="copyright-content">
                                        <p class="text">Copyright (c) imset.co.in All rights reserved.</p>
                                    </div>
                                    <!-- copyright content -->
                                </div>
                                <!-- copyright -->
                            </div>
                        </div>
                        <!-- row -->
                    </div>
                    <!-- footer copyright -->
                </div>
                <!-- container -->
                <div id="particles-2"></div>
            </footer>

            <!--====== FOOTER PART ENDS ======-->
            <!--====== BACK TOP TOP PART START ======-->

            <button onclick="topFunction()" class="back-to-top" id="myBtn" title="Go to top"><i class="lni-chevron-up"></i></button>

            <!--====== BACK TOP TOP PART ENDS ======-->

        </div>
    </form>
    <script>
        //Get the button
        var mybutton = document.getElementById("myBtn");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () { scrollFunction() };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>

    <!--====== Jquery js ======-->
    <script>
        $(document).ready(function () {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });
        });
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="assets/js/vendor/jquery.fancybox.min.js"></script>
    <script src="js/script.js"></script>

    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>

    <!--====== Bootstrap js ======-->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--====== Plugins js ======-->
    <script src="assets/js/plugins.js"></script>

    <!--====== Slick js ======-->
    <script src="assets/js/slick.min.js"></script>

    <!--====== Ajax Contact js ======-->
    <script src="assets/js/ajax-contact.js"></script>

    <!--====== Counter Up js ======-->
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>

    <!--====== Magnific Popup js ======-->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>

    <!--====== Scrolling Nav js ======-->
    <script src="assets/js/jquery.easing.min.js"></script>
    <script src="assets/js/scrolling-nav.js"></script>

    <!--====== wow js ======-->
    <script src="assets/js/wow.min.js"></script>

    <!--====== Particles js ======-->
    <script src="assets/js/particles.min.js"></script>

    <!--====== Main js ======-->
    <script src="assets/js/main.js"></script>
</body>
</html>
