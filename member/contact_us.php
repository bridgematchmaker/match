<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
$page_menu_name = "Contact us";
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Something There">
        <meta name="author" content="">
        <title>BridgeMatchmaker</title>

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.content.css" rel="stylesheet" type="text/css">

        <link href="assets/css/style.contact.css" rel="stylesheet" type="text/css">
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
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
                                        <input type="hidden" name="user_id" value="<? echo $user_id; ?>">
                                        <div class="form-item">
                                            <input type="text"  name="user_name" placeholder="Name" value="<? echo($first_name." ".$last_name); ?>" >
                                        </div>
                                        <div class="form-item">
                                            <input type="text"  name="email" placeholder="Email" value="<? echo $email_client; ?>" >
                                        </div>
                                        <div class="form-item">
                                            <textarea name="message" placeholder="Message"></textarea>
                                        </div>
                                        <div class="form-item text-right">
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
            </div>
<!-- Main Page Content (end)-->
        </div>
    </div>
</div>

<? require "footer.php";?>

<!-- Site Scripts (start)-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>