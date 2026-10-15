<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="imset.Index" EnableEventValidation="false" %>

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
    <title>Discover Biosafety Cabinet Services Now! | Imset</title>

    <meta name="description" content="Discover top-notch services for biosafety cabinets. Our experts ensure optimal performance, maintenance, and safety for your lab equipment.">
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
    <link href="assets/css/SliderImages.css" rel="stylesheet" />
    <style>
        body p {
            color: black;
            font-size: 17px;
        }

        #side-suggestion-button {
            display: none;
            position: fixed;
            Right: 2%;
            bottom: 0;
            width: 10%;
            z-index: 1000;
            display: block;
            top: 400px;
        }

            #side-suggestion-button .btnmessage {
                font-size: 20px;
                position: absolute;
                border: none;
                background-color: #f95621;
                color: white;
                text-align: center;
                border-bottom-right-radius: 7px;
                border-top-right-radius: 7px;
                padding-right: 10px;
                padding-left: 5px;
            }

        /*  #sidesuggestion {
            display: none;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 400px;
            z-index: 1000;
        }

        @media (max-width: 700px) {
            #sidesuggestion {
                width: 70% !important;
                z-index: 1000;
                display: none;
                position: fixed;
                left: 0;
            }
        }
*/
        #sidesuggestion {
            display: none;
            position: fixed;
            right: 0; /* Position on the right side */
            bottom: 0;
            width: 600px;
            z-index: 1000;
        }

        @media (max-width: 700px) {
            #sidesuggestion {
                width: 70% !important;
                z-index: 1000;
                display: none;
                position: fixed;
                right: 0; /* Position on the right side */
                
                overflow-y: auto;
                max-height: 80vh;
            }
             #side-suggestion-button {
            display: none;
            position: fixed;
            Right: 8%;
            bottom: 0;
            width: 15%;
            z-index: 1000;
            display: block;
            top: 400px;
        }
        }

        #sidesuggestion .dismiss {
            display: inline-block !important;
        }

        .main-btn {
            text-align: start;
        }

        .navbar-brand {
            padding: 0;
            margin-left: 50px;
        }

        .wrap-txt {
            text-align: justify;
        }

        /* .navbar-nav .nav-item a {
            padding: 4px 10px;
        }*/
        .dropdown-menu {
            padding: 4px 10px;
        }

        .navbar-brand p {
            padding: 0;
            margin-left: 0px;
        }

        .demopara {
            line-height: 10pt; /* try also a bit smaller line-height */
        }



        .search-bar-container {
            text-align: center;
            margin-top: 20px;
            background-color: red;
        }

        .search-input {
            border: 1px solid #ccc;
            padding: 5px 10px;
            border-radius: 5px 0 0 5px;
            width: 300px;
            max-width: 100%;
            box-sizing: border-box;
        }

        .search-button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 0 5px 5px 0;
            padding: 5px 15px;
            cursor: pointer;
        }

            .search-button:hover {
                background-color: #0056b3;
            }

        .logoalign {
            padding-left: 30px;
            color: #448EE4;
            font-size: 14px;
            font-weight: 600;
        }

        .imgc {
            height: 200px;
            width: 200px
        }

        .footer-about .text {
            line-height: 25px;
            margin-top: 30px;
        }

        p {
            line-height: 22px;
        }

        .link-wrapper .link li {
            margin-top: 17px;
        }



        .inline-list {
            list-style: none; /* Remove default list bullets */
            margin-top: 15px;
        }

            /* Style for list items in the inline list */
            .inline-list li {
                display: inline; /* Display list items inline */
                margin-right: 10px; /* Add some spacing between items (adjust as needed) */
            }

                .inline-list li a {
                    color: #ffffff;
                }
    </style>
     <style>
     
        .dropdown-menu {
            display: none;  
        }

        /* Media query for mobile devices (up to 768px) */
        @media (max-width: 768px) {
            /*  Show the dropdown menu when the screen width is less than or equal to 768px */
            .dropdown-menu {
                display: block;
                overflow-y: auto;
                max-height: 200px;
            }
             .navbar-nav  {
              display: block;
                max-height: 300px;
            overflow-y: auto;
        }
        }

       
    </style>
    <script>
        var loc = window.location.href + '';
        if (loc.indexOf('http://') == 0) {
            window.location.href = loc.replace('http://', 'https://');
        }

        function Chkblank() {
            if (document.getElementById("txtcustName").value == "") {
                alert("Name cannot be blank, Please enter name");
            }
            if (document.getElementById("txttelephone").value == "") {
                alert("Mobile no cannot be blank, Please enter mobile no");
            }
            if (document.getElementById("txtemail").value == "") {
                alert("Email cannot be blank, Please enter email");
            }
        }

    </script>
     <script async src="https://cse.google.com/cse.js?cx=27d72b030aad94aac"></script>
    <!-- Google tag (gtag.js) -->
 <%--   <script async src="https://www.googletagmanager.com/gtag/js?id=G-YRN0ZYTZN2"></script>
    <script> window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'G-YRN0ZYTZN2'); </script>
  
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-186965253-1">
</script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-186965253-1');
</script>--%>
  <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-186965253-1">
