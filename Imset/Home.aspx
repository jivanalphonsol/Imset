<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Imset.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-xrCFsfa0Aqg8XSm7l8A/4I6Pq6p6DQIb79MwbM24WeqUmcndkk36yDw2sr9BvFzjZlO4mtzCGG7/feqBwOowmw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   <%-- <title>Biosafety Cabinet Manufacturer in India - Reliable Solutions | Imset
    </title>--%>

     <title>IMSET: Your Partner in Sustainable Laboratory Equipment Solutions</title>
     
    <link href="assets/css/SliderImages.css" rel="stylesheet" />
    <meta content="Reduce your lab's carbon footprint with IMSET. We offer Sustainable services & biosafety cabinets to minimise environmental impact.  Explore & get a quote today!" name="description">
    <%--<meta name="description" content="Explore the top-notch biosafety cabinet manufacturer, providing high-quality equipment to ensure clean and secure working environments. Learn about their expertise ">--%>
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
                margin-left: 2%;
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

        #ContentPlaceHolder1_sidesuggestion {
            display: none;
            position: fixed;
            right: 0; /* Position on the right side */
            bottom: 0;
            width: 600px;
            z-index: 1000;
        }

        @media (max-width: 700px) {
            #ContentPlaceHolder1_sidesuggestion {
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
        .navbar {
    padding: 2px 0;
          }

        #ContentPlaceHolder1_sidesuggestion .dismiss {
            display: inline-block !important;
        }



        .imgc {
            height: 200px;
            width: 200px
        }

        .dropdown-menu {
            padding: 4px 10px;
        }

        .accordion {
            /*color: #797979;*/
            color: #3c3c3c;
            background: #F7F7F7;
            cursor: pointer;
            width: 100%;
            text-align: left;
            border: none;
            outline: none;
            font-weight: 700;
            transition: 0.4s;
            line-height: 34px;
            padding: 0 15px;
            min-height: 50px;
            border-left: 1px solid #ccc;
            border-right: 1px solid #ccc;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            position: relative;
            box-shadow: inset 0 -2px 0 rgb(0 0 0 / 5%);
            -moz-box-shadow: inset 0 -2px 0 rgba(0,0,0,.05);
            -webkit-box-shadow: inset 0 -2px 0 rgb(0 0 0 / 5%);
            margin-bottom: 15px;
        }


            /* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
            .accordion:hover, .active1 {
                color: #F7F7F7;
                /* background-color: #1ab394;*/
                /* background-color: linear-gradient(to right, #33c8c1 0%, #119bd2 50%, #33c8c1 100%); */
                background-image: linear-gradient(to right, #33c8c1 0%, #119bd2 50%,#33c8c1 100%);
            }
            /* + sign */
            .accordion:after {
                content: '\002B';
                color: #F7F7F7;
                font-weight: bold;
                float: right;
                margin-left: 5px;
            }
        /* - sign */
        .active1:after {
            color: #F7F7F7;
            content: "\2212";
        }
        /* Style the accordion panel. Note: hidden by default */
        .panelacc {
            padding: 0 18px;
            background-color: white;
            display: none;
            overflow: hidden;
            border-left: 1px solid #ccc;
            border-right: 1px solid #ccc;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            position: relative;
            box-shadow: inset 0 -2px 0 rgb(0 0 0 / 5%);
            -moz-box-shadow: inset 0 -2px 0 rgba(0,0,0,.05);
            -webkit-box-shadow: inset 0 -2px 0 rgb(0 0 0 / 5%);
        }

        .show {
            display: block;
        }




        .modal.in .modal-dialog {
            width: 100%;
            padding-top: 0px;
            padding-right: 15px;
            padding-bottom: 0px;
            padding-left: 195px;
            margin: auto;
        }

        .modal.in .modal-dialog-2 {
            width: 75%;
            padding-top: 0px;
            padding-right: 15px;
            padding-bottom: 0px;
            padding-left: 195px;
            margin: auto;
        }

        .modal.in .modal-body {
            padding-top: 30px;
            padding-right: 15px;
            padding-bottom: 0px;
            padding-left: 15px;
            margin: auto;
        }

        .panel-body {
            padding: 15px;
        }



        .counts {
            padding-bottom: 30px;
        }

        .count-box {
            box-shadow: 0px 0 16px rgba(0, 0, 0, 0.1);
            padding: 30px;
            background: #fff;
            margin-bottom: 30px;
            background-color: #7F00FF; /* :#00CED1;*/
            color: white;
        }

            .count-box i {
                display: block;
                font-size: 64px;
                margin-bottom: 15px;
            }

            .count-box span {
                font-size: 24px;
                display: block;
                font-weight: 700;
                color: white;
            }

        .small {
            font-size: 16px !important;
            color: white;
        }

        .active_box {
            border-bottom: #f44e06 solid 4px;
        }

        .divcenter {
            margin: 25px 0px 0px 0px;
            width: 30%;
        }

        .divcenter1 {
            margin: 15px;
        }

        .Equimentdiv {
            /* border: 1px solid Black;*/
            padding: 20px;
            margin-top: 50px;
        }

        .titleheadh1 {
            font-size: 40px;
            font-weight: 300;
            color: black;
        }

        .titleheadh2 {
            font-size: 36px;
            font-weight: 300;
            color: black;
        }

        .titleheadh3 {
            font-size: 30px;
            font-weight: 300;
            color: black;
        }

        .titlehead {
            font-size: 38px;
            font-weight: 300;
            color: black;
        }

        .divaboutus img {
            width: 100%;
            height: 75%;
            position: absolute;
            z-index: 1;
            text-align: justify;
        }

        @media (max-width: 767px) {
            .divaboutus img {
                width: 100%; /* Adjust this percentage for the desired width */
                height: auto; /* Let the height adjust proportionally */
            }
        }

        .wrap-txt {
            text-align: justify;
        }

            .wrap-txt strong {
                color: black;
            }

        .subHedtagh3 {
            font-size: 30px;
            font-weight: 500;
            text-align: left;
            padding-top: 8px;
        }

        .subHedtagh4 {
            font-size: 26px;
            font-weight: 500;
            text-align: left;
            padding-top: 8px;
        }

        .customer-review {
            font-family: Arial, sans-serif;
            /*  margin-bottom: 20px;*/
        }

        .star-rating {
            font-size: 17px;
        }

        .star {
            color: gold; /* You can use any color you prefer for the stars */
        }

        /* Style for empty stars (optional) */
        .star-empty {
            color: gray; /* Color for empty stars */
        }

        .divstyle {
            margin-left: 20px;
            margin-bottom: 20px;
            border: 1px solid black;
        }

        /*  .innerdivstyle {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 10vh;
        }*/
        .innerdivstyle {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 10vh;
        }

        /*.logo {
            width: 50px;*/ /* Adjust the width as needed */
        /*margin-right: 10px;*/ /* Add spacing between the logo and text */
        /*}*/
    </style>

    <%-- <meta name="google-site-verification" content="SXNXJIVGbbrhZ3mBiHJHUMi0KGkUqMzkX8_ZeBQdXbw" />--%>
    <meta name="google-site-verification" content="jRcMPXKE80aa5vEcon1i2hov0_vSqcqXIPdjYahRi5M" />


    <%--  <meta name="google-site-verification" content="SXNXJIVGbbrhZ3mBiHJHUMi0KGkUqMzkX8_ZeBQdXbw" />--%>
    <%--<meta name="google-site-verification" content="l3J_-BE6f3fLHrO0N6dZKm-afN2wjOGB3DXDJiXCxA8" />--%>
    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':

                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],

                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =

                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);

        })(window, document, 'script', 'dataLayer', 'GTM-P6ZSJ6DN');


        (function (c, l, a, r, i, t, y) {
            c[a] = c[a] || function () { (c[a].q = c[a].q || []).push(arguments) };
            t = l.createElement(r); t.async = 1; t.src = "https://www.clarity.ms/tag/" + i;
            y = l.getElementsByTagName(r)[0]; y.parentNode.insertBefore(t, y);
        })(window, document, "clarity", "script", "iqu1u4xwew");

    </script>


    <link rel="canonical" href="https://imset.co.in" />

    <%-- <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-YRN0ZYTZN2"></script>
    <script> window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'G-YRN0ZYTZN2'); </script>
    --%>

    <script async src="https://cse.google.com/cse.js?cx=27d72b030aad94aac"></script>


    <%-- <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-YRN0ZYTZN2"></script>
    <script> window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); } gtag('js', new Date()); gtag('config', 'G-YRN0ZYTZN2'); </script>--%>


    <%--   <!-- Google tag (gtag.js) -->
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
    <!-- google add Run required tag -->

    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-11382385720">
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Google Tag Manager (noscript) -->

    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P6ZSJ6DN"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>




    <div id="home" class="header-hero bg_cover" style="background-image: url(assets/images/banner-bg.svg)">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="header-hero-content text-center">
                        <br />
                        <br />
                        <h1 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">IMSET Leads the Way in A-Class Manufacturing Process of Biosafety Cabinets</h1>
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
                                <%--  <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>--%>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="carousel-item">
                                    <img src="assets/images/banner_IIA_4.png" data-color="violet" alt="Biosafety Cabinet Class II A2 Manufacture by Imset">
                                    <div class="carousel-caption d-md-block"></div>
                                </div>
                                <div class="carousel-item">
                                    <img src="assets/images/banner_IIb_7.png" alt="Biosafety Cabinet Class II B2 Manufacture by Imset">
                                    <div class="carousel-caption d-md-block"></div>
                                </div>
                                <div class="carousel-item active">
                                    <img src="assets/images/banner_3.png" data-color="violet" alt="Biosafety Cabinet Class III Manufacture by Imset">
                                    <div class="carousel-caption d-md-block"></div>
                                </div>
                                <%--  <div class="carousel-item">
                                    <img src="assets/images/PolyCabinetAirFlow.png" alt="Polypropylene Biosafety Cabinet Manufacture by Imset">
                                    <div class="carousel-caption d-md-block"></div>
                                </div>--%>
                                <%--  <div class="carousel-item">
                                    <img src="assets/images/PolyCabinetAirFlow_2.png" alt="Polypropylene Vertical Laminar Air Flow Manufacture by Imset">
                                    <div class="carousel-caption d-md-block"></div>
                                </div>--%>
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



            <!-- container -->
        </div>

        <!-- row -->
    </div>


    <div id="side-suggestion-button">
        <button type="button" class="btnmessage" onclick="OpenForm();">
            <%--  <i class="fa fa-comment" aria-hidden="true"></i>--%> Quote now
        </button>
    </div>
    <!--====== BRAMD PART START ======-->
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
                                <asp:TextBox runat="server" class="form-control email text-field" ID="txtEmail" autocomplete="off" type="email" onfocus="this.type='email'" TextMode="Email" placeholder="Email" />
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
                                <asp:TextBox runat="server" class="form-control message" ID="txtcaptcha" autocomplete="off" placeholder="Please Enter  captcha" />
                                <asp:RequiredFieldValidator ID="rqrcaptcha" ControlToValidate="txtcaptcha" Text="" ValidationGroup="LeadHome" runat="server" ErrorMessage=" Please Enter Captcha" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="col-lg-6 product-content row">
                            <asp:Button Text="Submit" ID="btnSubmit" class="main-btn wow fadeInDown" runat="server" ValidationGroup="LeadHome" OnClick="btnSubmit_Click" />

                        </div>
                    </form>

                </div>
                <i class="cursor-pointer dismiss white" onclick="$(this).parent().slideUp()"><i class="fa fa-times"></i></i>
            </div>
        </div>
    </section>


    <div class="container Equimentdiv">
        <div class="divcenter1">
            <br />
            <br />
            <p class="text wrap-txt">In today's fast-paced world, maintaining a clean and safe environment is paramount, especially in universities, Hospitals, Research Laboratories and Institutes, Microbiology Laboratories, Food Testing Laboratories, Oil and Natural Gas Research Companies and Pharmaceutical Companies that deal with bio hazardous or infectious agents and materials. Biosafety cabinets and laminar flow systems play a crucial role in providing a controlled and sterile workspace. If you're in search of the best biosafety cabinet, laminar flow manufacturer in India, your quest ends here. This article delves into the details of a leading manufacturer that excels in providing state-of-the-art solutions, ensuring optimal safety and efficiency.</p>
            <br />
            <br />
            <h2 class="titleheadh2" data-wow-duration="1.3s">Biosafety Cabinet, Laminar Flow Manufacturer in India: Setting Industry Standards</h2>
            <br />

            <p class="text wrap-txt">When it comes to biological safety cabinet and laminar flow hood, choosing a reliable manufacturer is non-negotiable. Our featured manufacturer stands out as an industry leader, dedicated to offering cutting-edge equipment that adheres to the highest safety standards. With a proven track record and a commitment to innovation, they have become the go-to choice for businesses and institutions seeking top-quality solutions.</p>
            <br />
            <br />
            <h2 class="titleheadh2">Expertise and Innovation: The Driving Force</h2>
            <br />

            <p class="text wrap-txt">we're spotlighting a team of experts with a profound understanding of cleanroom technology. Our journey began with a vision to revolutionize workspace safety, and we have consistently achieved this through continuous innovation and a passion for excellence. By seamlessly integrating advanced technology into our biosafety levels , we have managed to stay ahead in an ever-evolving industry. </p>
        </div>
    </div>



    <section id="aboutus" class="about-area pt-70">
        <div class="container">



            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="section-title text-center pb-30">
                        <div class="line m-auto"></div>
                        <h3 class="title">About Us</h3>
                    </div>
                    <!-- section title -->
                </div>
            </div>
            <section id="AboutUS" class="about-area ">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="about-content mt-30 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                            <!-- section title -->
                            <p class="text wrap-txt">
                                WE <b>IMSET</b>  are pioneer manufacturer’s of Biosafety cabinets with LCD Display .
                                We have done more than 1500+ installations for Biosafety Cabinet and more than 200+
                                installations for Covid-19 Labs all over India. We are Manufacturer’s, Distributors 
                                and Service Providers of a vast range of Scientific Equipments like Biosafety Cabinet,
                                IMSET is an CE & ISO 9001:2015 , GMP certified company. We highly appreciate offering 
                                products that provide optimum functionality and are long lasting. Our products are highly 
                                appreciated by the Clients as perfect finishing and accessible to use. We ensure that products 
                                made by us are durable and ensure superior quality and functionality. We have large storing 
                                capacity in our warehouse facility post manufacturing of the products, Moreover our warehouse
                                ensures the safe storage of products
                                till their final dispatch.
  

                            </p>
                            <p class="text wrap-txt">
                                Our company focuses on offering products that are safe and easy to use and offer 
                                efficient performance. Since our commencement, we have believed in the strategy 
                                of offering the quality of product at a reasonable price. A team of well trained 
                                and experienced professionals concentrate hard on maintaining the quality of the products.
                                On completion of production, each product is stringently tested on defined parameters, 
                                in order to deliver the finest quality products at the client’s doorstep.

                            </p>
                        </div>
                        <!-- about content -->
                    </div>
                    <div class="col-lg-6 ">
                        <div class="about-image mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                            <div class="divaboutus">
                                <img src="assets/images/Doctor_covid.jpg" alt="Biosafety cabinets of doctor">
                            </div>

                        </div>
                    </div>

                </div>
            </section>

            <div class="about-shape-1">
                <img src="assets/images/about-shape-1.svg" alt="Biosafety Cabinet shape">
            </div>
        </div>
    </section>

    <div class="container Equimentdiv">
        <div class="divcenter1">
            <br />
            <br />
            <h3 class="subHedtagh3">Product Offerings that Cater to Diverse Needs</h3>
            <br />
            <p class="text wrap-txt">
                One of the remarkable aspects of us is our extensive range of products. We offer an array of
                <a href="biosafety-cabinet-class-II-A2">Biosafety cabinets Class II A2 </a>, 
                <a href="biosafety-cabinet-class-II-B2">Biosafety cabinets Class II B2 </a>,
                
               <a href="biosafety-cabinet-class-III">Biosafety cabinets Class III  </a>and 
                <a href="Vertical-Laminar-Air-Flow-Cabinet">laminar flow  </a>systems tailored to meet the unique requirements of various industries. Whether it's pharmaceuticals Hospitals, Microbiology Laboratories, Oil and Natural Gas Research Companies healthcare, research Institutes and colleges, Pathology labs, Food Industry or manufacturing, our solutions are designed to ensure a controlled environment that minimizes the risk of contamination.
            </p>
            <br />

            <h4 class="subHedtagh4">Unwavering Commitment to Safety</h4>
            <br />
            <p>Safety is the cornerstone of any biosecurity, and imset takes this aspect incredibly seriously. Each product is engineered with meticulous attention to detail, incorporating features that provide an airtight and sterile working environment. From HEPA filters that capture even the tiniest particles to adjustable airflow systems, every element is designed to enhance user safety.</p>
            <p class="text wrap-txt pt-1">Advantages of Choosing the Top bio safety cabinet Manufacturer</p>
            <p class="text wrap-txt">Opting for the products from this reputable manufacturer comes with a multitude of advantages: </p>

            <p class="text wrap-txt mt-1"><strong>Technology :</strong>  Their equipment is equipped with the latest technological advancements, ensuring efficiency and reliability. </p>
            <p class="text wrap-txt"><strong>Customization :</strong> Recognizing that different industries have different needs, they offer customization options to tailor the equipment according to specific requirements.</p>
            <p class="text wrap-txt"><strong>Durability :</strong> ** The manufacturer's commitment to quality means their products are built to last, providing a long-term solution for workspace safety.</p>
            <p class="text wrap-txt"><strong>Expert Support :</strong> From installation to maintenance, their team of experts provides comprehensive support, ensuring seamless integration and operation.</p>
        </div>
    </div>
    <section>
        <div class="container Equimentdiv">
            <div class="divcenter1">
                <h2 class="titlehead" data-wow-duration="1.3s">We Make Equipment For</h2>
            </div>
            <div class="row " style="display: flex; flex-wrap: wrap; padding-top: 20px;">


                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">PHARMACEUTICAL RESEARCH</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">BIOMEDICAL RESEARCH</span>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">ENVIRONMENTAL RESEARCH</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">LIFE SCIENCE RESEARCH</span>
                        </div>
                    </div>
                </div>


                <!-- -->
                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">DIAGNOSTICS & HEALTHCARE</span>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">FOOD & BEVERAGES</span>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">INDUSTRIAL PROCESS</span>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-8 mt-2">
                    <div class="cardtxt">
                        <div class="main-btn wow fadeInRight" data-wow-duration="1.3s" data-wow-delay="0.8s">
                            <span class="small">SCHOOLS & UNIVERSITIES</span>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>


    <div class="container">
        <div class="col-lg-12" style="padding-top: 30px">

            <div>

                <br />
                <br />
                <h4 class="titlehead"><strong>FAQ</strong></h4>
                <br />

            </div>

            <button class="accordion active1" type="button">1. Are biosafety cabinets and laminar flow systems the same?</button>
            <div class="panelacc show">
                <div class="panel-body">
                    <p>
                        While both provide controlled environments, biosafety cabinets are designed to protect the operator, product and the environment, whereas laminar flow systems designed to provide a sterile environment to protect the product.
                    </p>
                </div>
            </div>



            <button class="accordion" type="button">2. Can I customize a biosafety cabinet according to my laboratory's needs?</button>
            <div class="panelacc">
                <div class="panel-body">
                    <p>
                        Absolutely. The featured manufacturer offers customization options to ensure that the equipment aligns perfectly with your workspace requirements.
                    </p>

                </div>

            </div>
            <button class="accordion" type="button">
                3. Can these systems be used in pharmaceutical manufacturing?
            </button>

            <div class="panelacc">
                <div class="panel-body">
                    <p>
                        Certainly. Biosafety cabinets and laminar flow systems are vital in pharmaceutical manufacturing to maintain sterility and product integrity.
                    </p>
                </div>

            </div>



            <div class="row ml-2">
                <a href="FAQ" class="p-2 pl-2 mt-2  btn btn-info">Read more FAQ’s</a>
            </div>

        </div>
    </div>

    <div class="container">
        <div class="col-lg-12" style="padding-top: 40px">
            <p>
                For those across India seeking reliable Biosafety Cabinets, our company stands as a renowned Biosafety Cabinets manufacturer in India. We deliver cutting-edge products that prioritize safety and precision.
            </p>
            <br />
            <p>
                At Imset, our range of other products, including equipments as  <a href="biosafety-cabinet-class-II-A2">Biosafety Cabinet Class II A2 </a>,
                <a href="biosafety-cabinet-class-II-B2">Biosafety Cabinet Class II B2  </a>,
                <a href="biosafety-cabinet-class-III">Biosafety Cabinet Class III  </a>,
                <a href="Vertical-Laminar-Air-Flow-Cabinet">Vertical Laminar Air Flow  </a>,
                <a href="PCR-Workstation">PCR Workstation  </a>,
                 <a href="Polypropylene-Biosafety-Cabinet-Laminar-Air-Flow">Polypropylene Biosafety Cabinet / Laminar Air Flow </a>are undoubtedly a front-runner, ensuring the highest levels of safety and efficiency.
                  We also offer tailored customization options to meet your specific needs, requirements, and necessary specifications.
            </p>
        </div>
    </div>

    <div class="brand-area pt-40">
        <div class="container-fluid">
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
                <!-- brand logo -->
            </div>
        </div>
        <!-- row -->
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
    <!-- container -->
    <div class="pt-40">
        <div class="container">
            <div class="row">
                <%-- <div class="col-md-4 divstyle">
                    <div class="innerdivstyle ">
                        <strong class="star-rating">Three year warranty</strong>
                    </div>
                </div>--%>
                <%--  <div class="col-md-4 divstyle">
                    <div class="innerdivstyle">
                      <%--  <img src="assets/images/WarrantyLogo.jpg" alt="Your Logo" class="logo">--%>

                <%--  <strong class="star-rating">Three year warranty</strong>
                    </div>
                </div>--%>
                <%--  <div class="col-md-4 divstyle">
                    <div class="innerdivstyle">
                        <svg xmlns="http://www.w3.org/2000/svg" height="40" width="40" viewBox="0 0 30 30" class="logo">
                            <!-- Your SVG path data here -->
                            <g>
                                <defs>
                                    <clipPath id="525b0e1e-1b5a-41f1-beaa-b2d6050d20b1">
                                        <path d="M3.387 2.902h23.226V26.13H3.387Zm0 0"></path>
                                    </clipPath>
                                </defs>
                                <path d="M17.078 10.207c0-1.082-.937-1.96-2.094-1.96-1.156 0-2.093.878-2.093 1.96a.362.362 0 1 0 .723 0c0-.684.616-1.238 1.37-1.238.758 0 1.371.554 1.371 1.238 0 .684-.613 1.234-1.37 1.234-.2 0-.364.164-.364.364 0 .203.164.363.363.363.758 0 1.371.555 1.371 1.238 0 .68-.613 1.235-1.37 1.235-.755 0-1.372-.555-1.372-1.235a.36.36 0 0 0-.36-.363.36.36 0 0 0-.362.363c0 1.078.937 1.961 2.093 1.961 1.157 0 2.094-.883 2.094-1.96 0-.66-.348-1.247-.883-1.602.535-.356.883-.938.883-1.598Zm0 0"></path>
                                <g clip-path="url(#525b0e1e-1b5a-41f1-beaa-b2d6050d20b1)">
                                    <path d="m25.734 23.492.852-2.082a.362.362 0 0 0-.336-.5h-2.027v-2.914c0-.566-.368-1.043-.871-1.226.125-.422.21-.86.261-1.301.004-.012.004-.028.004-.04V6.575a.364.364 0 0 0-.23-.34L15.152 2.98a.358.358 0 0 0-.27 0L6.649 6.234a.37.37 0 0 0-.23.34v8.856c0 .011.004.027.004.039.05.441.137.879.262 1.3-.504.184-.868.66-.868 1.227v2.914h-2.03a.357.357 0 0 0-.302.16.373.373 0 0 0-.035.34l.856 2.082-.856 2.086a.374.374 0 0 0 .035.34c.067.102.18.16.301.16h8.18a.87.87 0 0 0 .867-.867v-.883h4.371v.883c0 .477.39.867.871.867h8.176a.363.363 0 0 0 .336-.5ZM7.144 6.82l7.872-3.113L22.89 6.82v8.586a7.167 7.167 0 0 1-.274 1.285H21.54a6.038 6.038 0 0 0 .395-1.582c.003-.011.003-.027.003-.039V8.016a.359.359 0 0 0-.23-.336l-6.555-2.59a.358.358 0 0 0-.27 0L8.329 7.68a.359.359 0 0 0-.23.336v7.054a6.062 6.062 0 0 0 .398 1.621H7.422a6.85 6.85 0 0 1-.277-1.285Zm2.145 9.871a5.338 5.338 0 0 1-.465-1.644V8.266l6.192-2.45 6.199 2.45v6.78a5.456 5.456 0 0 1-.469 1.645Zm-2.75 1.305c0-.32.262-.582.582-.582h15.793c.32 0 .582.262.582.582v5.027a.583.583 0 0 1-.582.579H7.121a.583.583 0 0 1-.582-.579Zm5.566 7.215a.14.14 0 0 1-.14.14h-7.64l.706-1.722a.368.368 0 0 0 0-.274l-.707-1.722h1.492v1.39c0 .72.586 1.305 1.305 1.305h4.984Zm12.903-1.582.703 1.723h-7.637a.143.143 0 0 1-.144-.141v-.883h4.984c.723 0 1.309-.586 1.309-1.305v-1.39h1.488l-.703 1.722a.334.334 0 0 0 0 .274Zm0 0"></path>
                                </g>
                                <path d="M11.277 22.39h1.746a.362.362 0 1 0 0-.722h-1.382v-.797h1.382a.362.362 0 1 0 0-.723h-1.382v-.796h1.382c.2 0 .364-.165.364-.364a.365.365 0 0 0-.364-.363h-1.746a.365.365 0 0 0-.363.363v3.043c0 .2.164.36.363.36Zm0 0"></path>
                                <path d="M8.613 20.566v1.465c0 .2.16.36.364.36.199 0 .359-.16.359-.36v-1.363l1.016-1.473a.363.363 0 0 0-.094-.504.363.363 0 0 0-.504.09l-.742 1.082-.746-1.082a.363.363 0 0 0-.504-.09.363.363 0 0 0-.094.504Zm0 0"></path>
                                <path d="M14.027 22.371a.359.359 0 0 0 .457-.227l.086-.25h1.192l.086.25a.36.36 0 0 0 .457.227.362.362 0 0 0 .23-.457l-.133-.394a.368.368 0 0 0-.062-.18l-.828-2.469c-.11-.316-.582-.316-.688 0l-1.023 3.043a.356.356 0 0 0 .226.457Zm.786-1.2.355-1.046.352 1.047Zm0 0"></path>
                                <path d="M17.363 22.39c.2 0 .36-.16.36-.359v-1.16h.484l.645 1.317a.362.362 0 0 0 .652-.317l-.555-1.133c.36-.187.606-.558.606-.988 0-.621-.504-1.125-1.125-1.125h-1.067a.363.363 0 0 0-.363.363v3.043c0 .2.16.36.363.36Zm.36-3.038h.707c.222 0 .402.175.402.398a.406.406 0 0 1-.402.398h-.707Zm0 0"></path>
                                <path d="M21.2 21.668c-.302 0-.481-.16-.505-.45a.355.355 0 0 0-.386-.331.363.363 0 0 0-.336.386c.05.668.543 1.118 1.226 1.118h.004c.723 0 1.227-.438 1.227-1.063.004-.379-.149-1.039-1.164-1.18-.489-.09-.512-.28-.489-.484.04-.25.336-.328.516-.312.121.007.32.054.324.261.004.2.156.367.367.356.2 0 .36-.168.356-.367-.004-.532-.414-.934-.996-.973-.547-.04-1.184.273-1.285.941-.043.403.043 1.106 1.093 1.293.555.078.555.32.555.465 0 .324-.41.344-.508.34Zm0 0"></path>
                            </g>
                        </svg>
                        <strong class="star-rating">Three year warranty</strong>
                    </div>
                </div>--%>
                <%--  <div class="col-md-4 divstyle ">
                    <div class="customer-review ">
                      
                        <div class="star-rating innerdivstyle">
                            <span class="star">&#9733;</span>
                            <span class="star">&#9733;</span>
                            <span class="star">&#9733;</span>
                            <span class="star">&#9733;</span>
                            <span class="star">&#9733;</span>
                            <span></span>
                            <span><strong style="margin-left: 10px;">Customer Review</strong></span>
                        </div>
                    </div>
                </div>--%>
                <%-- <div class="col-md-3 divstyle">
                    <div class="innerdivstyle">
                        <strong class="star-rating">Free Installation</strong>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
    <div id="particles-1" class="particles"></div>

    <script>

        var acc = document.getElementsByClassName("accordion");
        var panel = document.getElementsByClassName('panelacc');

        for (var i = 0; i < acc.length; i++) {
            acc[i].onclick = function () {
                var setClasses = !this.classList.contains('active1');
                setClass(acc, 'active1', 'remove');
                setClass(panel, 'show', 'remove');

                if (setClasses) {
                    this.classList.toggle("active1");
                    this.nextElementSibling.classList.toggle("show");
                }
            }
        }

        function setClass(els, className, fnName) {
            for (var i = 0; i < els.length; i++) {
                els[i].classList[fnName](className);
            }
        }
        function isNumber(evt) {

            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

        function OpenForm() {

            document.getElementById("ContentPlaceHolder1_sidesuggestion").style.display = "block";
        }

        function dismissForm() {
            document.getElementById("ContentPlaceHolder1_sidesuggestion").style.display = "";
            document.getElementById("ContentPlaceHolder1_sidesuggestion").style.display = "dismiss";
        }

    </script>
    <%--<script>
         //This add for Home page Form onload stop Becouse master page script first add error 
         $(window).on('load', function (event) {

             document.getElementById("ContentPlaceHolder1_sidesuggestion").style.display = "none";
         });
     </script>--%>
</asp:Content>
