<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
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
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/select2.css" rel="stylesheet" type="text/css">
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.services.css" rel="stylesheet" type="text/css">
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
                    <div class="col-lg-12">
                        <h3 class="text-accent ">
                            Our services
                        </h3>

                        <h5>
                            Youre tariff plan:
                            <span class="h4 text-green text-bold ml-1 mr-1">
                                <? echo $status_tarif_print; ?>
                            </span>
                            <span class="text-gray">
                                (<? echo $data_print; ?> day)
                            </span>
                        </h5>
                        <form  class="mt-4 form-service" action="./function/payment_create.php" method="post">
                            <div class="row">
                                <div class="col-12">
                                    <p class="h4 text-sbold">
                                        Purchse of service packages
                                    </p>
                                </div>
                                <div class="col-lg-8 mt-3">
                                    <div class="accordion service-accordion" >
                                        <div class="card card-blue">
                                            <div class="card-header" id="headingOne">
                                                <h5 class="mb-0">
                                                    <label for="radio1">
                                                        <input class="input-service" type="radio" id="radio1" name="service" value="silver" checked>
                                                        <span></span>
                                                    </label>
                                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#form1" aria-expanded="true" aria-controls="form1">
                                                        <span class="big">SILVER</span> package (for <? echo $silver_day; ?> days)
                                                        <span class="price"><? echo $silver_price; ?>$</span>
                                                    </button>
                                                </h5>
                                            </div>

                                            <div id="form1" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                <div class="card-body">
                                                   <? echo $silver_description; ?>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card card-brown">
                                            <div class="card-header" id="headingTwo">
                                                <h5 class="mb-0">
                                                    <label for="radio2">
                                                        <input class="input-service" type="radio" id="radio2" name="service" value="gold">
                                                        <span></span>
                                                    </label>
                                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#form2" aria-expanded="false" aria-controls="form3">
                                                        <span class="big">GOLD</span> package (for <? echo $gold_day; ?> days)
                                                        <span class="price"><? echo $gold_price; ?>$</span>
                                                    </button>
                                                </h5>
                                            </div>
                                            <div id="form2" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <? echo $gold_description; ?>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card card-red">
                                            <div class="card-header" id="headingThree">
                                                <h5 class="mb-0">
                                                    <label for="radio3">
                                                        <input class="input-service" type="radio" id="radio3" name="service" value="premium">
                                                        <span></span>
                                                    </label>
                                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#form3" aria-expanded="false" aria-controls="form3">
                                                        <span class="big">PREMIUM</span>
                                                        package
                                                        (for <? echo $premium_day; ?> days)
                                                        <span class="price"><? echo $premium_price; ?>$</span>
                                                    </button>
                                                </h5>
                                            </div>
                                            <div id="form3" class="collapse show" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <? echo $premium_description; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 mt-3">
                                    <div class="pay-block-list">
                                        <div class="pay-block block-1 block-focus">
                                            <div class="pay-block-header">
                                                <label for="pay1">
                                                    <input type="radio" name="pay" id="pay1" value="pastabank" checked>
                                                    Pasta Bank
                                                    <span></span>
                                                </label>
                                            </div>
                                            <div class="pay-block-body ">
                                                <p>
                                                <span>
                                                    PAY WITH YOUR BANK CARD - GET CREDITS IN 30 SECONDS.
                                                </span>
                                                    All the paiments are made online. After your payment is made you will receive notification of the status of the payment to your email address. All transactions are made over a secure SSL connection.
                                                </p>
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><img src="assets/images/p-1-1.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-1-2.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-1-3.jpg" alt=""></li>
                                                </ul>
                                            </div>

                                        </div>
                                        <div class="pay-block block-2">
                                            <div class="pay-block-header">
                                                <label for="pay2">
                                                    <input type="radio" name="pay" id="pay2" disabled="disabled">
                                                    MultiCards
                                                    <span></span>
                                                </label>
                                            </div>
                                            <div class="pay-block-body ">
                                                <p>
                                                    MultiCards Internet Billing is a provider of online credit card and debit card processing and payment solutions to many retailers worldwide. Payments are accepted in Euros.
                                                </p>
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><img src="assets/images/p-1-3.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-2-6.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-2-7.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-2-5.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-2-1.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-2-4.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-2-3.jpg" alt=""></li>
                                                    <li class="list-inline-item"><img src="assets/images/p-2-2.jpg" alt=""></li>
                                                </ul>
                                            </div>

                                        </div>
                                        <div class="pay-block block-3">
                                            <div class="pay-block-header">
                                                <label for="pay3">
                                                    <input type="radio" name="pay" id="pay3" disabled="disabled" >
                                                    Bitcoin
                                                    <span></span>
                                                </label>
                                            </div>
                                            <div class="pay-block-body ">
                                                <p>
                                                    Gourl.io is a payment platform where vendors and consumers can transact with each other, backed by the new bitcoin/altcoin payment protocols.
                                                </p>

                                            </div>

                                        </div>
                                    </div>
                                    <br>
                                    <button class="btn btn-gradient form-button">Go to payment</button>
                                </div>
                                <div class="col-12 mt-3">
                                    <p class="notification-text">
                                        <span>Notification. </span>
                                        Making a choice of the tariff plan on this page you confirm that you agree and understand all the conditions on which this tariff plan is provided to you and also fully agree with its validity period. The services of the tariff plan will be suspended to you in independence that there is end the term of its validity or the number of services in the package. More information about the service and its providing you can
                                        <a href="#">read on this page...</a>
                                    </p>
                                </div>
                            </div>
                        </form>
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
    <script src="assets/js/select2.min.js"></script>
    <script src="assets/js/select2.js"></script>
    <script src="assets/js/jquery.mousewheel.min.js"></script>
    <script src="assets/js/jquery.mousewheel-3.0.6.min.js"></script>
    <script src="assets/js/jquery.mCustomScrollbar.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/customService.js"></script>

<!-- Site Scripts (end)-->

</body>

</html>
