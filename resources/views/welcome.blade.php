<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="{{ asset('logo/favicon.png') }}" type="image/x-icon">

    <title>{{ config('app.name') }} | Home</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu+Mono&display=swap" rel="stylesheet">
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/css/bootstrap.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/css/new.css') }}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.5.0-1/css/all.min.css" />
    <!--owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="{{ asset('frontend/css/style.css') }}" rel="stylesheet" />
    <!-- responsive style -->
    <link href="{{ asset('frontend/css/responsive.css') }}" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Shantell+Sans&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600&display=swap" rel="stylesheet">
</head>

<body>
    <div class="hero_area">
        <!-- header section strats -->
        <div class="hero_bg_box">
            <div class="img-box">
                <img src="{{ asset('frontend/images/hero-bg.jpg') }}" alt="">
            </div>
        </div>

        @include('layouts.navbar')
        <!-- end header section -->
        <!-- slider section -->
        <section class=" slider_section ">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-7">
                                    <div class="detail-box">
                                        <h1>
                                            <span style="color:royalblue">IMMIGRATION SERVICES</span> & VISA CONSULTATIONS
                                        </h1>
                                        <p>
                                            Expert guidance and support for navigating the complex world of immigration and visas
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item ">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-7">
                                    <div class="detail-box">
                                        <h1>
                                            <span style="color:skyblue"> Immigration and Permanent </span> Residency Consultants,
                                        </h1>
                                        <p>
                                            Navigating the Complexities of Global Immigration Laws and Regulations
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item ">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-7">
                                    <div class="detail-box">
                                        <h1 style="color:#A7C7E7">
                                            We provide employment opportunities across a range of developed countries
                                        </h1>
                                        <p>
                                            Unlock Your Career Potential with International Job Placements
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container idicator_container">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                </div>
            </div>
        </section>
        <!-- end slider section -->
    </div>

    <section class="wide-60 about-section division" id="about-2" data-scroll_id="about-2">
        <div class="container">

            <div class="row d-flex align-items-center">
                <div class="col-md-6">
                    <div class="about-img about-2-img text-center mb-40">
                        <img decoding="async" class="img-fluid" src="{{ asset('frontend/images/image-05.png') }}" loading="lazy" alt="about-image" loading="lazy" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about-2-txt pc-20 mb-40">
                        <span class='section-id id-color'>About Agency</span>
                        <h3 class='h3-lg'>We provide the best consulting services in the industry since 2009</h3>
                        <div class="box-list">
                            <div class="box-list-icon"><i class="fas fa-genderless"></i></div>
                            <p>Thorough understanding of visa requirements and processes for various countries, ensuring clients have a hassle-free experience when applying for visas.</p>
                        </div>
                        <div class="box-list">
                            <div class="box-list-icon"><i class="fas fa-genderless"></i></div>
                            <p>Personalized guidance and advice to clients on the best visa options based on their specific needs and circumstances, such as study, work, tourism or family visits. </p>
                        </div>
                        <div class="box-list">
                            <div class="box-list-icon"><i class="fas fa-genderless"></i></div>
                            <p>Extensive network of industry contacts and knowledge of job market trends to connect job seekers with the best job opportunities.</p>
                        </div>
                        <div class="box-list">
                            <div class="box-list-icon"><i class="fas fa-genderless"></i></div>
                            <p>Comprehensive career guidance and support, including resume building, interview preparation, and negotiation skills, to help clients achieve their career goals </p>
                        </div>
                    </div>
                </div> <!-- END ABOUT TEXT	-->
            </div> <!-- End row -->
        </div> <!-- End container -->
    </section>


    <!-- service section -->

    <section class="service_section layout_padding">
        <div class="container">
            <div class="heading_container heading_center">
                <h2>
                    Airview Express Immigration Services
                </h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="box ">
                        <div class="img-box">
                            <img src="{{ asset('frontend/images/s1.png') }}" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>
                                Business Immigration
                            </h6>
                            <p>
                                We offers business immigration services to individuals and companies seeking to establish or expand their business ventures in foreign countries. We provi ...
                            </p>
                            {{-- <p>
                                We offers business immigration services to individuals and companies seeking to establish or expand their business ventures in foreign countries. We provide work permits, visas, residency and citizenship applications, and business incorporation services with a personalized and detail-oriented approach. Our team stays up-to-date with the latest immigration laws to deliver accurate and timely advice.
                            </p> --}}
                            <a href="">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box ">
                        <div class="img-box">
                            <img src="{{ asset('frontend/images/s2.png') }}" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>
                                Skilled Immigration
                            </h6>
                            <p>
                                Our company specializes in offering skilled immigration services to highly qualified and talented individuals who wish to immigrate to a new country for employment or entrep ...
                            </p>
                            {{-- <p>
                                Our company specializes in offering skilled immigration services to highly qualified and talented individuals who wish to immigrate to a new country for employment or entrepreneurship. We provide comprehensive assistance throughout the immigration process, helping our clients navigate the complex requirements and procedures involved in relocating to a new country.
                            </p> --}}
                            <a href="">
                                Read More
                            </a>

                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box ">
                        <div class="img-box">
                            <img src="{{ asset('frontend/images/s3.png') }}" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>
                                Tourist & Visitor Visa
                            </h6>
                            <p>
                                Our company offers visitation and tourist visa services to travelers, facilitating their entry into various destinations worldwide.
                            </p>
                            <a href="">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box ">
                        <div class="img-box">
                            <img src="{{ asset('frontend/images/s4.png') }}" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>
                                Education Visa
                            </h6>
                            <p>
                                Education Visa offered by our company allows international students to study in various abroad institutions and obtain a valid visa.
                            </p>
                            <a href="">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box ">
                        <div class="img-box">
                            <img src="{{ asset('frontend/images/s3.png') }}" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>
                                Spouse/Family Visa
                            </h6>
                            <p>
                                Our company provides assistance with obtaining Resident Return Visas, which allow permanent residents to travel in and out of Australia, USA, Canada, UK, Asia for up to 5 years.udents to study in various abroad institutions and obtain a valid visa.
                            </p>
                            <a href="">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box ">
                        <div class="img-box">
                            <img src="{{ asset('frontend/images/s3.png') }}" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>
                                Resident Return Visa
                            </h6>
                            <p>
                                Our company provides assistance with obtaining Resident Return Visas, which allow permanent residents to travel in and out of Australia, USA, Canada, UK, Asia for up to 5 years.udents to study in various abroad institutions and obtain a valid visa.
                            </p>
                            <a href="">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-lightgrey wide-60 about-section division" id="about-5" data-scroll_id="about-5">
        <div class="container">


            <div class="row">
                <div class="col-md-12 section-title">
                    <!-- Title -->
                    <h3 class='h3-lg'>Find a consultant by:</h3>

                </div>
            </div><!-- SECTION TITLE -->


            <div class="row d-flex align-items-center">
                <div class="col-lg-5">
                    <div class="no-vc">
                        <div class="row">

                            <div class="col-sm-6">
                                <div class="about-5-txt mb-40">
                                    <h5 class='h5-lg'>Country:</h5><!-- Title -->

                                    <!-- List -->
                                    <ul class="abox-list">
                                        <li><a href="#"> Canada </a></li>
                                        <li><a href="#"> Australia </a></li>
                                        <li><a href="#"> United Kingdom </a></li>
                                        <li><a href="#"> USA </a></li>
                                        <li><a href="#"> New Zealand </a></li>
                                        <li><a href="#"> South Korea </a></li>

                                    </ul>

                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="about-5-txt mb-40">

                                    <!-- Title -->
                                    <h5 class='h5-lg'>Pratice Area:</h5>
                                    <!-- List -->
                                    <ul class="abox-list">
                                        <li><a href="#">Student Visa</a></li>
                                        <li><a href="../visa/skilled-immigration/index.html">Skilled Work Visa</a></li>
                                        <li><a href="#">Business visa</a></li>
                                        <li><a href="#">Spouse/Family Visa</a></li>
                                        <li><a href="#">Tourist &amp; Visitor Visa</a></li>
                                        <li><a href="#">Immigration Consult</a></li>

                                    </ul>

                                </div>
                            </div>

                        </div>
                    </div>
                </div> <!-- END ABOUT TEXT	-->


                <div class="col-lg-7">
                    <div class="about-5-img text-center mb-40">
                        <img decoding="async" loading="lazy" class="img-fluid" src="{{ asset('frontend/images/world-map.png') }}" loading="lazy" alt="about-image">
                    </div>
                </div><!-- ABOUT IMAGE -->

            </div> <!-- End row -->
        </div> <!-- End container -->
    </section>

    <!-- end service section -->

    <div class="wide-60 bg-image request-form-section division" id="request-1" data-scroll_id="request-1">
        <div class="container">
            <div class="row d-flex align-items-center">


                <div class="col-md-6 col-xl-6">
                    <div class="request-txt white-color pc-20 mb-40">


                        <span class='section-id id-color'>Free 24/7 Support</span><!-- Name -->


                        <h2 class='h2-xs'>Get Free &#038; Quality Online Consultation</h2><!-- Title -->


                        <h5 class='h5-md'>With our online consultation service, you can access our experts from anywhere in the world. We offer flexible scheduling options to accommodate your busy lifestyle, and our consultations are conducted through a secure and easy-to-use platform.</h5><!-- Samll Title -->


                        <p>At our company, we believe that everyone deserves access to quality consultation services, regardless of their budget. That's why we offer free consultations, with no obligation to purchase additional services. We want to help you make informed decisions about your business or personal life, without breaking the bank. </p><!-- Text -->
                        <p>So why wait? Contact us today to schedule your free online consultation with one of our experts. We are committed to providing you with the highest level of service and support, and we look forward to helping you achieve your goals.</p>

                    </div>
                </div> <!-- END REQUEST FORM TEXT -->



                <div class="col-md-6 col-xl-5 offset-xl-1">
                    <!-- REQUEST FORM -->
                    <div role="form" class="wpcf7" id="wpcf7-f317-p275-o1" lang="en-US" dir="ltr">
                        <div class="screen-reader-response">
                            <p role="status" aria-live="polite" aria-atomic="true"></p>
                            <ul></ul>
                        </div>
                    
                            <div id="request-form" class="text-center mb-40">
                                <div class="row request-form bg-lightgrey">
                                    <div class="col-12">
                                        <h5 class="h5-lg text-light">Request Free Consultation</h5>
                                         <h5 class="text-light h4-lg" style="line-height:1.7;color:teal !important">If you don't see your country on the list, please get in touch with the administrator for more details.</h5>
                                    </div>
                                    <div class="col-12">
                                        <div id="error-message"></div>


                                    </div>
                                    <form action="" method="">
                                        @csrf
                                        <div id="input-name" class="col-md-12">
                                            <span class="wpcf7-form-control-wrap" data-name="username">

                                                <input type="text" name="username" value="{{ old('username') }}" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control username" aria-required="true" aria-invalid="false" placeholder="Enter Your Name" />

                                            </span>
                                        </div>

                                        <div id="input-email" class="col-md-12">
                                            <span class="wpcf7-form-control-wrap" data-name="user_email">

                                                <input type="email" name="user_email" value="{{ old('user_email') }}" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email form-control user_email" aria-required="true" aria-invalid="false" placeholder="Enter Your Email" />

                                            </span>
                                        </div>
                                        <div id="input-phone" class="col-md-12">
                                            <span class="wpcf7-form-control-wrap" data-name="user_phone">
                                                <input type="tel" name="user_phone" value="{{ old('user_phone') }}" size="40" class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-tel form-control user_phone" aria-invalid="false" placeholder="Enter Your Phone Number" />

                                            </span>
                                        </div>
                                        <div id="input-visa" class="col-md-12 input-visa">
                                            <span class="wpcf7-form-control-wrap visa">
                                                <select name="visa" class="wpcf7-form-control wpcf7-select wpcf7-validates-as-required custom-select visa" id="inlineFormCustomSelect1">
                                                    <option value="">Select Visa</option>
                                                    <option value="Student Visa">Student Visa</option>
                                                    <option value="Travel visa">Travel visa</option>
                                                    <option value="Working Visa">Working Visa</option>
                                                    <option value="Business Visa">Business Visa</option>
                                                    <option value="Visitor Visa">Visitor Visa</option>
                                                    <option value="PR Visa">PR Visa</option>
                                                </select>
                                            </span>
                                        </div>
                                        <div id="input-country" class="col-md-12 input-country">
                                            <span class="wpcf7-form-control-wrap country">
                                                <select name="country" class="wpcf7-form-control wpcf7-select wpcf7-validates-as-required custom-select country" id="inlineFormCustomSelect2">
                                                    <option value="">Visa For</option>
                                                    <option value="Australia">Australia</option>
                                                    <option value="Canada">Canada</option>
                                                    <option value="United Kingdom">United Kingdom</option>
                                                    <option value="USA">USA</option>
                                                    <option value="Singapore">Singapore</option>
                                                    <option value="Netherlands">Netherlands</option>
                                                </select>
                                            </span>
                                        </div>
                                        <div class="col-md-12 form-btn">
                                            <input type="submit" value="Send Request" class="wpcf7-form-control has-spinner wpcf7-submit btn btn-primary tra-black-hover submit" />

                                            <div class="wpcf7-response-output" aria-hidden="true">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        
                    </div>
                </div> <!-- END REQUEST FORM -->


            </div> <!-- End row -->
        </div> <!-- End container -->
    </div>
    <!-- about section -->

    <section class="about_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 px-0">
                    <div class="img_container">
                        <div class="img-box">
                            <img src="{{ asset('frontend/images/about-img.jpg') }}" alt="" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 px-0">
                    <div class="detail-box">
                        <div class="heading_container ">
                            <h2>
                                Who Are We?
                            </h2>
                        </div>
                        <p>
                            We pride ourselves on delivering exceptional customer service and a commitment to helping our clients achieve their dreams of living and working in their desired destination. Whether you're a recent graduate seeking an international career opportunity or an experienced professional looking for a new challenge, we're here to help you every step of the way.
                        </p>
                        <p>We understand that navigating the visa application process can be overwhelming and time-consuming, which is why we offer personalized guidance to ensure that our clients are able to obtain the necessary documentation to achieve their goals. Our services include visa application assistance, job search support, resume writing and interview coaching, and relocation assistance.</p>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end about section -->

    <!-- country section -->

    <section class="country_section layout_padding">
        <div class="container">
            <div class="heading_container heading_center">
                <h2>
                    Choose Country
                </h2>
                <p>
                    Select country you want to apply visa for
                </p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <a href="" class="box">
                        <img src="{{ asset('frontend/images/c1.jpg') }}" alt="">
                        <div class="detail-box">
                            <h3>
                                France
                            </h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="" class="box">
                        <img src="{{ asset('frontend/images/c2.jpg') }}" alt="">
                        <div class="detail-box">
                            <h3>
                                Canada
                            </h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="" class="box">
                        <img src="{{ asset('frontend/images/c3.jpg') }}" alt="">
                        <div class="detail-box">
                            <h3>
                                United States
                            </h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="" class="box">
                        <img src="{{ asset('frontend/images/c4.jpg') }}" alt="">
                        <div class="detail-box">
                            <h3>
                                New Zealand
                            </h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="" class="box">
                        <img src="{{ asset('frontend/images/c5.jpg') }}" alt="">
                        <div class="detail-box">
                            <h3>
                                Australia
                            </h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="" class="box">
                        <img src="{{ asset('frontend/images/c6.jpg') }}" alt="">
                        <div class="detail-box">
                            <h3>
                                Spain
                            </h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- end country section -->

   
    <!-- client section -->

    <section class="client_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>
                    What Says Our Client
                </h2>
            </div>
            <div class="client_container">
                <div class="carousel-wrap ">
                    <div class="owl-carousel">
                        <div class="item">
                            <div class="box">
                                <div class="img-box">
                                    <img src="{{ asset('frontend/images/client-1.jpg') }}" alt="" class="img-1">
                                </div>
                                <div class="detail-box">
                                    <h5>
                                        Mark Evans
                                    </h5>
                                    <h6>
                                        Magna
                                    </h6>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="box">
                                <div class="img-box">
                                    <img src="{{ asset('frontend/images/client-2.jpg') }}" alt="" class="img-1">
                                </div>
                                <div class="detail-box">
                                    <h5>
                                        Anthony White
                                    </h5>
                                    <h6>
                                        Magna
                                    </h6>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="box">
                                <div class="img-box">
                                    <img src="{{ asset('frontend/images/client-1.jpg') }}" alt="" class="img-1">
                                </div>
                                <div class="detail-box">
                                    <h5>
                                        Mark Evans
                                    </h5>
                                    <h6>
                                        Magna
                                    </h6>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="box">
                                <div class="img-box">
                                    <img src="{{ asset('frontend/images/client-2.jpg') }}" alt="" class="img-1">
                                </div>
                                <div class="detail-box">
                                    <h5>
                                        Anthony White
                                    </h5>
                                    <h6>
                                        Magna
                                    </h6>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end client section -->

    <section class="wide-100 faqs-section division" id="faqs-1" data-scroll_id="faqs-1">
        <div class="container">

            <!-- SECTION TITLE -->
            <div class="row">
                <div class="col-md-12 section-title center">

                    <h2 class='h2-xs'>Have Questions? Look Here</h2><!-- Title -->


                </div>
            </div> <!-- END SECTION TITLE -->

            <!-- QUESTIONS HOLDER -->
            <div id="accordion" role="tablist">
                <div class="row d-flex align-items-center">

                    <div class="col-lg-10 offset-lg-1">

                        <div class="card">

                            <!-- Question -->
                            <div class="card-header" role="tab" id="heading-641770e75bf89">
                                <h5 class="h5-sm darkblue-color">
                                    <a data-toggle="collapse" href="#collapse-641770e75bf8a" role="button" aria-expanded="true" aria-controls="collapse-641770e75bf8a">
                                        <span>1.</span> What is the registration process? </a>
                                </h5>
                            </div>

                            <!-- Answer -->
                            <div id="collapse-641770e75bf8a" class="collapse " role="tabpanel" aria-labelledby="heading-641770e75bf89" data-parent="#accordion">
                                <div class="card-body">

                                    <p>Select the register option in the navigation, submit the required information, and you are good to go.<br />
                                    </p>

                                </div>
                            </div>


                        </div> <!-- END QUESTION -->
                        <div class="card">

                            <!-- Question -->
                            <div class="card-header" role="tab" id="heading-641770e75bf93">
                                <h5 class="h5-sm darkblue-color">
                                    <a data-toggle="collapse" href="#collapse-641770e75bf94" role="button" aria-expanded="true" aria-controls="collapse-641770e75bf94">
                                        <span>3.</span> How can I update or cancel my personal information? </a>
                                </h5>
                            </div>

                            <!-- Answer -->
                            <div id="collapse-641770e75bf94" class="collapse " role="tabpanel" aria-labelledby="heading-641770e75bf93" data-parent="#accordion">
                                <div class="card-body">

                                    <p>Simply login to your dashboard, click on profile and update your details </p>

                                </div>
                            </div>


                        </div> <!-- END QUESTION -->
                        <div class="card">

                            <!-- Question -->
                            <div class="card-header" role="tab" id="heading-641770e75bf9b">
                                <h5 class="h5-sm darkblue-color">
                                    <a data-toggle="collapse" href="#collapse-641770e75bf9c" role="button" aria-expanded="true" aria-controls="collapse-641770e75bf9c">
                                        <span>4.</span> Does your immigration firm offer a money-back guarantee? </a>
                                </h5>
                            </div>

                            <!-- Answer -->
                            <div id="collapse-641770e75bf9c" class="collapse " role="tabpanel" aria-labelledby="heading-641770e75bf9b" data-parent="#accordion">
                                <div class="card-body">

                                    <p>Sure, we have a 2 weeks money back guarantee.</p>

                                </div>
                            </div>


                        </div> <!-- END QUESTION -->


                    </div> <!-- End col-x -->

                </div> <!-- END QUESTIONS HOLDER -->
            </div> <!-- END ACCORDION -->



            <div class="row">
                <div class="col-md-12 text-center more-questions">
                    <h5 class="h5-md">Still have a question? <a href="#" class="darkblue-color">Ask your question here</a></h5>
                </div>
            </div><!-- MORE QUESTIONS BUTTON -->

        </div> <!-- End container -->
    </section>
    <!-- info section -->
    <section class="info_section ">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="info_logo">
                        <a class="navbar-brand" href="index.html">
                            <span>
                                Viseas
                            </span>
                        </a>
                        <p>
                            Dolor sit amet, consectetur magna aliqua. Ut enim ad minim veniam, quisdotempor incididunt r
                        </p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info_links">
                        <h5>
                            Useful Link
                        </h5>
                        <ul>
                            <li>
                                <a href="">
                                    Dolor sit amet, consectetur
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    Magna aliqua. Ut enim ad
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    Minim veniam
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    Quisdotempor incididunt r
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info_info">
                        <h5>
                            Contact Us
                        </h5>
                    </div>
                    <div class="info_contact">
                        <a href="" class="">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <span>
                                Lorem ipsum dolor sit amet,
                            </span>
                        </a>
                        <a href="" class="">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <span>
                                Call : +01 1234567890
                            </span>
                        </a>
                        <a href="" class="">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <span>
                                demo@gmail.com
                            </span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info_form ">
                        <h5>
                            Newsletter
                        </h5>
                        <form action="#">
                            <input type="email" placeholder="Enter your email">
                            <button>
                                Subscribe
                            </button>
                        </form>
                        <div class="social_box">
                            <a href="">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                            </a>
                            <a href="">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                            </a>
                            <a href="">
                                <i class="fa fa-youtube" aria-hidden="true"></i>
                            </a>
                            <a href="">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end info_section -->




    <!-- footer section -->
    <footer class="container-fluid footer_section">
        <p>
            &copy; <span id="displayYear"></span> All Rights Reserved
        </p>
    </footer>
    <!-- footer section -->

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


    <script src="{{ asset('frontend/js/bootstrap.js') }}"></script>
    <!-- owl slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
    </script>
    <script src="{{ asset('frontend/js/custom.js') }}"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        // Then, add an event listener to the form submit button
        const form = document.querySelector('form');
        form.addEventListener('submit', function(e) {
            e.preventDefault(); // prevent the default form submission behavior

            // get the form data
            const formData = new FormData(form);

            // make an AJAX request to the Laravel backend
            $.ajax({
                url: '/consultation-form'
                , type: 'POST'
                , data: formData
                , processData: false
                , contentType: false
                , success: function(response) {
                    // handle the success response
                    console.log(response);
                    if (response.error) {
                        Swal.fire(
                            'Error'
                            , 'All fields are required'
                            , 'warning'
                        );
                        return false;
                    }
                    if (response.success) {
                        Swal.fire(
                            'Success'
                            , 'Your request has been recieved'
                            , 'success'
                        );
                        $('form').trigger("reset");
                    }
                }
            });
        });

    </script>

</body>

</html>