</script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-186965253-1');
</script>
   <script type="text/javascript">
       (function (c, l, a, r, i, t, y) {
           c[a] = c[a] || function () { (c[a].q = c[a].q || []).push(arguments) };
           t = l.createElement(r); t.async = 1; t.src = "https://www.clarity.ms/tag/" + i;
           y = l.getElementsByTagName(r)[0]; y.parentNode.insertBefore(t, y);
       })(window, document, "clarity", "script", "iqu1u4xwew");
   </script>
      <!-- Google analytics code start-->
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-296464365-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-296464365-1');
</script>
      <!-- Google analytics code End-->
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
            <!--[if IE]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->
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
                    <div class="container-fluid">
                        <div class="row " style="background-image: url(assets/images/banner-bg.svg)";>
                            <div class="col-md-7">
                                <ul class="inline-list">
                                   <%-- <li><a href="tel:‎91 9320059699">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                                                   <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                            </svg>  
                                            </a></li>
                                    <li class="elementor-icon-list-item elementor-inline-item">

                                        <a href="https://api.whatsapp.com/send?phone=919320059699" target="_blank" rel="noopener noreferrer">
                                          
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                                               <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z"/>
                                            </svg><span></span>   : ‎91 9320059699  

                                           </a>

                                    </li>--%>
                                     <li class="elementor-icon-list-item elementor-inline-item">

                                        <a href="https://api.whatsapp.com/send?phone=919320059699" target="_blank" rel="noopener noreferrer">
                                          
                                           <%-- <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                                               <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z"/>
                                            </svg>--%>
                                            <img src="assets/images/Logo/whatsapp.png" alt="whatapplogo" height="40px;" width="40px;"/>
                                            

                                           </a>

                                    </li>
                                    <li><a href="tel:‎91 9320059699">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                                                   <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                            </svg>  <span></span>   : ‎91 9320059699  
                                            </a>

                                    </li>
                                    <li><span style="color:white;">|</span></li>
                                    <li><a href="https://imset.co.in/">
                                       imset.co.in</a></li>
                                    <li><span style="color:white;">|</span></li>
                                    <li>
                                        <a href="#">  
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                               <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                                            </svg>  
                                            <span>: marketing.imset@gmail.com</span>  

                                        </a>

                                    </li>
                                </ul>                           </div>
                            <div class="col-md-5" style="float: right">
                              <%--  <div class="gcse-search"></div>--%>
                                <div class="gcse-search"></div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <nav class="navbar navbar-expand-lg">
                                    <div>

                                        <a class="navbar-brand" href="/">
                                            <img src="assets/images/IMSETlogo.png" alt="Logo" width="100" height="80" />

                                        </a>

                                        <br />
                                        <p class="logoalign">
                                            <bold style="color: black;">ISO 9001:2015 Certified</bold>
                                        </p>
                                    </div>

                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                    </button>

                                    <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                        <ul id="nav" class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="page-scroll" href="/">Home</a>
                                            </li>
                                          <%--  <li class="nav-item">
                                                <a class="page-scroll" href="Home#aboutus">About Us</a>
                                            </li>--%>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Services">services</a>
                                            </li>
                                          
                                            <li class="nav-item dropdown">
                                                <!-- Added "dropdown" class -->
                                                <a class="nav-link dropdown-toggle" href="#" id="productsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Our Products
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="productsDropdown">
                                                    <a class="dropdown-item" href="biosafety-cabinet-class-II-A2">Biosafety Cabinet Class II A2</a>
                                                    <a class="dropdown-item" href="biosafety-cabinet-class-II-B2">Biosafety cabinet Class II B2 </a>
                                                    <!-- Add more dropdown items as needed -->
                                                    <a class="dropdown-item" href="biosafety-cabinet-class-III">Biosafety Cabinet Class III </a>

                                                    <a class="dropdown-item" href="Customized-safety-cabinet-series">Customized Biosafety Cabinet </a>
                                                    <a class="dropdown-item" href="Vertical-Laminar-Air-Flow-Cabinet">Vertical Laminar Air Flow </a>
                                                    <a class="dropdown-item" href="#">Membrane Filtration Technique</a>
                                                    <a class="dropdown-item" href="PCR-Workstation">PCR Workstation </a>
                                                    <a class="dropdown-item" href="Polypropylene-Biosafety-Cabinet-Laminar-Air-Flow">Polypropylene Biosafety Cabinet </a>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Services#productscatlog">Products Catalogue</a>
                                            </li>
                                            <li class="nav-item ">
                                                <a class="page-scroll" href="Gallery">Gallery</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Services#clients">Our Clients</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Contact">Contact us</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="Blog">Blog</a>
                                            </li>

                                               
                                        </ul>
                                    </div>
                                    <!-- navbar collapse -->

                                  <%--  <div class="navbar-btn d-none d-sm-inline-block">
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
                                    <br />
                                    <h1 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">IMSET  pioneering in A class manufacturing process of Biosafety Cabinet Services</h1>
                                   <%-- <h3 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">IMSET  pioneering in A class </h3>
                                    <p class="text m-0 wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.8s">manufacturing process of </p>
                                    <h2 class="header-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.5s">Biosafety Cabinet</h2>--%>
                                </div>
                                <!-- header hero content -->
                            </div>
                        </div>
                        <!-- row -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="header-hero-image text-center wow fadeIn" data-wow-duration="1.3s" data-wow-delay="1.4s">
                                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                        <!-- Indicators -->
                                        <ol class="carousel-indicators">
                                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                            <li data-target="#carouselexampleindicators" data-slide-to="1"></li>
                                            <li data-target="#carouselexampleindicators" data-slide-to="2"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                                        </ol>
                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner">

                                            <div class="carousel-item active">
                                                <img src="assets/images/banner_3.png" data-color="violet" alt="Biosafety Cabinet Class III Manufacture by Imset">
                                                <div class="carousel-caption d-md-block"></div>
                                            </div>

                                            <div class="carousel-item">
                                                <img src="assets/images/banner_IIA_4.png" data-color="violet" alt="Biosafety Cabinet Class II A2 Manufacture by Imset">
                                                <div class="carousel-caption d-md-block"></div>
                                            </div>
                                            <div class="carousel-item">
                                                <img src="assets/images/PolyCabinetAirFlow.png" alt="Polypropylene Biosafety Cabinet Manufacture by Imset">
                                                <div class="carousel-caption d-md-block"></div>
                                            </div>
                                            <div class="carousel-item">
                                                <img src="assets/images/PolyCabinetAirFlow_2.png" alt="Polypropylene Vertical Laminar Air Flow Manufacture by Imset">
                                                <div class="carousel-caption d-md-block"></div>
                                            </div>
                                            <div class="carousel-item">
                                                <img src="assets/images/banner_IIb_7.png" alt="Biosafety Cabinet Class II B2 Manufacture by Imset">
                                                <div class="carousel-caption d-md-block"></div>
                                            </div>
                                        </div>

                                        <!-- Controls -->
                                        <!-- Left and right controls -->
                                        <a class="left carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                            <span class="" aria-hidden="true">
                                                <img src="assets/images/previous.png" alt="Biosafety Cabinet Previous"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="right carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                            <span class="" aria-hidden="true">
                                                <img src="assets/images/next.png" alt="Biosafety Cabinet Next"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>


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
            <div id="side-suggestion-button">
                <button type="button" class="btnmessage" onclick="OpenForm();">
                   <%-- <i class="fa fa-comment" aria-hidden="true"></i>--%>Quote now
                </button>
            </div>
            <!--====== BRAMD PART START ======-->
           <%--  <section>
        <div>
           
                 <h5 class="card-header">GET A QUOTE NOW</h5>
                <div class="card-body">
                    <form name="contact-form">
                        <div class="alert hidden" id="contact-form-msg"></div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <asp:TextBox runat="server" ID="txtCompanyname" class="form-control first-name text-field" autocomplete="off" placeholder="Company Name" />
                            </div>
                            <div class="form-group col-md-6">
                                <asp:TextBox runat="server" ID="txtContactname" class="form-control first-name text-field" autocomplete="off" placeholder="Contact Name" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-4">
                                <asp:TextBox runat="server" class="form-control email text-field" ID="txtEmail" autocomplete="off" TextMode="Email" placeholder="Email" />
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox runat="server" ID="txtMobileNo" MaxLength="10" class="form-control telephone text-field" autocomplete="off" placeholder="Contact no" onkeypress="return isNumber(event)" />
                            </div>
                            <div class="form-group col-md-4">
                                <asp:DropDownList ID="ddlQuantity" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0">-Select Quantity</asp:ListItem>
                                    <asp:ListItem Value="1">1 </asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                    <asp:ListItem Value="7">7</asp:ListItem>
                                    <asp:ListItem Value="8">8</asp:ListItem>
                                    <asp:ListItem Value="9">9</asp:ListItem>
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                    <asp:ListItem Value="11">More than 10</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <asp:DropDownList ID="ddlEquipment" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6 form-group">
                                <asp:DropDownList ID="BuyType" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div class="form-group">
                            <asp:TextBox runat="server" class="form-control message" ID="txtMessage" autocomplete="off" TextMode="MultiLine" placeholder="Add your specifications" />
                        </div>
                           <div class="row">
                                 <div class="col-lg-6 ">     
                                      <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/Captcha.aspx" Width="186px" />  
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:LinkButton ID="refresh" runat="server" Text="Refresh" ImageUrl="~/Captcha.aspx" CssClass="refreshbtn "><i class="fa fa-refresh"></i></asp:LinkButton>
                  
                                     </div>
                                  <div class="col-lg-6 ">
                                       <asp:TextBox runat="server" class="form-control message" ID="txtcaptcha" autocomplete="off"  placeholder="Please Enter  captcha" />
                                       <asp:RequiredFieldValidator ID="rqrcaptcha" ControlToValidate="txtcaptcha" Text="" ValidationGroup="LeadHome" runat="server" ErrorMessage=" Please Enter Captcha" ForeColor="Red"></asp:RequiredFieldValidator>

                                   </div>
                               </div>

                        <div class="col-lg-6 product-content row">
                            <asp:Button Text="Submit" ID="btnSubmit" class="main-btn wow fadeInDown" runat="server" OnClick="btnSubmit_Click1"/>

                        </div>
                    </form>

                </div>
                <i class="cursor-pointer dismiss white" onclick="$(this).parent().slideUp()"><i class="fa fa-times"></i></i>
            </div>
        </div>
    </section>--%>
             <section>
        <div>
            <div id="sidesuggestion" runat="server" class="card text-center" style="display: flex;">
                <%--  <h5 class="card-header">Request a Quote </h5>--%>
                <h5 class="card-header">GET A QUOTE NOW</h5>
                <div class="card-body">
                    <form name="contact-form">
                        <div class="alert hidden" id="contact-form-msg"></div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <asp:TextBox runat="server" ID="txtCompanyname" class="form-control first-name text-field" autocomplete="off" placeholder="Company Name" />
                            </div>
                            <div class="form-group col-md-6">
                                <asp:TextBox runat="server" ID="txtContactname" class="form-control first-name text-field" autocomplete="off" placeholder="Contact Name" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-4">
                                <asp:TextBox runat="server" class="form-control email text-field" ID="txtEmail" autocomplete="off"  type="email" onfocus="this.type='email'" TextMode="Email" placeholder="Email" />
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox runat="server" ID="txtMobileNo" MaxLength="10" class="form-control telephone text-field" autocomplete="off" placeholder="Contact no" onkeypress="return isNumber(event)" />
                              <asp:RequiredFieldValidator ID="reqtxtmobileno" ControlToValidate="txtMobileNo" Text="" ValidationGroup="LeadHome" runat="server" ErrorMessage="Enter Mobile number" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-4">
                                <asp:DropDownList ID="ddlQuantity" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <asp:DropDownList ID="ddlEquipment" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6 form-group">
                                <asp:DropDownList ID="BuyType" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div class="form-group">
                            <asp:TextBox runat="server" class="form-control message" ID="txtMessage" autocomplete="off" TextMode="MultiLine" placeholder="Add your specifications" />
                        </div>
                         <div class="row">
                                 <div class="col-lg-6 ">     
                                      <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/Captcha.aspx" Width="186px" />  
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:LinkButton ID="refresh" runat="server" Text="Refresh" ImageUrl="~/Captcha.aspx" CssClass="refreshbtn "><i class="fa fa-refresh"></i></asp:LinkButton>
                  
                                     </div>
                                  <div class="col-lg-6 ">
                                       <asp:TextBox runat="server" class="form-control message" ID="txtcaptcha" autocomplete="off"  placeholder="Please Enter  captcha" />
                                       <asp:RequiredFieldValidator ID="rqrcaptcha" ControlToValidate="txtcaptcha" Text="" ValidationGroup="LeadHome" runat="server" ErrorMessage=" Please Enter Captcha" ForeColor="Red"></asp:RequiredFieldValidator>

                                   </div>
                               </div>
                        <div class="col-lg-6 product-content row">
                            <asp:Button Text="Submit" ID="btnSubmit" class="main-btn wow fadeInDown" runat="server" ValidationGroup="LeadHome" OnClick="btnSubmit_Click1" />

                        </div>
                    </form>

                </div>
                <i class="cursor-pointer dismiss white" onclick="$(this).parent().slideUp()"><i class="fa fa-times"></i></i>
            </div>
        </div>
    </section>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

          

            <!--====== BRAMD PART ENDS ======-->
            <!--====== ABOUT PART START ======-->

           

            <!--====== ABOUT PART ENDS ======-->
            <!--====== SERVICE PART START ======-->

            <section id="services" class="team-area pt-50">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="section-title text-center pb-30">
                                <div class="line m-auto"></div>
                                <h3 class="title">Our <span>Services </span></h3>
                            </div>
                            <!-- section title -->
                        </div>
                    </div>
                    <!-- row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class=" wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">

                                <p class="text wrap-txt">Apart from the quality products, Our endeavor also lies in offering excellent and valuable services to our esteemed clients based across the country. Within a short span of period, we have gained a reputed position in the domestic market by providing Annual Maintenance Contracts so as to enhance preventive maintenance contracts for equipments and instruments. Moreover, we also provide Decontamination Services for Biosafety cabinets and IQ & OQ Services to offer IQ/OQ/PQ testing for the Equipments. </p>
                            </div>
                            <div class=" wow fadeInRightBig pt-2" data-wow-duration="1s" data-wow-delay="0.5s">
                                <p class="text wrap-txt mt-1">Owing to the industry knowledge of our experts, we have been able to execute the assigned task with perfection and on-time. Our prompt services have helped us in achieving the trust and confidence of our clientele and, thereby retaining our credibility amongst our competitors.</p>

                            </div>
                            <!-- services content -->
                        </div>

                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-7 col-sm-8">
                            <div class="single-team text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                                <div class="team-image">
                                    <video class="video1" width="320" height="240" autoplay muted>
                                        <source src="assets/images/audio_01.mp4" type="video/mp4">
                                       
                                    </video>
                                     
                                </div>

                            </div>
                            <!-- single team -->
                        </div>
                        <div class="col-lg-4 col-md-7 col-sm-8">
                            <div class="single-team text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                                <div class="team-image">
                                    <video class="video1" width="320" height="240" autoplay muted>
                                        <source src="assets/images/audio_02.mp4" type="video/ogg">
                                    </video>

                                </div>

                            </div>
                            <!-- single team -->
                        </div>

                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </section>

            <!--====== SERVICE PART ENDS ======-->
            <!--====== OUR PRODUTS PART START ======-->


            <!--====== OUR PRODUCTS PART ENDS ======-->

            <!--====== PRODUTS CATALOGUES PART START ======-->
            <section id="productscatlog" class="about-area pt-70">
                <div class="container">


    <div class="row">
        <div class="col-lg-12 mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
            <div class="counter-content">
                <div class="section-title">
                    <div class="line"></div>
                    <h3 class="title">Product <span>Catalogue</span></h3>
                </div>
            </div>
        </div>
    </div>
