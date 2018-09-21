<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="Something There">
	<meta name="author" content="">
	<title>BridgeMatchmaker</title>

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
	<!-- Main Style -->

	<!--Style Content Page-->

	<!-- Bootstrap -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!-- Font Awesome -->
	<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<!-- Owl Carousel -->
	<link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">

	<link href="assets/css/style-main.css" rel="stylesheet" type="text/css">

     <link href="assets/css/style.contact.css" rel="stylesheet" type="text/css">
	<!-- Favicon -->
	<link rel="icon" href="" type="image/png"/>
    <script src='https://www.google.com/recaptcha/api.js'></script>

</head>

<body class="page">
<?
require "./header.php";
?>

<section class="section-main-content text-spacing-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-9 col-xl-7">
<!-- Main Page Content (start)-->
                <div class="row">
                    <div class="col-lg-11">
                        <h2 class="page-title text-gray">
                            Contact Us
                        </h2>

                        <p class="text-gray">
                            Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                        </p>
                        <p class="text-gray">
                            We are glad to get your suggestions for service improvement; also we appreciate any comments and testimonials. Attention. This form does NOT allow you to write a letter to girls site.!!
                        </p>
                        <p class="text-red">
                            *This letter forms, only receives, site administration
                        </p>

                        <div class="box-contact-info">
                            <div class="row">
                                <div class="col-lg-4 order-lg-2">
                                    <ul class="contact-info-list">
                                        <li>
                                            Tingoit Business s.r.o
                                        </li>
                                        <li>
                                            <span>Adress:</span>
                                            855/19 Bilkova, Old Town,
                                            110 00, Prague 1
                                        </li>
                                        <li>
                                            <span>Business registration number:</span>
                                            059 30 481
                                        </li>
                                        <li>
                                            <span>Phones:</span>
                                            +420228886920
                                        </li>
                                        <li>
                                            <a href="mailto:#">support@bridgematchmaker.com</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-8 order-lg-1 mt-4 mt-lg-0">
                                    <form action="./function/send_contact_us.php" method="POST" class="contact-form">
                                        <div class="form-item">
                                            <input type="text"  name="user_name" placeholder="Name" required="required">
                                        </div>
                                        <div class="form-item">
                                            <input type="text"  name="email" placeholder="Email" required="required">
                                        </div>
                                        <div class="form-item">
                                            <textarea name="message" placeholder="Message" required="required"></textarea>
                                        </div>
                                        <div class="form-item text-right">
                                            <div class="g-recaptcha" style="display: inline-block;" data-sitekey="6LfSrWQUAAAAAO-BX1X76vX_LXfgxBsKpoDIyP2Y"></div><hr>
                                            <button type="submit" class="btn btn-gradient">SEND</button>
                                        </div>
                                    </form>
                                    <p class="small text-gray">
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
<!-- Main Page Content (end)-->
			</div>
		</div>
	</div>
</section>

<? require "footer.php";?>

<!-- Site Scripts (start)-->
<script src="assets/js/core.min.js"></script>
<script src="assets/js/custom.js"></script>

<!-- Site Scripts (end)-->

</body>

</html>