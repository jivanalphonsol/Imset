<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="imset.Index" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <!-- Google Tag Manager -->

    <script>
	(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':

                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],

                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =

                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);

        })(window, document, 'script', 'dataLayer', 'GTM-P6ZSJ6DN');
	

	(function(c,l,a,r,i,t,y){
        c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
        t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
        y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
    })(window, document, "clarity", "script", "iqu1u4xwew");	

    </script>

    <!-- End Google Tag Manager →

    <!--====== Title ======-->
    <title>IMSET - Manufacturer of Biosafety Cabinets </title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="google-site-verification" content="l3J_-BE6f3fLHrO0N6dZKm-afN2wjOGB3DXDJiXCxA8" />
    <link rel="canonical" href="https://imset.co.in" />

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

    <style>
        #side-suggestion-button {
            display: none;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 30%;
            z-index: 1000;
            display: block;
            top: 400px;
        }

            #side-suggestion-button .btnmessage {
                font-size: 35px;
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

        #sidesuggestion {
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

        #sidesuggestion {
            display: none;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 30%;
            z-index: 1000;
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
            line-height: 0.5em;
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

    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-YRN0ZYTZN2"></script>
    <script> window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'G-YRN0ZYTZN2'); </script>


    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-186965253-1">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-186965253-1');