<div class="row" style="justify-content: center;">
    <div class="about-content col-lg-4 col-md-4 col-sm-6 mt-10 wow fadeInUpBig text-center" data-wow-duration="1.4s" data-wow-delay="0.7s" style="margin: 0 5px;">
        <asp:LinkButton ID="lnkFinalCatalogueMN" class="main-btn" runat="server" OnClick="lnkFinalCatalogueMN_Click" title="Click here to download Catalogue" style="display: inline-block; width: 300px;">
            Biosafety Cabinet Catalogue
        </asp:LinkButton>
    </div>
    <div class="about-content col-lg-4 col-md-4 col-sm-6 mt-10 wow fadeInUpBig text-center" data-wow-duration="1.4s" data-wow-delay="0.7s" style="margin: 0 5px;">
        <asp:LinkButton ID="lnkVertLaminarAirFlow" class="main-btn" runat="server" OnClick="lnkVertLaminarAirFlow_Click" title="Click here to download Catalogue" style="display: inline-block; width: 300px;">
            Vertical Laminar Air Flow Catalogue
        </asp:LinkButton>
    </div>
    <div class="about-content col-lg-4 col-md-4 col-sm-6 mt-10 wow fadeInUpBig text-center" data-wow-duration="1.4s" data-wow-delay="0.7s" style="margin: 0 5px;">
        <asp:LinkButton ID="lnkMembraneFiltration" class="main-btn" runat="server" OnClick="lnkMembraneFiltration_Click" title="Click here to download Catalogue" style="display: inline-block; width: 450px;">
            Membrane Filtration Technique (MFT) Assembly Set Up
        </asp:LinkButton>
    </div>
