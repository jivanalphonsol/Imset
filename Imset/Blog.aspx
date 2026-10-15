<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Imset.Block" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>nlock Insights: Explore Our Blog | Imset</title>
    <meta name="description" content="Explore our informative and engaging blog for expert insights, tips, and trends. Stay updated with our latest articles. Dive into our blog today!">
    <link href="assets/css/SliderImages.css" rel="stylesheet" />
    <style>
        .centered-text {
            display: flex; /* Use Flexbox for positioning */
            justify-content: center; /* Horizontally center */
            align-items: center; /* Vertically center */
            height: 50vh; /* Set the height to the full viewport height */
            text-align: center; /* Center the text horizontally */
            color: white;
        }

        .btn {
            background-color: orange;
            color: white;
        }

        .cardtxt {
            background: #F0F0F0;
            padding: 20px;
            height: 350px;
            width: auto;
        }

        h1 a {
            color: black;
        }

        .Hedtag {
            font-size: 28px;
            font-weight: 500;
            /*   // text-align: left;*/
        }


        .cardtxt a {
            color: black;
        }

            .cardtxt a:hover {
                color: blue;
            }

        .subHedtag {
            font-size: 20px;
            font-weight: 500;
            text-align: left;
            padding-top: 3px;
        }

        .para {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }

        /*  .textt {
            position: absolute;
            top: 25%;
            left: 8%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            padding: 10px;
            background-color: orange;
        }*/

        .dropdown-menu {
            padding: 4px 10px;
        }

        .wrap-txt {
            text-align: justify;
        }

        .Underlinedecorate {
            text-decoration: underline;
            text-decoration-color: orange;
            text-underline-offset: 7px;
            text-decoration-thickness: 3px;
        }

        .divbtn {
            position: absolute;
            bottom: 4%;
            left: 40%;
        }

        .card-img-top {
            width: 100%;
            height: 20vw;
            padding: 5px;
            object-fit: cover;
            justify-content: center;
            align-items: center;
        }

        @media (max-width: 768px) {
            /* Default styles for larger screens */
            .single-team {
                display: flex;
                flex-direction: row;
                justify-content: center;
                align-items: center;
            }

            .team-image {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            /* Media query for screens smaller than 768px (adjust the breakpoint as needed) */
            @media (max-width: 500px) {
                .single-team {
                    flex-direction: column; /* Stack elements vertically on smaller screens */
                }

                .team-image {
                    margin-bottom: 20px; /* Add some spacing between the image and text */
                    text-align: center; /* Center-align text on smaller screens */
                }

                .cardtxt {
                    text-align: center; /* Center-align text on smaller screens */
                }
            }




            body {
                background-color: #f2f2f2;
                font-family: 'Karla', Arial, sans-serif;


        {
            box-sizing: border-box;
        }

        }

        h2 {
            font-size: 18px;
            font-weight: bold;
        }

        small {
            font-size: 14px;
        }

        .pull {
            float: left;
        }

        .push {
            float: right;
        }

        .container {
            width: 100%;
            max-width: 960px;
            margin: 100px auto;
        }

        img {
            width: 100%;
            display: block;
        }

        /*Card Styling*/

        .card {
            border: 1px solid #dedede;
            background-color: white;
            &__wrap

        {
            &--inner

        {
            padding: 12px;
        }

        }

        &__item {
            padding: 12px 18px 12px 18px;
        }

        &__sub {
            padding: 0 18px;
        }

        &__footer {
            padding: 18px;
            overflow: hidden;
            border-top: 1px solid #dedede;
        }

        }

        /*Card Flex Code*/

        .card {
            display: flex;
            flex-direction: column;
            width: 100%;
            &__wrap

        {
            &--outer

        {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            width: 100%;
        }

        &--inner {
            display: flex;
            flex-direction: row;
            width: 100%;

            @media (min-width: 480px) {
                width: 50%;
            }

            @media (min-width: 1024px) {
                width: 33.33%;
            }
        }

        }
        }

        .flexible {
            flex-grow: 1;
        }
    </style>
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-186965253-1">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
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
         
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />

    <div id="home" class="header-hero bg_cover" style="background-image: url(assets/images/banner-bg.svg)">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="header-hero-content text-center">
                        <h3 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">Blog</h3>
                        <%-- <p class="text m-0 wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.8s">satisfaction is our success to a</p>
                                    <h2 class="header-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.5s">Milestone</h2>--%>
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





    <div class="container">
        <div class="row justify-content-center">
            <asp:Repeater ID="BlogRepeater" runat="server">
                <ItemTemplate>
                 
                        <div class="col-md-5">
                        <div class="container">
                            <div class="card__wrap--outer">
                                <div class="card__wrap--inner">
                                    <div class="single-team  mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                                        <div class="card">
                                            <a href='<%# "DBlog.aspx?id=" + Eval("Blog_id") %>'>
                                                <img src='<%# Eval("ImagePath") %>' alt="BIOSAFETY CABINET Manufacture by Imset" />

                                            </a>
                                            <div class=" cardtxt">
                                                <div class="card__item">
                                                    <h1 class="Hedtag"><a href='<%# "DBlog.aspx?id=" + Eval("Blog_id") %>'><%# Eval("Title") %></a></h1>
                                                </div>
                                                <div class="card__sub">
                                                    <p style="text-align: left; padding-top: 10px; color: black;">
                                                        <bold><span class="Underlinedecorate"><%# Eval("MonthName") %></span> <%# Eval("Day") %>,<%# Eval("Year") %></bold>
                                                    </p>
                                                </div>
                                                <div class="card__item flexible">
                                                    <h2 class="subHedtag para wrap-txt"><%# Eval("Description") %></h2>

                                                </div>

                                                <div class="card__footer">
                                                    <div class="text-center">

                                                        <a href='<%# "DBlog.aspx?id=" + Eval("Blog_id") %>' class="p-1 btn">Read More</a>
                                                    </div>

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


          
        </div>
    </div>
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
</asp:Content>
