<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="our_clients.aspx.cs" Inherits="imset.our_clients" %>

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
                                        <img src="assets/images/IMSETlogo.png" width="130" height="80" alt="Logo" />
                                    </a>
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                        <span class="toggler-icon"></span>
                                    </button>

                                    <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                        <ul id="nav" class="navbar-nav ml-auto">
                                            <li class="nav-item ">
                                                <a class="page-scroll" href="index.aspx">Home</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#aboutus">About Us</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="page-scroll" href="index.aspx#services">Services</a>
                                            </li>
                                            <li class="nav-item ">
                                                <%-- <a class="page-scroll" href="index.aspx#products">Our Products</a>--%>
                                                <a class="page-scroll" href="Product.aspx">Our Products</a>
                                            </li>
                                            <li class="nav-item ">
                                                <a class="page-scroll" href="gallery.aspx">Gallery</a>
                                            </li>
                                            <li class="nav-item active">
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
                                    <h3 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">Clients </h3>
                                    <p class="text m-0 wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.8s">satisfaction is our success to a</p>
                                    <h2 class="header-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.5s">Milestone</h2>


                                </div>
                                <!-- header hero content -->
                            </div>
                        </div>
                        <!-- row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="header-hero-image text-center wow fadeIn pt-200 mt-200" data-wow-duration="1.3s" data-wow-delay="1.4s">
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

            <section id="enquiryform" class="about-area pt-10">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="section-title text-center pb-40">
                                <div class="line m-auto"></div>
                                <h3 class="title">Our <span>Clients </span></h3>
                            </div>
                            <!-- section title -->
                        </div>

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs col-lg-12" role="tablist">
                            <li><a href="#IMSETclient" role="tab" class="nav-tabs active" data-toggle="tab">IMSET Client</a></li>
                            <li><a href="#Covidclient" role="tab" data-toggle="tab">Covid-19 Clients For Lab Installations</a></li>
                        </ul>
                        </li>

                <!-- Tab panes -->
                        <div class="tab-content single-services mt-30 col-lg-12">
                            <div class="tab-pane active" id="IMSETclient">
                                <h4 class="services-title"><a href="#">IMSET Client List</a></h4>
                                <div class="row justify-content-center mt-10">
                                    <div class="bs-example col-lg-12">
                                        <div class="accordion" id="accordionExample">
                                            <div class="card">
                                                <div class="card-header" id="headingOne">
                                                    <h2 class="mb-0">
                                                        <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne">
                                                            <h4>Pharma & Biotech client</h4>
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="pharma_banner">
                                                            <img src="assets/images/Pharma_Biotech_clientBanner.png" alt="bg">
                                                        </div>
                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-left">
                                                            <div class="single-services noborder ptb-35 banner_bg">
                                                                <div class="services-content ">
                                                                    <ul class="check-list">
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Watson Pharma Pvt.Ltd - Ambernath</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Lupin Limited -Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rossari Biotech Ltd -Kanjurmarg</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Zydus Cadila - Ahemadabad</span></li>

                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ella Foundataion group of Bharat Biotech - Hydrabad	</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Advanced Enzyme Pvt Ltd	 -Thane	</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dow Chemicals -Navi Mumbai		</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Orchid Pharma - Aurangabad	</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Yashraj Biotech - Navi Mumbai		</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">VITA Biopharma Pvt Ltd - Daman</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Damodar  Threads Ltd - Silvassa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kristgen Biosystem - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">RPG Lifescience - Gujarat	</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Claris Injectables Ltd	Ahmedabad - Gujarat	</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wellspan - Mumbai	</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">JSW, Jindal - Banglore</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Glenmark research center - Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Keva Flavours Private Limited - Raigad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Cadbury India Ltd - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Zelle Biotechnology Pvt.Ltd. - Goregaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Praj Industries Pvt.Ltd - Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Vins Bioproducts Pvt.Ltd. - Hyderabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bactron health care Pvt. Ltd. -Navi Mumbai</span></li>


                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-right">
                                                            <div class="single-services  noborder mb-20 ptb-35 banner_bg">
                                                                <div class="services-content">
                                                                    <ul class="check-list">
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hexagoan - Nashik</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BENZOCHEM LIFE SCIENCES (P). - Tarapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">CRL Lab -Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Novartis ( Chiron Behring Vaccines Pvt Ltd ) - Ankaleshwar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Charles River Laboratories Pvt Ltd - Belapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Nisarga Biotech Pvt Ltd - Satara</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sai Life Sciences  Ltd - Bidar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">S.G.S INDIA PRIVATE LIMITED - THANE</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">S.L.V Biosolutions - Chennai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wockhardt R & D LTD - Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Biosphere Life Science Pvt Ltd - Pashan road, Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rexyn Healtheon Pvt Ltd - Goregaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Calantha Biotech Pvt Ltd - Andheri,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Pramuk Healthcare - Mira Road,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hi Media Laboratories Pvt Ltd - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Carlsberg India Pvt Ltd, Village Mallepally Mandal, Kondapur - Hyderabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Media Instrument Mfg Company Ltd - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Camlin Fine Sciences Ltd, Tarapur, Boisar - Palghar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Concord Drugs Ltd. - Hyderabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ami Business Ventures - Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Geneombio Technologies Pvt. Ltd., Baner - Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Livinguard Technologies Pvt. Ltd - Navi Mumbai	</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">CIPLA FOUNDATION - Mumbai</span></li>
                                                                    </ul>


                                                                </div>
                                                            </div>
                                                            <!-- single services -->
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>


                                            <div class="card">
                                                <div class="card-header" id="headingTwo">
                                                    <h2 class="mb-0">
                                                        <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseTwo">
                                                            <h4>Hospital</h4>
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="pharma_banner">
                                                            <img src="assets/images/hospital_clientBanner.png" alt="bg">
                                                        </div>

                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-left">
                                                            <div class="single-services noborder ptb-35  banner_bg mb-20">
                                                                <div class="services-content ">
                                                                    <ul class="check-list">
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kokilaben Dhirubhai Ambani Hospital - Andheri,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hinduja Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Burn Center Hospital - Airoli, NaviMumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">H N Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Padmashree D Y Patil Hospital & Research Centre	Nerul - Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">S.L.Raheja Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ILADEVI CATARACT & INTROCULAR LENS RESEARCH CENTER - Ahemadabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IKRDC, IVF center - Ahemadabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Karnataka Institute of Medical Science & Hospital - Hubli</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">TATA Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sion Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SDM Medical College & Hospital - Dharwad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Godavari Biorefineries Limited,K.J.Somaiya Hospital And Reserch Centre - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">J.J. Hospital, SBTC. - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">S. Nijalingappa Medical College - Bagalkot</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Maratha Vidya Prasarak Medical College - Nashik</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Jupiter Hospital - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Chatrapati Pramilaraje Hospital(RSMC) - Kolhapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SAM Trust,Sharon Hospital Comp. - Nandurbar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Nijalingappa Medical College - Bagalkot</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wockhardt Hospital - Nagpur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wockhardt Hospital - Nashik</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wockhardt Hospital - Byculla</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Prince Aly Khan Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">G.T.B.Hospital,Jerbai Wadia Road,Sewree - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ANAND Hospotal	Nanpura - Surat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MGM New Bombay Hospital - Vashi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Suchirayu Health Care Solutions Ltd - Hubli</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Holyspirit Hospital - Andheri,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">KEM Hospital - Parel,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bethany Hospital - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bethany Hospital - Bethany Hospital</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wockhardt Hospital - Madgaon,GOA</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Lokmanya Tilak Municipal General Hospital - Sion,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Choithram Hospital & Research Centre - Indore,MP</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kasturba Hospital E Bola Ward - Chnichpokali Mumbai</span></li>

                                                                    </ul>

                                                                </div>
                                                            </div>
                                                            <!-- single services -->
                                                        </div>
                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-right">
                                                            <div class="single-services noborder ptb-35 banner_bg mb-20">
                                                                <div class="services-content ">

                                                                    <ul class="check-list">

                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kasturba Hosptial Pathology Lab - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Institute of Science	 - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Jaslok Hospital & Research Centre - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rajawadi Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MBR Medical Trust, Specialist Hospital, KCM Mather Road, Ernakulam North - Ernakulam</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Seven Hill Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wockhardt Hospital,Umrao Institute of Medical Science and Research - Mira Road, Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Balabhai Nanavati Hospital,S.V.Road, Vile Parle ( W ) - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kasturba Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rajawadi Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Seven Hill Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hinduja Healthcare - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bhakti Vendanta Hospital & Research Institute - Mira Road,Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kasturba Hospital Nitin Instrument - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">The B.D. Petit Parsee General Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Cancer Relief Society's Rashtrasant Tukdoji Regional Cancer Hospital - Nagpur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Asian Heart Institute - Bandra</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Jaslok Chanrai Medical Private Ltd - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Balabhai Nanavati Hospital - Vile Parle,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">The Bhatia General Hospital Tardeo- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BARC Hospital , Anushakti Nagar - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Balabhai Nanavati Hospital - Vile Parle,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Thunga Healthcare LLP - Malad, Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Anand Hospital, Nanpura - Surat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MGM Hospital - Kamothe</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">B.D.Petit Parsee General Hospital, Cumballa Hill - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">J J Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">P.D.Hinduja Hospital & Medical Research Centre - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Cooper Hospital - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shrimad Rajchandra Hospital - Guharat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr. Mahajan's Hospital	- Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Purandare Hospital	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Marrow Donor Registry India,  - Mahim	Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Aashray Children Hospital	- Valsad, Gujrat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">KLES. DR. Prabhakar Kore Hospital	  - Belgaum, Karnataka</span></li>
                                                                    </ul>

                                                                </div>
                                                            </div>
                                                            <!-- single services -->
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingThree">
                                                    <h2 class="mb-0">
                                                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree">
                                                            <h4>Research Institutes and Colleges</h4>
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">

                                                    <div class="card-body">
                                                        <div class="pharma_banner">
                                                            <img src="assets/images/ResearchInstitutes_clientBanner.png" alt="bg">
                                                        </div>
                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-left">
                                                            <div class="single-services noborder ptb-35  banner_bg mb-20">
                                                                <div class="services-content">
                                                                    <ul class="check-list">
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IIT Bombay - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Cancer Institute Stem cell lab - 	Kochin</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bharati Vidyapeeth University - Pune </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.V.B.Ladole - 		Amravati</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">M.S.RAMAICH INSTITUTE OF TECHNOLOGY.	- 	Banglore</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Vivekanand College - Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dept. of Biochemistry  Dr.Babasaheb Ambedkar Marathwada University. - Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dept.Of Zoology Dr.Babasaheb Ambedkar Marathwada University	 - Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dept of Chemical Technology Dr.Babasaheb Ambedkar Marathwada University - 	Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Green House   BARC- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Mod Lab  BARC- Mumbai</span></li>
                                                                        <li>
                                                                            <i class="ion-android-checkmark-circle"></i><span class="clientlistright">FIPLY  BARC - 	Mumbai
                                                                            </span>
                                                                        </li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BEJO Sheetal Seeds pvt. Ltd.	 - Jalana</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">D.Y.Patil Institute of Biotechnology and Bioinformatics	 - 	Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Metallurgical Services -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Biotron Health Care Pvt.Ltd. -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BITS Pilani -  Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Vaijapur College -  Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dept. of  Earth Science, IIT	 -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Calgon Scientific. -  Kochin</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">The Dept.Of Chemistry DepartmentI I T Pavai.	 -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Department of Environment Sciences,University of Pune -  Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SMT.Chandibhai Himathalal Mansukhani College of Arts,Science & Commerce	 -  Ulhasnagar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Centre Institute For Research on Cotton Technology.	 -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Symbiont Technologies -  Banglore</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shri Shivaji Shikshan Prasarak Mandal,Barshi’s17	 -  Solapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Clinical Research. Smt. Chandibai Himmatmal Mansukhani.	 -  Ulhasnagar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr. Bhivgade’s Bioinformetiocs & Biotech Lab. -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MGM of Bio Medical Sciences Sector	-  Raigad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dhempe College of Arts & Science. -  Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">KILPEST India Ltd.Formulators Of Pesticides.	 -  Bhopal</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dept.of Biotechnology & Bioinformatics.	 -  	Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">M.S.P.Mandal’sDeogiri Institute.	-  	Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Pinnamaneni Siddhartha Institute Of Medical Science.G  -  Andra Pradesh</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Pradhan Dental Centre.-  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">M/S Nimbus Pharma -  Raigad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ferguson College       G   -  Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SICES College of Arts,Commerce & Science -  Ambernath </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Biotron Healthcare (India) P.  -  Dharwad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Botany Department,  Goa University  -  Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Godavari Biorefineries Limited. -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Material Management DivisionIndian Institute Of Technology Bombay.  -   Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dept.Of Earth ScienceIIT,Powai,Mumbai -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rayat Shikshan Santha’s    Karmaveer Bhaurao Patil College.  -   Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Unique Biological & Chemicals.  -  Kolhapur </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Meditek  LTD.                                                   G -   Kalyan</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Kambar Agriculture Research Station .ARS,Sankeshwar- 591 314  -  Karanataka </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Scientific Sales & Services Pvt. Ltd. -  Latur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Skylab Instrument Pvt. Ltd. G -  Vasai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Modern college-  Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">P.P.Enterprises -  Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Metallurgical Services -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">National Center For  Antarctic & Ocean Research (NCAOR) -  Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">National Institute Of Oceanography(NIO)	 -  Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">PES Institute of Medical Science. -  Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ponda Education Society  -  Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Padmashri Vikhe Patil Institute-  Pravra Nagar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Satyan Pharma  -  Lonavala</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ruia College -  Mumbai </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Department of Biotechnology and Bioinformatics, MGM College  -  Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Biomedical Group,   Bhabha Atomic Research Center-  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Thadomal Sahani Engineering College                             G  -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shram Sadhana Bombay Trust’sCOLLEGE OF ENGINEERING AND TECHNOLOGY - Jalgaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Haffkine Institute For Training & Research & Testing	  -  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bejo sheetal seeds pvt.ltd. -  Jalana</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ferguson College       G                                                                        G - Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Alan Medical & Laboratory Products- Chennai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Walchand Centre for Biiotechnology(WCBT) - Solapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BharatiVidyapeeth University.	-  Pune </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Central   Institute for Research on Cotton Technology,- Matunga	Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Modern College. -  Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shivaji University, Dept. of Botany - Kolhapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Department of Biotechnology and Bioinformatics, MGM College- Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Veterinary College - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">University of Mumbai.-  Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hrugved Plant Tissue Culture Pvt.Ltd.- Indapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dayanand Biotech Institute- Latur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shahu Biotech Institute - Latur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IIT Delhi	-  Delhi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shaikh Imtiaz ,Zitam & Company - Jammu Kashmir</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Department of Biotechnology and Bioinformatics, MGM College- Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shahu Biotech Institute Latur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">CIFT - Kochin</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">RV College	- Banglore</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rajaram College	- Kolhapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">The Oxford College of Engineering	- Banglore</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">The College of Horticulture	- Munirabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">VSBT College	- Baramati</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Transiatonal Health Science and Technology Institute	Gurgaon, - Haryana</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">University of Horticultural Sciences	- Bagalkot</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">M.S.P Mandal's Deogiri College	- Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Changa college	- Surat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Indian Institute of Technology	- Jodhpur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Institue of scienece	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dayanand College Of Arts, Commerce & Science	- Solapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Green Earth Biotech	- Sangli</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ree Lab	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shivaji University, Dept. of Biochemistry	- Kolhapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">New Arts, Commerce & Science College,	- Ahamadnagar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MJ College	J- algaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Mahatma Gandhi Mission's College of Agricultural Biotechnology	- Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Indian Institute of Technology	- Pawai,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ideal College of Pharmacy and Research	- Kalyan</span></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <!-- single services -->
                                                        </div>

                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-right">
                                                            <div class="single-services noborder ptb-35  banner_bg mb-20">
                                                                <div class="services-content">

                                                                    <ul class="check-list">

                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">West Bengal University of Technology	- Kolkatta</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BAIF DEVELOPMENT RESEARCH FOUNDATION	Uruli Kanchan Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Tuljaram Chaturchand College	- Baramati</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">M.S.University	- Baroda</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Central Institute of Fisheries Education	- Andheri,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bombay Veterinary College	- Parel,Goregaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">KNP College of Veterinary Science	- Shirval</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">K.K.Wagh College	- Nashik</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Goa University	- Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">NMU University	- Jalgaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ONGC	- Panvel</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Krushi Vinyan Kendra	- Latur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IISER	- Bhopal</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bombay College of Pharmacy	- Kalina, Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shivaji University, Zoology Dpt	- Kolhapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sharekashmeer University (SKUAST),	- Srinagar, HP</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Physics Dpt., IIT	- Dehi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MS University	- Badoda</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Vasantdada Sugar Institute	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shivaji University	- Kolhapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Zoology Department,  Goa University	- Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">D.Y.PATIL Institute of Biotechnology and Bioinformatics	- Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Calgaon Scientific	- Kochin</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Gujrat University	- Ahemadabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ayurvedic research center	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Agarkar research institute	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">R.C. Patel  College	- Shirpur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IISER	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Haffkine Institute For Training & Research & Testing	- Parel</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Mahatma Gandhi Mission's,Institute of Biosciences and Technology	- Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">University of Agricultural Science,Dept of Genetics & Plant Breeding	- Raichur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BARC	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IIT,Bioscience & Bioenergy Dept	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Govt Institute of Science	- Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MGM College	- Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Birla Institute of Technology & Science, Pilani	- Goa</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">College of Veterinary & Animal Science	- Thrissur,Kerala</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">College of Dairy Science & Technology	- Thrissur,Kerala</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Institute of Chemical Technology ( UDCT )	- Matunga,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Poona College of Pharmacy,Nirav Biosolutions Pvt Ltd	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">University of Mumbai Centre of Excellence in Basic science	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">University of Mumbai Biotechnology Dept.	 - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Wilson College	- Girgaon Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">G N Khalsa College	- Matunga,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">University of Mumbai	Kalina, - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bharat Serum & Vaccines Limited	- Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rexyn Healtheon Pvt Ltd	- Goregaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">North Maharashtra University,School of Life Science	- Jalogaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">College of Veterinary & Animal Science	- Parbhani</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Amity University,Ritanand Balved Education Foundation	- Bhatan,Panvel</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BMC Municipal Coroporation of Greater Mumbai G N WARD OFFICE	- DADAR</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Grant Govt Medical College & SIR JJ Hospital	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Moolji Jetha College	- Jalgaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Agharkar Research Institute	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">National Institute of Biotic Stress Management	- Baronda,Raipur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">National Institute of Research in Reproductive Health ( NIRRH)	- Parel,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">The Foundation for Medical Research ( FMR )	- Worli,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Institute of Science	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Central Institue of Fisheries Education	- Worli,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">GAMUT Medicare	- Lucknow</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">College of Veteinary and Animal Science	- Parbhani</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Municipal Corporation of Greater Mumbai MCGM G N Office	- Mahim,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">CSIR-NEERI Mumbai Zonal Laboratory	- Worli,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BARC Pramuk Health Care	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Alliance Scientific	- Guwahati,Assam</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ACTREC	- Kharghar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Medica Instruments MFG Company	- Bhivandi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shivaji University,Kolhapur	- Kolhapur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Patanjali Research Institute, Divya Yog Mandir Trust	- Haridwar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IIT Gandhinagar, Palaj,Gujarat	- Palaj</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Gujarat Energy Research & Management Institute, GERMI, Gujarat	- Raisan, Gandinagar</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Naraindas Morbai Budhrani Trust	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">KNPCV Shirwal	- Shirwal</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BARC	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ACTREC, TATA Memoral Centre, Kharaghar Node	- Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">StemRx Bioscience Solutions Pvt. Ltd.	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Path India	- New Delhi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Apsons Polymers	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Empire Enterprises	- Vadodara</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Jai shree shyam trading concern, Kathmandu	- Nepal</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">CNN Marketing, Ahmedabad	- Gujarat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Biolinx Labsystem Pvt. Ltd.	- Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Universal Lab Solution	- Panvel</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">kerala Veterinary And Animal Science University	- Kerala</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">The Bombay Textiles Research Association	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Guru Nanak Khalsa College of Arts, Science & Commerce	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Maharaja Sayajirao University of Baroda, Vadodara	- Gujarat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Tamilnadu Agricultural University	- Coimbatore, Tamilnadu</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Span Healthcare Pvt. Ltd., Bangalore	- Karnataka</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Armed Force Medical Stores Depot, Kandivali	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">New Labtech Enterprises	- Nashik</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Vedant Scientific Co.	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Seth GS Medical College & Multidispensary Research Unit. KEM	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Shree Paras Surgical	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr. D. Y. Patil Vidyapeeth Society, Pune	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr. D. Y. Patil Dental College & Hospital	- Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Jawaharlal Nehru University, School of Life Sciences	- Delhi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Saveetha Medical College & Hospital Saveetha University	- Chennai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">National Institute of Animal Biotechnology	- Telangana</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">IB Scientific	- Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Global Equipment’s	- Ahmedabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Junagadh Agriculture University- 	Gujarat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SCHAMKA Teknology Pvt. Ltd.	- Vadodara, Gujarat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sardar Patel Medical College	- Bikaner</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Directorate of Animal Husbandary & Veterinary Services	- Goa</span></li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <!-- single services -->
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingFour">
                                                    <h2 class="mb-0">
                                                        <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseFour">
                                                            <h4>Pathology Lab</h4>
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="pharma_banner">
                                                            <img src="assets/images/pathology_clientBanner.png" alt="bg">
                                                        </div>
                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-left">
                                                            <div class="single-services noborder ptb-35  banner_bg mb-20">
                                                                <div class="services-content ">
                                                                    <ul class="check-list">

                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ankur Lab	- Mumbai </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ambika Blood Bank	 - Jodhpur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Patkar Laborotories	- Vashi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dhande Laboratory	 - Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Seva Blood Bank - Malegaon</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Panvel Pathology lab - Panvel</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rupali Hire Lab - Vashi</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Satav Lab - Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Ajay Shaha Laboratory	Dahisar, - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr. Bhide Lab - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr. Vaidya Lab - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Centra Lab - Surat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Helix Laboratory - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Perfect Laboratory - Surat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hemolab Equipments - Kaloor,Cochin</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Autus Laboratory,Dr.Vadia	- Rajkot</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">University of Mumbai,Department of Atomic Energy	 - Kalinaa,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Igenetic Diagnostic Pvt ltd - Andheri E,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Nucleus,Laboratory - Rajkot</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sunflower Laboratory & Diagnostic Centre - Malad,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">State Public Health Laboratories - Pune</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr J J Medical Centre - Kolkatta</span></li>


                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-right">
                                                            <div class="single-services  noborder mb-20  banner_bg ptb-35">
                                                                <div class="services-content">
                                                                    <ul class="check-list">
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ICON-Indian Co-Operative Oncology Network	- Sevree,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sant Nirankari Satsang Bhavan - Vile Parle</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Marathwada Laboratory Pvt Ltd - Nanded</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Accuprec Research Lab Pvt Ltd - Ahmedabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">STEM CULTURE - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Lotus Microbiologycs - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Nerul Lab ( Ashar Plastic Pvt Ltd )- Nerul, Navi Mumbai </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">S K Traders - Nerul, Bhopal </span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Regional Public Health Laboratory Pune ( DPHL - Thane)  - Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SRL Diagnostics Ltd - Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Vittals Medicare Pvt. Ltd. - Bangalore</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">V. k. Traders - Bhopal</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bureau Veritas India Pvt. Ltd - Navi Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Swastik Lifescience Pvt. Ltd.	- Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SGS India Pvt. Ltd - Haryana</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr. Bhatt Pathalogy Laboratory, Rajkot  - Gujarat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">GEMI's Laboratory, Gandhinagar	- Gujarat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bokil Golwilkar Metropolis Healthcare Pvt. Ltd.	 - Satara</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kidney Care Lab Pvt. Ltd.  - Goregaon, Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Datar Cancer Genetics Ltd. - Nashik</span></li>
                                                                    </ul>


                                                                </div>
                                                            </div>
                                                            <!-- single services -->
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingFive">
                                                    <h2 class="mb-0">
                                                        <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseFive">
                                                            <h4>Food Industry</h4>
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="pharma_banner">
                                                            <img src="assets/images/food_clientBanner.png" alt="bg">
                                                        </div>
                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-left">
                                                            <div class="single-services noborder ptb-35  banner_bg mb-20">
                                                                <div class="services-content ">
                                                                    <ul class="check-list">
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Keva Flavours Private Limited	 - Raigad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Cadbury India Ltd	 - Than</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Raptakos Brett & Co Ltd- Thane</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Colgate,Palmolive Ltd - 	Andheri</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Godavari Biorefineris in Sugar Industry	- Sion,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">National Dairy Research Institute - Karnal</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">College of Dairy & Technology - Thrissur</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ITC R & D - Bangalore</span></li>
                                                                    </ul>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6 col-md-12 col-sm-12 pull-right">
                                                            <div class="single-services  noborder mb-20 ptb-35  banner_bg">
                                                                <div class="services-content">
                                                                    <ul class="check-list">
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BurLyField Biotech,Food Processing - 	Aurangabad</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">National Institute for Research in Reproductive Health NIRRH - Parel,Mumbai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Surat District Co-Op Milk Producer’s Union Ltd Sumul Dairy - Surat</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Govind Milk & Milk Products Pvt. Ltd	 - Satara</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hatsun Agro Product Ltd. - Chennai</span></li>
                                                                        <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Hexagon Nutrition Pvt. Ltd. - 	Nashik</span></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <!-- single services -->
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="Covidclient">

                                <h4 class="services-title"><a href="#">For Covid-19 labs, we have done more than 200 units of Biosafety Cabinet installations.</a></h4>
                                <h4 class="pt-10">Installations of  Biosafety Cabinet Class II A2  & B2 for Covid-19 Testing Labs</h4>
                                <div class="col-lg-6 col-md-12 col-sm-12 pull-left mt-20">
                                    <div class="single-services  noborder mb-20 ptb-35">
                                        <div class="services-content">
                                            <ul class="check-list">
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">K. E. M Hospital- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Cooper Hospital - Mumbai	</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">GT Hospital- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Haffkine Institute- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bai Jerabai Wadia Hospital for Children- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Jaslok Hospital- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sir.H.N. Hospital- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Reliance Life Sciences-Navi Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">InfeXn Laboratories Pvt .Ltd-Thane</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Kalva Hospital-Thane</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Vaidya Lab-Thane</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">AIIMS-Nagapur</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Krishna Institute of the Medical Science-Karad</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Nashik Municipal Hospital-Nashik</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Nepal Covid-19 Center-Nepal</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Veer Surendra Sai Institute of Medical Sciences and Reserach-Bhubaneshwar</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Chittaranajan National Cancer Institute -Kolkata</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Karwar Institute of Medical Sciences-Bangalore</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Rivaara Labs Pvt.Ltd-Bangalore,Coimbatore ,Calicut,Chennai,Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SRL Lab-Bangalore,Chennai,Hyderabad</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Reliance Industries-Kakinada,Surat and Baroda</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Ravi S.Naik College of Arts and Science-Goa</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Reliance Life Sciences-Jamnagar-Gujrat</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Gaya Medical College-Gaya-Bihar</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Institute of Life Sciences-Odissa </span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Agriculture Medical College-Tripura</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- single services -->
                                </div>


                                <div class="col-lg-6 col-md-12 col-sm-12 pull-right mt-20">
                                    <div class="single-services  noborder mb-20 ptb-35">
                                        <div class="services-content">
                                            <ul class="check-list">

                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Officers Traning Academy-Gaya- Bihar</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">NIMHANS-Bangalore</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">MJV Medical College- Bangalore</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">KC General College- Bangalore</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Jaynagar General Hospital- Bangalore</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">C V Raman General Hospital- Bangalore</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bellary District Hospital- Bellary </span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">DDRC – Kerla</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">BM Medical College- Bijapur </span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">DHS- Goa</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">GMC- Goa</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">KIMS- Karad</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ARI- Pune</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Suburban Diagnostics Lab- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">L.R.Pathology Lab- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">ZaffJay Medical Services Pvt.Ltd.- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Bombay Hospital- Indore</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">UniPath Lab - Ahmedabad(Gujarat)</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Unipath Lab- Baroda- Gujarat</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Unipath Lab- Kolkata</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">SRL Lab- Mumbai</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sardarkrushinagar Dantiwada University- Gujarat</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Salvus Bioresearch Solutions- Gujarat</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">North District Hospital/Asilo Hospital-Mapusa- Goa</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">South District Hospital/Hospicio Hospital-Madgaon- Goa</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Sub District Hospital-Ponda- Goa</span></li>
                                                <li><i class="ion-android-checkmark-circle"></i><span class="clientlistright">Dr.Agarwal’s Pathology Lab- Pune</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- single services -->
                                </div>
                            </div>
                        </div>

                        <!-- row -->
                    </div>
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
                                            <li><a href="index.aspx#aboutus">About Us</a></li>
                                            <li><a href="index.aspx#services">Services</a></li>
                                            <%-- <li><a href="index.aspx#products">Our Products</a></li>--%>
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
    <script src="https://code.jquery.com/jquery-1.10.1.min.js"></script>
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
