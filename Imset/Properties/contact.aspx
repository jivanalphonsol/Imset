<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="imset.contact" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                                    <a class="navbar-brand" href="Index.aspx">
                                        <img src="assets/images/IMSETlogo.png" alt="Logo" width="100" height="80">
                                    </a>
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                    </button>

                                    <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                        <ul id="nav" class="navbar-nav ml-auto">
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Index.aspx">Home</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Index.aspx#aboutus">About Us</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Index.aspx#services">Services</a>
                                            </li>
                                            <li class="nav-item ">
                                                <%-- <a class="page-scroll" href="Index.aspx#products">Our Products</a>--%>
                                                <a class="page-scroll" href="Product.aspx">Our Products</a>
                                            </li>
                                            <li class="nav-item ">
                                                <a class="page-scroll" href="gallery.aspx">Gallery</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="our_clients.aspx">Our Clients</a>
                                            </li>

                                            <li class="nav-item active">
                                                <a class="page-scroll" href="contact.aspx">Reach Us</a>
                                            </li>

                                            <!--    <li class="nav-item">
                                          <a class="page-scroll" href="#blog">Blog</a>
                                      </li> -->
                                        </ul>
                                    </div>
                                    <!-- navbar collapse -->

                                    <div class="navbar-btn d-none d-sm-inline-block">
                                        <a class="main-btn" data-scroll-nav="0" href="contact.aspx">Login</a>
                                    </div>
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
                                    <h3 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">CONTACT</h3>
                                    <h2 class="header-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.5s">Connect with us! </h2>
                                    <p class="text wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.8s">Call us on +91 9320059699. Find us on Facebook, Twitter, LinkedIn, or just pop us an email enquiry and we will get back to you.</p>
                                    <a href="#enquiryform" class="main-btn wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="1.1s">Get Started</a>
                                </div>
                                <!-- header hero content -->
                            </div>
                        </div>
                        <!-- row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="header-hero-image text-center wow fadeIn" data-wow-duration="1.3s" data-wow-delay="1.4s">
                                    <img src="assets/images/contactUS.png" alt="hero">
                                </div>
                                <!-- header hero image -->
                            </div>
                        </div>
                        <!-- row -->
                    </div>
                    <!-- container -->
                    <div id="particles-1" class="particles"></div>
                </div>
                <!-- header hero -->
            </header>

            <!--====== HEADER PART ENDS ======-->
            <!--====== ABOUT PART START ======-->

            <section id="enquiryform" class="about-area pt-70">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8 col-xs-12 pull-left">
                            <h2 class="subscribe-title">You have any questions or need additional information? </h2>

                            <form action="#" id="contact-form" name="contact-form">

                                <div class="alert hidden" id="contact-form-msg"></div>

                                <div class="form-group">
                                    <%--<input type="text" class="form-control first-name text-field" name="first-name" placeholder="First Name:">--%>
                                    <asp:TextBox runat="server" ID="txtCustName" class="form-control first-name text-field" placeholder="First Name:" />
                                </div>
                                <div class="form-group">
                                    <%--<input type="text" class="form-control last-name text-field" name="last-name" placeholder="Last Name:">--%>
                                    <asp:TextBox runat="server" ID="txtLastname" class="form-control last-name text-field" placeholder="Last Name:" />
                                    <div class="clearfix"></div>
                                </div>

                                <div class="form-group">
                                    <%--<input type="tel" class="form-control telephone text-field" name="telephone" placeholder="Telephone:">--%>
                                    <asp:TextBox runat="server" ID="txtCustMobileNo" MaxLength="10" class="form-control telephone text-field" onkeypress="return isNumber(event)" placeholder="Telephone:" />
                                </div>

                                <div class="form-group">
                                    <%--<input type="email" class="form-control email text-field" name="email" placeholder="Email:">--%>
                                    <asp:TextBox runat="server" ID="txtCustEmail" class="form-control email text-field" placeholder="Email:" />
                                </div>

                                <div class="form-group">
                                    <%-- <textarea class="form-control message" name="message" placeholder="Message:"></textarea>--%>
                                    <asp:TextBox runat="server" class="form-control message" TextMode="MultiLine" ID="txtCustMesssage" placeholder="Message:" />
                                </div>

                                <div class="col-lg-6 product-content row">
                                    <%--<input type="submit" class="main-btn wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.8s" name="submit-message" value="Submit Message">--%>
                                    <asp:Button Text="Submit Message" class="main-btn wow fadeInDown" runat="server" data-wow-duration="1s" data-wow-delay="0.8s" ID="btnSubmit" OnClick="btnSubmit_Click" />
                                </div>
                            </form>
                        </div>

                    </div>

                    <!-- row -->
                </div>
                <!-- container -->
                <div class="about-shape-1">
                    <img src="assets/images/about-shape-1.svg" alt="shape">
                </div>
            </section>

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
                                            <li><a href="Index.aspx#aboutus">About Us</a></li>
                                            <li><a href="Index.aspx#services">Services</a></li>
                                            <%--  <li><a href="index.aspx#products">our products</a></li>--%>
                                            <li><a href="Product.aspx">our products</a></li>
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

    <script type="text/javascript">
        function isNumber(evt) {

            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