</script>
	
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
                        <div class="row">
                            <div class="col-lg-12">
                                <nav class="navbar navbar-expand-lg">
                                    <div>
                                        <a class="navbar-brand" href="index.aspx">
                                            <img src="assets/images/IMSETlogo.png" alt="Logo" width="100" height="80" />

                                        </a>

                                        <br />
                                      <%--  <p style="padding-left: 35px; color: #448EE4; font-size: 20px">
                                            <bold>ISO 9001:2015</bold>
                                        </p>--%>
                                    </div>

                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                    </button>

                                    <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                        <ul id="nav" class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="page-scroll" href="#home">Home</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#aboutus">About Us</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#services">Services</a>
                                            </li>
                                            <%--<li class="nav-item">
                                                <a class="page-scroll" href="Product.aspx">Our Products</a>
                                                
                                            </li>--%>
                                            <li class="nav-item dropdown">
                                                <!-- Added "dropdown" class -->
                                                <a class="nav-link dropdown-toggle" href="#" id="productsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Our Products
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="productsDropdown">
                                                    <a class="dropdown-item" href="biosafety-cabinet-class-II-A2.aspx">Biosafety Cabinet Class II A2</a>
                                                    <a class="dropdown-item" href="biosafety-cabinet-class-II-B2">Biosafety cabinet Class II B2 </a>
                                                    <!-- Add more dropdown items as needed -->
                                                    <a class="dropdown-item" href="biosafety-cabinet-class-III">Biosafety Cabinet Class III </a>

                                                    <a class="dropdown-item" href="Customized-safety-cabinet-series">Customized Biosafety Cabinet </a>
                                                    <a class="dropdown-item" href="Vertical-Laminar-Air-Flow-Cabinet">Vertical Laminar Air Flow </a>
                                                    <a class="dropdown-item" href="PCR-Workstation">PCR Workstation </a>
                                                    <a class="dropdown-item" href="Polypropylene-Biosafety-Cabinet-Laminar-Air-Flow">Polypropylene Biosafety Cabinet </a>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#productscatlog">Products Catalogue</a>
                                            </li>
                                            <li class="nav-item ">
                                                <a class="page-scroll" href="gallery.aspx">Gallery</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#clients">Our Clients</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="contact.aspx">Contact us</a>
                                            </li>

                                            <!--    <li class="nav-item">
                                          <a class="page-scroll" href="#blog">Blog</a>
                                      </li> -->
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
                                    <h3 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">IMSET  pioneering in A class </h3>
                                    <p class="text m-0 wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.8s">manufacturing process of </p>
                                    <h2 class="header-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.5s">Biosafety Cabinet</h2>
                                    <a href="Product.aspx" class="main-btn wow fadeInUp page-scroll" data-wow-duration="1.3s" data-wow-delay="1.1s">Get Started</a>
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
                                                <img src="assets/images/previous.png"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="right carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                            <span class="" aria-hidden="true">
                                                <img src="assets/images/next.png"></span>
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
                    <i class="fa fa-comment" aria-hidden="true"></i>
                </button>
            </div>
            <!--====== BRAMD PART START ======-->
            <section>
                <div>
                    <div id="sidesuggestion" runat="server" class="card text-center" style="display: flex;">
                        <h5 class="card-header">Enquiry </h5>
                        <div class="card-body">
                            <form name="contact-form">

                                <div class="alert hidden" id="contact-form-msg"></div>

                                <div class="form-group">
                                    <%--<input type="text" class="form-control first-name text-field" name="txtcustName" id="txtcustName" placeholder="Name">--%>
                                    <asp:TextBox runat="server" ID="txtName" class="form-control first-name text-field" autocomplete="off" placeholder="Name" />
                                </div>

                                <div class="form-group">
                                    <%--<input type="text" class="form-control telephone text-field" name="txttelephone" id="txttelephone" placeholder="Telephone">--%>
                                    <asp:TextBox runat="server" ID="txtMobileNo" MaxLength="10" class="form-control telephone text-field" autocomplete="off" placeholder="Telephone" onkeypress="return isNumber(event)" />
                                </div>

                                <div class="form-group">
                                    <%--<input type="text" class="form-control email text-field" name="txtemail" id="txtemail" placeholder="Email">--%>
                                    <asp:TextBox runat="server" class="form-control email text-field" ID="txtEmail" autocomplete="off" TextMode="Email" placeholder="Email" />
                                </div>

                                <div class="form-group">
                                    <%--<textarea class="form-control message" name="message" placeholder="Message"></textarea>--%>
                                    <asp:TextBox runat="server" class="form-control message" ID="txtMessage" autocomplete="off" TextMode="MultiLine" placeholder="Message" />
                                </div>

                                <div class="col-lg-6 product-content row">
                                    <%--<input type="submit" class="main-btn wow fadeInDown" value="Submit" onclick="Chkblank()" />--%>
                                    <asp:Button Text="Submit" ID="btnSubmit" class="main-btn wow fadeInDown" runat="server" OnClick="btnSubmit_Click" />

                                </div>
                            </form>

                        </div>
                        <i class="cursor-pointer dismiss white" onclick="$(this).parent().slideUp()"><i class="fa fa-times"></i></i>
                    </div>
                </div>
            </section>

            <div class="brand-area pt-40">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="brand-logo d-flex align-items-center justify-content-center">
                                <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                                    <img src="assets/images/brand-1.png" alt="brand">
                                </div>
                                <!-- single logo -->
                                <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.2s">
                                    <img src="assets/images/brand-2.png" alt="brand">
                                </div>
                                <!-- single logo -->
                                <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.3s">
                                    <img src="assets/images/brand-3.png" alt="brand">
                                </div>
                                <!-- single logo -->
                                <!--  <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.4s">
                            <img src="assets/images/brand-4.png" alt="brand">
                        </div>
                        <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.5s">
                            <img src="assets/images/brand-5.png" alt="brand">
                        </div> <!-- single logo -->
                            </div>
                            <!-- brand logo -->
                        </div>
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>

            <!--====== BRAMD PART ENDS ======-->
            <!--====== ABOUT PART START ======-->

            <section id="aboutus" class="about-area pt-70">
                <div class="container">



                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="section-title text-center pb-40">
                                <div class="line m-auto"></div>
                                <h3 class="title">About <span>Us </span></h3>
                            </div>
                            <!-- section title -->
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="about-content mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                                <!-- section title -->
                                <p class="text wrap-txt">
                                    We <b>IMSET</b> are pioneer manufacturer’s of Biosafety cabinets with LCD Display . We have done more than 1500+ installations for Biosafety Cabinet and more than 200+ installation for Covid-19 Labs all over India. We are Manufacturer’s, Distributors and Service Providers of a vast range of Scientific Equipments like Biosafety Cabinet, IMSET is an CE & ISO 9001:2008 , GMP certified company. We highly appreciate in offering products that provide optimum functionality and are long lasting. Our products are highly appreciated by the Clients as perfect finishing and accessible to use. We ensure that products made by us are durable and ensure superior quality and functionality. We have large storing capacity in our warehouse facility post manufacturing of the products,  Moreover our warehouse ensures the safe storage of products
                                <p class="text wrap-txt">till their final dispatch. Our company focuses on offering products that are safe and easy to use and offer efficient performance. Since our commencement, we have believed on the strategy in offering the quality of product at reasonable price. A team of well trained and experienced professionals concentrate hard on maintaining the quality of the products. On completion of production, each product is stringently tested on defined parameters, in order to deliver the finest quality products at the client’s doorstep.</p>

                                </p>
                            </div>
                            <!-- about content -->
                        </div>
                        <div class="col-lg-6">
                            <div class="about-image text-center mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                                <img src="assets/images/about1.png" alt="about">
                            </div>
                            <!-- about image -->
                        </div>

                        <%-- <div class="col-lg-12">
                            <div class=" wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">

                                <p class="text">till their final dispatch. Our company focuses on offering products that are safe and easy to use and offer efficient performance. Since our commencement, we have believed on the strategy in offering the quality of product at reasonable price. A team of well trained and experienced professionals concentrate hard on maintaining the quality of the products. On completion of production, each product is stringently tested on defined parameters, in order to deliver the finest quality products at the client’s doorstep.</p>
                            </div>
                            <!-- services content -->
                        </div>--%>

                        <!-- row -->
                    </div>
                    <!-- container -->
                    <div class="about-shape-1">
                        <img src="assets/images/about-shape-1.svg" alt="shape">
                    </div>
                </div>
            </section>

            <!--====== ABOUT PART ENDS ======-->
            <!--====== SERVICE PART START ======-->

            <section id="services" class="team-area pt-120">
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
                            <div class=" wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                                <p class="text wrap-txt">Owing to the industry knowledge of our experts, we have been able to execute the assigned task with perfection and on-time. Our prompt services have helped us in achieving the trust and confidence of our clientele and, thereby retaining our credibility amongst our competitors.</p>

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
                                        Your browser does not support the video tag.
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

                        <div class="about-content col-lg-6 mt-10 wow fadeInUpBig text-center offset-1" data-wow-duration="1.4s" data-wow-delay="0.7s">


                            <asp:LinkButton ID="lnkFinalCatalogueMN" class="main-btn" runat="server" Text="text" OnClick="lnkFinalCatalogueMN_Click" title="Click here to download Catalogue">
                                Biosafety Cabinet Catalogue
                            </asp:LinkButton>



                        </div>
                        <div class="about-content col-lg-6 mt-10 wow fadeInUpBig text-center" data-wow-duration="1.4s" data-wow-delay="0.7s">
                            <asp:LinkButton ID="lnkVertLaminarAirFlow" class="main-btn " runat="server" Text="text" OnClick="lnkVertLaminarAirFlow_Click" title="Click here to download Catalogue">
                                Vertical Laminar Air Flow Catalogue
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
                                <p class="text">We have been devoting the best of our abilities to our prestigious client by achieving great success and building a lasting relationship. our clients commitment is appreciated and we look forward to serving them with full dedication at our best..</p>

                                <a href="our_clients.aspx" class="main-btn mt-10">Learn More</a>

                            </div>
                            <!-- about content -->
                        </div>
                        <div class="col-lg-6">
                            <div class="about-image text-center mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                                <img src="assets/images/ourClient_1stbanner.png" alt="about">
                            </div>
                            <!-- about image -->
                        </div>
                        <%--  <div class="col-lg-12">
                            <div class=" wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">

                                <p class="text">We have been devoting the best of our abilities to our prestigious client by achieving great success and building a lasting relationship. our clients commitment is appreciated and we look forward to serving them with full dedication at our best..</p>
                            </div>
                            <a href="our_clients.aspx" class="main-btn mt-10">Learn More</a>
                            <!-- services content -->
                        </div>--%>
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
                <div class="about-shape-1">
                    <img src="assets/images/about-shape-1.svg" alt="shape">
                </div>
            </section>

            <!--====== FOOTER PART START ======-->

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
                                        <li><a href="https://www.facebook.com/imsetIndia"><i class="lni-facebook-filled"></i></a></li>
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
                                            <%-- <li><a href="index.aspx#products">Our Products</a></li>--%>
                                            <li><a href="Product.aspx">Our Products</a></li>
                                            <li><a href="gallery.aspx">Galllery</a></li>
                                            <li><a href="our_clients.aspx">Our Clients</a></li>
                                            <li><a href="contact.aspx">Contact US</a></li>
                                            <li><a href="FAQ">FAQ</a></li>
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
