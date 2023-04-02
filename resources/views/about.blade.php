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
    @include('layouts.navbar')


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

    <div class="container mb-5">
        <div class="row">
            <div class="col-md-6" style="text-align:justify">
                <p>Airview Express is a leading migration and job placement agency that has been helping people since 2009. Our team is dedicated to providing exceptional services to clients who are looking to migrate and find work in the United States.</p>
                <p>Based in New York, USA, we have extensive experience in the migration and employment industries. Our team consists of experienced professionals who are passionate about helping clients achieve their goals. We understand that moving to a new country and finding a job can be a challenging and stressful experience, which is why we offer a comprehensive range of services to support our clients every step of the way.</p>
                <p>Whether you are an individual looking to migrate to the United States or a company seeking to hire skilled workers, we can help. We offer personalized solutions tailored to the specific needs of each client. Our services include visa assistance, job placement, resume writing, interview coaching, and more.</p>
            </div>
            <div class="col-md-6" style="text-align:justify">
                <p>
                    <img src="{{ asset('frontend/images/w2.jpg') }}" style="width:100%;border-radius:12px" class="img-responsive" alt="{{ __('') }}">
                </p>

                <p>At Airview Express, we pride ourselves on our exceptional customer service. Our team is always available to answer questions, provide support, and ensure that our clients have a seamless and stress-free experience. We are committed to providing our clients with the highest level of service and ensuring their satisfaction.

                    If you're looking to migrate to the United States or find a job, look no further than Airview Express. Contact us today to learn more about how we can help you achieve your goals.</p>
            </div>
        </div>
    </div>


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

    <div class="col-md-12">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387193.3060740623!2d-74.25987535778617!3d40.697149395451525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sca!4v1679911779896!5m2!1sen!2sca" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>

    <!-- end about section -->


    @include('layouts.footer')
