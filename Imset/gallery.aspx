<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="imset.gallery" %>

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
    <title>Explore Our Biosafety cabinet images Gallery Now! | Imset</title>

    <meta name="description" content=" Explore a diverse Gallery of Biosafety Cabinet Images. Discover top-notch lab safety visuals for your research needs.">
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
             /* background: rgba(0, 0, 0, 0.8);*/

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

         .wrap-txt {
             text-align: justify;
         }

         .navbar-brand {
             padding: 0;
             margin-left: 60px;
         }

         .logoalign {
             padding-left: 30px;
             color: #448EE4;
             font-size: 14px;
             font-weight: 600;
         }

         .navbar {
             padding: 20px 0;
         }
         /*  .navbar-nav .nav-item a {
            padding: 4px 10px;
        }*/
         .dropdown-menu {
             padding: 4px 10px;
         }


         .ImgRowheight {
             width: auto;
             height: 340px;
         }

         .ImgRowheight1 {
             width: auto;
             height: 390px;
         }

         .ImgRowheight2 {
             width: auto;
             height: 165px;
             padding-top: 20px;
         }

         .imgtxt {
             text-align: center;
         }

         /*.inline-list {
            list-style: none;*/ /* Remove default list bullets */
         /*margin-top: 15px;
        }*/

         /* Style for list items in the inline list */
         /*.inline-list li {
                display: inline;*/ /* Display list items inline */
         /*margin-right: 10px;*/ /* Add some spacing between items (adjust as needed) */
         /*}

                .inline-list li a {
                    color: #ffffff;
                }*/

         /* Prevent image stretching as it's resized */
         .card-img-top {
             object-fit: cover;
         }

         /* Make all cards in row the same height */
         .row {
             display: flex;
             flex-wrap: wrap;
         }

         /*  .row > div[class*='col-'] {
                display: flex;
            }*/
         /* .row > div.single_portfolio_text[class*='col-'] {
                display: flex;
            }*/
         .col-12.col-md-6.col-lg-3.mb-4 .card {
             display: flex;
             flex-direction: column;
             height: 100%; /* Ensure the card container takes the full height of its parent */
         }

         /* Hover effects */
         .card {
             transition: -webkit-transform 0.3s ease;
             background-color: #F5F5F5;
         }

             .card:hover {
                 transform: scale(1.01, 1.01);
             }

         /* Responsive design for image heights */
         @media (min-width: 576px) {
             .card-img-top {
                 height: 50vw;
             }
         }

         @media (min-width: 768px) {
             .card-img-top {
                 height: 30vw;
             }
         }

         @media (min-width: 992px) {
             .card-img-top {
                 height: 20vw;
             }
         }

         @media (min-width: 1200px) {
             .card-img-top {
                 height: 20vw;
             }
         }

         .card-text {
             position: absolute;
             bottom: 0;
             left: 20%;
             padding: 10px;
             font-size: 16px;
             font-weight: 400;
             color: black;
             font-family: sans-serif
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

         .wrap-txt {
             text-align: justify;
         }

         .gsc-search-button {
             margin-left: 1px;
         }

         .gsc-search-button {
             width: 1%;
         }

         td.gsc-input {
             padding-right: 5px;
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
   <%--   <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-YRN0ZYTZN2"></script>
    <script> window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'G-YRN0ZYTZN2'); </script>
  --%>  <!-- Google tag (gtag.js) -->
<%--<script async src="https://www.googletagmanager.com/gtag/js?id=UA-186965253-1"></script>
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
                                  <%--  <li><a href="tel:‎91 9320059699">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
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
                                </ul>                            </div>
                            <div class="col-md-5">
                             
                                <div class="gcse-search"></div>
                            </div>
                        </div>
                        <div class="row">
                                <div class="col-lg-12">
                                    <nav class="navbar navbar-expand-lg">
                                        <div>
                                            <a class="navbar-brand" href="/">

                                                <img src="assets/images/IMSETlogo.png" width="100" height="80" alt="Logo">
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
                                               <%-- <li class="nav-item">
                                                    <a class="page-scroll" href="Home#aboutus">About Us</a>
                                                </li>--%>
                                                <li class="nav-item">
                                                    <a class="page-scroll" href="Services">Services</a>
                                                </li>
                                                <%-- <li class="nav-item">
                                                     <a class="page-scroll" href="Product.aspx">Our Products</a>
                                                </li>--%>
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
                                                    <a class="page-scroll" href="Contact">Contact Us</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="page-scroll" href="Blog">Blog</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <!-- navbar collapse -->

                                        <%-- <div class="navbar-btn d-none d-sm-inline-block">
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


            <section id="products" class="video-counter ">

                <div class="container">
                    <div class="row justify-content-center">
                        <!------ Include the above in your HEAD tag ---------->
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 ">
                                    <div class=" mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
                                        <div class="counter-content">
                                            <div class="section-title">
                                                <div class="line"></div>
                                                <h3 class="title"><span>Gallery</span></h3>
                                                <br />
                                            </div>
                                            <!-- section title -->
                                        </div>
                                        <!-- counter wrapper -->

                                        <div class="row">
                                             <div class="section-title">
                                              
                                                <h3 class="title"><span>Biosafety Cabinet Class II A2</span></h3>
                                                <br />
                                            </div>
                                        </div>
                                     <div class="row">
                                         <!-- the cols in this div change the number of cards per row depending on screen size and the mb-4 adds space below cards if they spill over into the next row-->
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                             <div class="single_portfolio_text">
                                                   <img src="assets/images/gallery/gallery1.png" alt="BIOSAFETY CABINET CLASS II A2 3X2 MS 1 Manufacture by Imset" />
                                              </div>
                                             <div class="card-body">
                                             <%--  <p class="card-text">BIOSAFETY CABINET CLASS II A2 3X2</p>--%>
                                                 <p class="card-text">BSC Class II A2 2X2</p>
                                                 
                                             </div>
                                           </div>
                                         </div>
                                            <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                 
                                                      <div class="single_portfolio_text">
                                                            <img src="assets/images/gallery/gallery8.png" alt="BSC C II A2 MS 1 Manufacture by Imset" />
                                                       </div>
                                                
                                             <div class="card-body">
                                             <%--  <p class="card-text">BSC C II A2 MS 1</p>--%>
                                                 <p class="card-text">BSC Class II A2 3X2</p>
                                             </div>
                                           </div>
                                         </div>
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                  <div class="single_portfolio_text">
                                                       <img src="assets/images/gallery/gallery6.png" alt="BSC C II A2 4X2 2 Manufacture by Imset" />
                                                  </div>
                                             <div class="card-body">
                                             <%--  <p class="card-text">BSC C II A2 4X2 2</p>--%>
                                                 <p class="card-text">BSC Class II A2 4X2</p>
                                             </div>
                                           </div>
                                         </div>
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                 <div class="single_portfolio_text">
                                                      <img src="assets/images/gallery/gallery7.png" alt="BSC C II A2 4X2 Manufacture by Imset" />
                                                 </div>
                                             <div class="card-body">
                                              <%-- <p class="card-text">BSC C II A2 4X2</p>--%>
                                                 <p class="card-text">BSC Class II A2 4X2</p>
                                             </div>
                                           </div>
                                         </div>
                                     
                                      </div>
                                          <div class="row">
                                             <div class="section-title">
                                              
                                                <h3 class="title"><span>Biosafety Cabinet Class II B2</span></h3>
                                                <br />
                                            </div>
                                        </div>
                                      <div class="row">
                                         <!-- the cols in this div change the number of cards per row depending on screen size and the mb-4 adds space below cards if they spill over into the next row-->
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                             <div class="single_portfolio_text">
                                                    <%-- <img src="assets/images/gallery/gallery5.png" alt="BSC B2 SS Manufacture by Imset" />--%>
                                                    <img src="assets/images/BSC_2x2.jpeg" alt="BSC B2 SS Manufacture by Imset" />
                                              </div>
                                             <div class="card-body">
                                               <p class="card-text">BSC Class II B2 2X2</p>
                                                 
                                             </div>
                                           </div>
                                         </div>
                                           <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                 <div class="single_portfolio_text">
                                                      <%-- <img src="assets/images/gallery/gallery3.png" alt="BSC B2 SS Manufacture by Imset" />--%>
                                                      <img src="assets/images/gallery/gallery5.png" alt="BSC B2 SS Manufacture by Imset" />
                                                    </div>
                                             <div class="card-body">
                                               <p class="card-text">BSC Class II B2 3X2</p>
                                             </div>
                                           </div>
                                         </div>
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                  <div class="single_portfolio_text">
                                                    <%--  <img src="assets/images/gallery/gallery2.png" alt="BSC B2 SS Manufacture by Imset" />--%>
                                                        <img src="assets/images/gallery/gallery3.png" alt="BSC B2 SS Manufacture by Imset" />
                                                  </div>
                                             <div class="card-body">
                                               <p class="card-text">BSC Class II B2 4X2</p>
                                             </div>
                                           </div>
                                         </div>
                                        
                                        <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                               
                                                      <div class="single_portfolio_text">
                                                             <img src="assets/images/gallery/gallery4.png" alt="BSC B2 SS Manufacture by Imset" />
                                                      </div>
                                           
                                             <div class="card-body">
                                               <p class="card-text">BSC Class II B2 4X2</p>
                                             </div>
                                           </div>
                                         </div>
                                      </div>
                                          <div class="row">
                                         <!-- the cols in this div change the number of cards per row depending on screen size and the mb-4 adds space below cards if they spill over into the next row-->
                                        <%-- <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                             <div class="single_portfolio_text">
                                                   <img src="assets/images/gallery/gallery10.png" alt="BSC DISPLAY OLD Manufacture by Imset" />
                                               </div>
                                             <div class="card-body">
                                               <p class="card-text">BSC DISPLAY OLD</p>
                                                 
                                             </div>
                                           </div>
                                         </div>--%>
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                  <div class="single_portfolio_text">
                                                       <img src="assets/images/gallery/gallery9.png" alt="BSC DISPLAY 2 Manufacture by Imset" />
                                                        </div>
                                             <div class="card-body">
                                                  
                                             <%--  <p class="card-text">BSC DISPLAY 2</p>--%>
                                                   <p class="card-text">BSC LCD DISPLAY</p>
                                             </div>
                                           </div>
                                         </div>
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                 <div class="single_portfolio_text">
                                                      <img src="assets/images/gallery/gallery11.png" alt="BSC DISPLAY Manufacture by Imset" />
                                                        </div>
                                             <div class="card-body">
                                              
                                             <%--  <p class="card-text">BSC B2 SS</p>--%>
                                                 <p class="card-text">BSC LCD DISPLAY</p>
                                             </div>
                                           </div>
                                         </div>
                                       
                                      </div>
<%-- Aakanksh --%>

                                       <div class="row">
                                             <div class="section-title">
                                              
                                                <h3 class="title"><span>Membrane Filtration Technique(MFT) Assembly Set Up</span></h3>
                                                <br />
                                            </div>
                                        </div>
                                         <div class="row">
                                         <!-- the cols in this div change the number of cards per row depending on screen size and the mb-4 adds space below cards if they spill over into the next row-->
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                             <div class="single_portfolio_text">
                                                   <img src="assets/images/gallery/img13.jpeg" alt="Polypropylene Waste Bottle" />
                                              </div>
                                             <div class="card-body">
                                             <%--  <p class="card-text">BIOSAFETY CABINET CLASS II A2 3X2</p>--%>
                                                 <p class="card-text">Filter Holder
Manifolds (SS),
Oil Free
Vacuum Pump ,

                                                     Polypropylene Waste Bottle,
                                                     Funnel, 
                                                     Silicone tube
                                                 </p>
                                                 
                                             </div>
                                           </div>
                                         </div>
                                            <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                 
                                                      <div class="single_portfolio_text">
                                                            <img src="assets/images/gallery/img12.jpeg" alt="Filter Holder Manifold ( SS)" />
                                                       </div>
                                                
                                             <div class="card-body">
                                             <%--  <p class="card-text">BSC C II A2 MS 1</p>--%>
                                                 <p class="card-text">Filter Holder Manifold(SS)</p>
                                             </div>
                                           </div>
                                         </div>
                                         <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                  <div class="single_portfolio_text">
                                                       <img src="assets/images/gallery/img11.jpeg" alt="Membrane Filtration Technique(MFT) Assembly Set Up" />
                                                  </div>
                                             <div class="card-body">
                                             <%--  <p class="card-text">BSC C II A2 4X2 2</p>--%>
                                                 <p class="card-text">Membrane Filtration Technique(MFT) Assembly Set Up</p>
                                             </div>
                                           </div>
                                         </div>
                                     <div class="col-12 col-md-6 col-lg-3 mb-4">
                                           <div class="card">
                                                  <div class="single_portfolio_text">
                                                       <img src="assets/images/gallery/img14.jpeg" alt="Cellulose Nitrite Membrane" />
                                                  </div>
                                             <div class="card-body">
                                             <%--  <p class="card-text">BSC C II A2 4X2 2</p>--%>
                                                 <p class="card-text">Cellulose Nitrite Membrane</p>
                                             </div>
                                           </div>
                                         </div>
                                     
                                      </div>
                                        <!-- row -->
                                    </div>
                                    
                                  
                                    <!-- container -->
                                    <div class="about-shape-1">
                                        <img src="assets/images/about-shape-1.svg" alt="BIOSAFETY CABINET Manufacture by Imset">
                                    </div>


                                </div>
                              </div>
                            </div>

                        </div>
                        <!-- row -->
                    </div>
                    <!-- container -->
            </section>

             <br />
            <br />
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





            <!--====== ABOUT PART ENDS ======-->
            <!--====== FOOTER PART START ======-->

            <footer id="footer" class="footer-area pt-160">
                <div class="container pt-195">
                    <div class="footer-widget pb-100">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-8">
                                <div class="footer-about mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                                    <a class="logo" href="#">
                                        <img src="assets/images/IMSETlogo.png" alt="BIOSAFETY CABINET Manufacture by Imset">
                                    </a>
                                    <p class="text wrap-txt">Imset is India's leading Biosafety cabinet company, which manufactures and supplies most reliable, durable .Discover top-tier Biosafety Cabinets and Vertical Laminar Airflow systems crafted with precision in India. Our expertise lies in providing advanced containment solutions to safeguard your workspace. With a commitment to quality, we offer customizable options that cater to your unique requirements. Elevate your safety standards with our innovative solutions. </p>
                                    <ul class="social">
                                        <li><a href="https://www.facebook.com/imsetIndia"><i class="lni-facebook-filled"></i></a></li>
                                        <li><a href="#"><i class="lni-twitter-filled"></i></a></li>
                                        <li><a href="https://instagram.com/imsetbiosafetycabinet?utm_source=qr&igshid=OGIxMTE0OTdkZA=="><i class="lni-instagram-filled"></i></a></li>
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
                                        <%--  <li><i class="fa fa-headphones pr-10 fa-halfx"></i>+91 9320059699</li><a href="tel:+91 9320059699" style="color:white">+91 9320059699</a>--%>
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
     
   

    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>
    <script async src="https://cse.google.com/cse.js?cx=27d72b030aad94aac">
     <script src="js/script.js"></script>
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