</div>










                </div>

            </section>

            <!--====== PRODUTS CATALOGUES ENDS ======-->
            <section id="clients" class="about-area pt-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                            <div class="counter-content">
                                <div class="section-title">
                                    <div class="line"></div>
                                    <h3 class="title">Our <span>Client</span></h3>
                                </div>
                                <!-- section title -->
                            </div>
                            <div class="about-content ">
                                <!-- section title -->
                                <p class="text wrap-txt">Happy and good customers are like gold which are treasured in business. Its a two way partnership for understanding ideas and information which is being shared to improve the quality of business. There is a mutual trust and respect for all the expertise of the client and our business put together for qualitative and quantitative service at our best. Its a trust build which is relatable and is always appreciated. The long term relationship with our precious client has made the company deeply rooted with more good knowledge in services and high end technologies. Since our earlier days, we have represented everything from start-up to fortune with many companies  with a true dedication and a  positive approach. </p>
                                <p class="text mt-1">We have been devoting the best of our abilities to our prestigious client by achieving great success and building a lasting relationship. our clients commitment is appreciated and we look forward to serving them with full dedication at our best..</p>

                                <a href="our_clients" class="main-btn mt-10">Read More</a>

                            </div>
                            <!-- about content -->
                        </div>
                        <div class="col-lg-6">
                            <div class="about-image text-center mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                                <img src="assets/images/ourClient_1stbanner.png" alt="Biosafety Cabinet about">
                            </div>
                            <!-- about image -->
                        </div>
                     
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
                <div class="about-shape-1">
                    <img src="assets/images/about-shape-1.svg" alt="Biosafety Cabinet shape">
                </div>
            </section>

            <!--====== FOOTER PART START ======-->

              <div class="brand-area pt-40">
                <div class="container">
                    <div class="row">
                         <div class="col-lg-12">
                    <div class="brand-logo d-flex align-items-center justify-content-center">
                        <div class="single-logo mt-30 wow fadeIn imgc" data-wow-duration="1s" data-wow-delay="0.2s">

                            <img src="assets/images/certifiedlogo1.png" alt="Biosafety cabinet brand">
                        </div>

                        <div class="single-logo mt-30 wow fadeIn imgc" data-wow-duration="1.5s" data-wow-delay="0.2s">
                            <img src="assets/images/brand-2.png" alt=" Biosafety cabinet brand">
                        </div>
                        <div class="single-logo mt-30 wow fadeIn imgc" data-wow-duration="1s" data-wow-delay="0.2s">

                            <img src="assets/images/download.png" alt=" Biosafety cabinet brand">
                        </div>
                        <div class="single-logo mt-30 wow fadeIn imgc" data-wow-duration="1s" data-wow-delay="0.2s">

                            <img src="assets/images/gmp.png" alt=" Biosafety cabinet brand">
                        </div>
                        <div class="single-logo mt-30 wow fadeIn imgc " data-wow-duration="1s" data-wow-delay="0.2s" style="margin-top: 100px;">

                            <img src="assets/images/Makeinindialogo.jpg" alt=" Biosafety cabinet brand">
                        </div>

                    </div>

                </div>
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>
 <div class="image-scroller">
        <div class="image-container">
            <ul class="current-images">
                <li>
                    <img src="assets/images/ScrollImages/ACG Associated Capsule Pvt Ltd. BSC A2 4X2.jpg" alt="Image 1">
                    <span class="image-title">ACG ASSOCIATED CAPSULE PVT LTD</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/Bethany Hospital.jpeg" alt="Image 2">
                    <span class="image-title">BETHANY HOSPITAL</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/CHITKARA UNIVERSITY BSC A2 4X2.jpeg" alt="Image 3">
                    <span class="image-title">CHITKARA UNIVERSITY</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/HOLY SPIRIT HOSPITAL BSC A2.jpeg" alt="Image 1">
                    <span class="image-title">HOLY SPIRIT HOSPITAL</span>
                </li>
                <%--  <li>
                    <img src="assets/images/ScrollImages/HOLY SPIRIT HOSPITAL BSC B2 1.jpeg" alt="Image 2">
                      <span class="image-title">HOLY SPIRIT HOSPITAL BSC B2 </span>
                </li>--%>
                <li>
                    <img src="assets/images/ScrollImages/HOLY SPIRIT HOSPITAL BSC B2.jpeg" alt="Image 3">
                    <span class="image-title">HOLY SPIRIT HOSPITAL</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/Homi Bhabha Cancer Hospital & Research Center, Mohali, Punjab 2.jpeg" alt="Image 1">
                    <span class="image-title">HOMI BHABHA CANCER HOSPITAL & RESEARCH CENTER, MOHALI, PUNJAB</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/Homi Bhabha Cancer Hospital & Research Center, Mohali, Punjab.jpeg" alt="Image 2">
                    <span class="image-title">HOMI BHABHA CANCER HOSPITAL & RESEARCH CENTER, MOHALI, PUNJAB</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/K J SOMAIYA SUPER SPECIALITY HOSPITAL & RESEARCH CENTRE BSC B2 3X2 1.jpeg" alt="Image 3">
                    <span class="image-title">K J SOMAIYA SUPER SPECIALITY HOSPITAL & RESEARCH CENTRE</span>
                </li>
                <%--  <li>
                    <img src="assets/images/ScrollImages/kolhapur cancer center 1.jpeg" alt="Image 1">
                    <span class="image-title">KOLHAPUR CANCER CENTER </span>
                </li>--%>

                  <li>
                    <img src="assets/images/ScrollImages/Sion Hospital TCU Dep 2x2 bsc.jpg" alt="Image 3">
                    <span class="image-title">SION HOSPITAL </span>
                </li>
                 <li>
                    <img src="assets/images/ScrollImages/Biosafety cabinet, Punjab University.jpg" alt="Image 3">
                    <span class="image-title">PUNJAB UNIVERSITY </span>
                </li>
                  <li>
                    <img src="assets/images/ScrollImages/IIT bombay 4x2.5x2 Biosafety cabinet.jpg" alt="Image 3">
                    <span class="image-title">IIT BOMBAY </span>
                </li>
                 <li>
                    <img src="assets/images/ScrollImages/AIIMS Bhopal.jpg" alt="Image 3">
                    <span class="image-title">AIIMS BHOPAL </span>
                </li>

                  <li>
                    <img src="assets/images/ScrollImages/Breach Candy Hospital.jpg" alt="Image 3">
                    <span class="image-title">BREACH CANDY HOSPITAL</span>
                </li>
                 <li>
                    <img src="assets/images/ScrollImages/Patanjali research institute, haridwar.jpg" alt="Image 3">
                    <span class="image-title">PATANJALI RESEARCH INSTITUTE, HARIDWAR</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/kolhapur cancer center 2.jpeg" alt="Image 2">
                    <span class="image-title">KOLHAPUR CANCER CENTER </span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/kolhapur cancer center 3.jpeg" alt="Image 3">
                    <span class="image-title">KOLHAPUR CANCER CENTER</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/LUPIN Diagnostics Varanasi.jpeg" alt="Image 3">
                    <span class="image-title">LUPIN DIAGNOSTICS VARANASI</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/LUPIN DIAGNOSTICS VIJAYWADA 1.jpeg" alt="Image 1">
                    <span class="image-title">LUPIN DIAGNOSTICS VIJAYWADA</span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/LUPIN DIAGNOSTICS VIJAYWADA 2.jpeg" alt="Image 2">
                    <span class="image-title">LUPIN DIAGNOSTICS VIJAYWADA </span>
                </li>
                <li>
                    <img src="assets/images/ScrollImages/Saiprasad Medicare Pvt Ltd 1.jpeg" alt="Image 3">
                    <span class="image-title">SAIPRASAD MEDICARE PVT LTD </span>
                </li>
               
            </ul>
        </div>
    </div>
        </div>
            <footer id="footer" class="footer-area pt-160">
                <div class="container pt-195">
                    <div class="footer-widget pb-100">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-8">
                                <div class="footer-about mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                                    <a class="logo" href="#">
                                        <img src="assets/images/IMSETlogo3.png" alt="logo" />
                                    </a>
                                    <%--<p class="text" style=" text-align: justify;">We highly appreciate in offering products that provide optimum functionality and are long lasting. Our products are highly appreciated by the Clients as perfect finishing and accessible to use. </p>
                                    --%>
                                    <p class="text wrap-txt demopara">Imset is India's leading Biosafety cabinet company, which manufactures and supplies most reliable, durable .Discover top-tier Biosafety Cabinets and Vertical Laminar Airflow systems crafted with precision in India. Our expertise lies in providing advanced containment solutions to safeguard your workspace. With a commitment to quality, we offer customizable options that cater to your unique requirements. Elevate your safety standards with our innovative solutions. </p>

                                    <ul class="social">
                                        <li><a href="https://www.facebook.com/imsetIndia" target="_blank"><i class="lni-facebook-filled"></i></a></li>
                                        <li><a href="#"><i class="lni-twitter-filled"></i></a></li>
                                        <li><a href="https://instagram.com/imsetbiosafetycabinet?utm_source=qr&igshid=OGIxMTE0OTdkZA==" target="_blank"><i class="lni-instagram-filled"></i></a></li>
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
                                             <li><a href="/">Home</a></li>
                                           <%-- <li><a href="Home#aboutus">About Us</a></li>--%>
                                            <li><a href="Services">Services</a></li>
                                            <%-- <li><a href="index.aspx#products">Our Products</a></li>--%>
                                            <li><a href="Product">Our Products</a></li>
                                            <li><a href="Gallery">Gallery</a></li>
                                            <li><a href="our_clients">Our Clients</a></li>
                                            <li><a href="Contact">Contact US</a></li>
                                            <li><a href="FAQ">FAQ</a></li>
                                            <li><a href="Blog">Blog</a></li>
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
                                        <%-- <li><i class="fa fa-headphones pr-10 fa-halfx"></i>+91 9320059699</li>--%>
                                        <li><i class="fa fa-headphones pr-10 fa-halfx"></i><a href="tel:+91 9320059699" style="color: white">+91 9320059699</a></li>

                                        <li><i class="fa fa-envelope pr-10 fa-halfx"></i>marketing.imset@gmail.com </li>
                                        <li><i class="fa fa-envelope pr-10 fa-halfx"></i>imset.in@gmail.com</li>
                                        <li><i class="fa fa fa-globe pr-10 fa-halfx"></i>www.imset.co.in</li>
                                        <li>
                                        <i class="fa fa-map-marker pr-10 fa-halfx"></i>IMSET House,
                                             <br>
                                            Grand Square, 
                                      Behind Bhakti Park,  
                                            <br>
                                            Anand Nagar,<br>
                                            Ghodbunder Road, Thane ( W ) - 400 615
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


    <script>

        $('.carousel').carousel({
            interval: 6000,
            pause: "false"
        });

    </script>

    <script type="text/javascript">
        function isNumber(evt) {

            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

        function OpenForm() {

            document.getElementById("sidesuggestion").style.display = "block";
        }

        function dismissForm() {
            document.getElementById("sidesuggestion").style.display = "";
            document.getElementById("sidesuggestion").style.display = "dismiss";
        }
        $(window).on('load', function (event) {
            document.getElementById("sidesuggestion").style.display = "";
        });
    </script>

</body>
</html>
