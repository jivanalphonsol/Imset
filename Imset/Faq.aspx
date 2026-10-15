<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Faq.aspx.cs" Inherits="Imset.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <style>
        p {
            font-family: "Lato", sans-serif;
            font-weight: normal;
            font-style: normal;
            color: #6A6972;
            overflow-x: hidden;
        }

        .card-header {
            border-radius: 5px !important;
        }
    </style>
    <style>
        /* Style the buttons that are used to open and close the accordion panel */
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

        img {
            width: 100%;
            height: 100%;
        }

        #accordion ul li:first-child div {
            display: block;
            border-top: 3px solid #FFCDCD;
        }

        .subpanel {
            border: 1px solid;
            border-color: #e8edf1;
            border-radius: 5px;
        }

        .panel-body {
            padding-right: 15px;
            padding-bottom: 15px;
            padding-left: 15px;
            margin: auto;
        }

        hr {
            margin-top: 1rem;
            margin-bottom: 1rem;
            border: 0;
            border-top: 1px solid rgba(0,0,0,.9);
        }

        body {
            font-family: sans-serif;
            font-weight: normal;
            font-style: normal;
            color: #6A6972;
            overflow-x: hidden;
        }

        .Titletxt p {
            text-align: justify;
            font-family: sans-serif;
        }

        img {
            width: 100px;
            aspect-ratio: auto 100 / 80;
            height: 80px;
        }

        .panel-body p {
            font-family: sans-serif;
        }

        .dropdown-menu {
            padding: 4px 10px;
        }
    </style>
    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [{
    "@type": "Question",
    "name": "What is a biosafety cabinet and what is its purpose?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "A biosafety cabinet, often referred to as a BSC, is a specialized laboratory equipment designed to provide both protection to the operator and a sterile environment for working with hazardous microorganisms. Its primary purpose is to prevent the release of harmful agents into the surrounding environment and to maintain the integrity of the experiments conducted within it."
    }
  },{
    "@type": "Question",
    "name": "What are the different classes of biosafety cabinets and their features?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "Biosafety cabinets are classified into three main categories based on their design, functionality, and level of containment. These classes are determined by various international standards, such as the NSF/ANSI 49 and EN 12469. 
Class I: Provides personnel and environmental protection, with unrecirculated airflow that protects the operator from inhaling harmful substances.

Class II: Offers personnel, environmental, and product protection. It has different types (Type A1, A2, B1, B2) with varying airflow patterns and exhaust systems.

Class III: Provides the highest level of containment. Operators work through glove ports in a sealed enclosure, and all exhaust air is filtered through high-efficiency particulate air (HEPA) filters."
    }
  },{
    "@type": "Question",
    "name": "How does a biosafety cabinet ensure operator and environmental safety?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "Biosafety cabinets incorporate several design features and safety mechanisms to ensure the protection of both the operator and the environment by using HEPA Filters, Airflow Monitoring, Personnel Protection"
    }
  },{
    "@type": "Question",
    "name": "What are the best practices for using a biosafety cabinet?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "Proper utilization of a biosafety cabinet is crucial for upholding a secure operational setting and ensuring consistent outcomes in experiments."
    }
  },{
    "@type": "Question",
    "name": "How do I choose the right biosafety cabinet for my needs?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "Selecting the appropriate biosafety cabinet requires careful consideration of factors such as
types of materials being handled
the level of protection needed
the specific laboratory procedures
Evaluate the required features such as airflow velocity, noise level, and ergonomic design"
    }
  },{
    "@type": "Question",
    "name": "What are the initial steps for installing a biosafety cabinet?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "Proper site selection and preparation are essential for the installation process.
Consulting biosafety experts ensures you choose the right cabinet for your needs.
Adhering to safety regulations is vital for maintaining a safe working environment."
    }
  },{
    "@type": "Question",
    "name": "What safety precautions should be taken during biosafety cabinet installation?",
    "acceptedAnswer": {
      "@type": "Answer",
      "text": "Wearing PPE is essential to reduce the risk of exposure during installation.
Unobstructed airflow and careful material handling maintain the cabinet's safety."
    }
  }]
}
    </script>
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
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container-fluid">
        <div class="col-lg-12" style="padding-top: 30px">
            <div class="Titletxt">
                <p>
                    Biosafety cabinets are essential equipment in laboratories working with hazardous microorganisms. They provide a controlled environment that ensures the safety of operators, products  and the surrounding environment. By adhering to proper usage practices, maintenance procedures, and containment levels, researchers can effectively utilize biosafety cabinets while maintaining a high level of safety and experimental integrity.
                </p>
            </div>
            <div>

                <hr />
                <p style="color: black"><strong>Find quick answers to your questions below or call us at   <a href="tel:+91 9320059699" style="color: black">+91 9320059699</a></strong></p>
                <br />
                <p style="color: black"><strong>FAQ</strong></p>

            </div>

            <button class="accordion active1" type="button">1. What is a biosafety cabinet and what is its purpose?</button>
            <div class="panelacc show">
                <div class="panel-body">
                    <p>
                        A biosafety cabinet, often referred to as a BSC, is a specialized laboratory equipment designed to provide protection to the product,  operator and a sterile environment for working with hazardous microorganisms. Its primary purpose is to prevent the release of harmful agents into the surrounding environment and to maintain the integrity of the experiments conducted within it.
                    </p>
                </div>
            </div>

            <button class="accordion" type="button">2. What are the different classes of biosafety cabinets and their features?</button>
            <div class="panelacc">
                <div class="panel-body">
                    <p>
                        Biosafety cabinets are classified into two main categories based on their design, functionality, and level of containment. 
                    </p>
                    <br />
                    <p>
                        Class II: Offers personnel, environmental, and product protection. It has different types (Type A1, A2, B1, B2) with varying airflow patterns and exhaust systems.
                    </p>
                    <p>
                        Class III: Provides the highest level of containment. Operators work through glove ports in a sealed enclosure, and all exhaust air is filtered through high-efficiency particulate air (HEPA) filters.

                    </p>
                </div>
            </div>

            <button class="accordion" type="button">3. How does a biosafety cabinet ensure operator and environmental safety?</button>
            <div class="panelacc">
                <div class="panel-body">
                    <p>
                        Biosafety cabinets incorporate several design features and safety mechanisms to ensure the protection of  the operator, product and the environment by using HEPA Filters, Airflow Monitoring, Personnel Protection
                    </p>

                </div>

            </div>

            <button class="accordion" type="button">
                4. What are the best practices for using a biosafety cabinet?
            </button>

            <div class="panelacc">
                <div class="panel-body">

                    <p>
                        Proper utilization of a biosafety cabinet is crucial for upholding a secure operational setting and ensuring consistent outcomes in experiments.
                    </p>
                </div>
            </div>

            <button class="accordion" type="button">
                5. Can biosafety cabinets be used for all types of experiments?
            </button>

            <div class="panelacc">
                <div class="panel-body">
                    <p>
                        While biosafety cabinets are versatile tools, they may not be suitable for all types of experiments such as Risk Assessment, Compatibility,Alternative Measures etc. The level of containment required depends on the nature of the materials being handled.
                    </p>

                </div>

            </div>

            <button class="accordion" type="button">
                6. How do I choose the right biosafety cabinet for my needs?
            </button>

            <div class="panelacc">
                <div class="panel-body">
                    <p>Selecting the appropriate biosafety cabinet requires careful consideration of factors such as</p>
                    <p>a . types of materials being handled</p>
                    <p>b . the level of protection needed</p>
                    <p>c . the specific laboratory procedures</p>
                    <p>d . Evaluate the required features such as airflow velocity, noise level, and ergonomic design</p>

                </div>

            </div>

            <button class="accordion" type="button">
                7. What are the initial steps for installing a biosafety cabinet?
            </button>

            <div class="panelacc">
                <div class="panel-body">

                    <p>Proper site selection and preparation are essential for the installation process.</p>
                    <p>Consulting biosafety experts ensures you choose the right cabinet for your needs.</p>
                    <p>Adhering to safety regulations is vital for maintaining a safe working environment.</p>

                </div>

            </div>

            <button class="accordion" type="button">
                8.  How do I validate the performance of a newly installed biosafety cabinet?
            </button>

            <div class="panelacc">
                <div class="panel-body">
                    <p>Smoke tests and velocity measurements verify proper airflow patterns.</p>
                    <p>HEPA filter tests confirm the effectiveness of containment measures.</p>

                </div>

            </div>

            <button class="accordion" type="button">
                9. What safety precautions should be taken during biosafety cabinet installation?
            </button>

            <div class="panelacc">
                <div class="panel-body">
                    <p>Wearing PPE is essential to reduce the risk of exposure during installation.</p>
                    <p>Unobstructed airflow and careful material handling maintain the cabinet's safety.</p>

                </div>

            </div>
              <button class="accordion" type="button">10.What is the importance of HEPA filters in these systems?</button>
            <div class="panelacc">
                <div class="panel-body">
                    <p>
                        HEPA (High Efficiency Particulate Air) filters are crucial as they trap airborne particles, preventing contamination and ensuring a sterile environment.
                    </p>


                </div>
            </div>
              <button class="accordion" type="button">
                    11. How often should the filters be replaced?
                </button>

                <div class="panelacc">
                    <div class="panel-body">

                        <p>
                            Filter replacement frequency depends on usage and the nature of operations. However, regular inspections are recommended to ensure optimal performance.
                        </p>
                    </div>
                </div>
              <button class="accordion" type="button">
                    12.  What certifications should I look for when choosing such equipment?

                </button>

                <div class="panelacc">
                    <div class="panel-body">
                        <p>
                            Look for certifications such as GMP, CE and ISO, as they indicate compliance with industry standards and regulations.
                        </p>

                    </div>

                </div>
           </div>
    </div>

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
    </script>
</asp:Content>
