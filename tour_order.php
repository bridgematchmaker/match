<?php

include("./connect.php");

//////////////////////////////Загрузка данных из базы////////////////////////
$zapros_tour = "SELECT * FROM setting_tours";
$requirest_tour = mysql_query($zapros_tour);
while($row_tour = mysql_fetch_array($requirest_tour)) 
	{
		if($row_tour['name'] == "Basic")
		{
			$basic_name = $row_tour['name'];
			$basic_price = $row_tour['price'];
			$basic_description = $row_tour['description'];
		}
		
		if($row_tour['name'] == "Comfort")
		{
			$comfort_name = $row_tour['name'];
			$comfort_price = $row_tour['price'];
			$comfort_description = $row_tour['description'];
        }
        
        if($row_tour['name'] == "Luxe")
		{
			$luxe_name = $row_tour['name'];
			$luxe_price = $row_tour['price'];
			$luxe_description = $row_tour['description'];
		}
	}
//////////////////////////////////////////////////////////////////////////////

?>
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
	<!-- Favicon -->
    <link rel="icon" href="" type="image/png"/>
    
    <!-- Tour Order -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/16.0.2/css/intlTelInput.css" rel="stylesheet" type="text/css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/ion.calendar/2.0.2/css/ion.calendar.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap" rel="stylesheet">
	<link href="assets/css/tour_order.css" rel="stylesheet" type="text/css">


</head>

<body class="page">
<?
require "./header.php";
?>

<section class="section-main-content text-spacing-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-9 col-xl-7">
<!-- CONTENT (start)-->
				<form action="./function/create_tour_order.php" method="POST">
					<div class="section-tour__one">
						<h1>Request for a tour to Ukraine</h1>
						<a href="#" class="link">Click here if you'd like to order tour to another country</a>
						<div class="video-box">
							<img class="play" src="assets/images/icon-play.png" alt="play video">
							<video width="100%" poster="assets/images/tour_video_poster.jpg">
								<source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4">
							</video>
						</div>
					</div>

					<div class="section-tour__two section-tour__gray">
						<p>Do you feel you are ready for a real meeting with a lady? Would you like you first date to be successful and to start a new life full of romance? So, it’s time to take a vocation and come to Ukraine, we’ll be glad to meet you here and provide you with quality service.</p>
						<div class="block__orange">
							<ul class="form__input">
								<li>
									<label for="first_name">First name<span>*</span></label>
									<input type="text" name="first_name" id="first_name" required>
								</li>
								<li>
									<label for="last_name">Last name<span>*</span></label>
									<input type="text" name="last_name" id="last_name" required>
								</li>
								<li>
									<label for="phone">Phone<span>*</span></label>
									<input id="phone" name="phone" type="tel" required>
								</li>
							</ul>
							<ul class="form__radio form__radio__messenger">
								<li>
									<input type="radio" name="messenger_list" value="Viber" id="viber" checked required>
									<label for="viber">Viber</label>
								</li>
								<li>
									<input type="radio" name="messenger_list" value="Telegram" id="telegram">
									<label for="telegram">Telegram</label>
								</li>
								<li>
									<input type="radio" name="messenger_list" value="WhatsApp" id="whatsapp">
									<label for="whatsapp">WhatsApp</label>
								</li>
							</ul>
							<ul class="form__radio form__radio__agree">
								<li>
									<input type="radio" name="agree" id="agree" checked="checked">
									<label for="agree">The information posted here is accuurate and I agree use it to contact with me.</label>
								</li>
							</ul>
						</div>
						<p>BridgeMatchmaker project organize tours to Ukraine for the clients who confirmed their identity, intention to a meeting and  fully agree with the personal mastermaker all the details of your visit by phone or messenger. Tours are organized by representatives of the site in agreement with the client.</p>
						<div class="note">
							<div class="note__text note__img">
								<p>
									<em>- When ordering a tour take into account possible additional costs and be prepared for them.</em>
								</p>
								<p>
									<em>- The client can choose and pay only one package of services and receive it in full manner or refuse the service package without refund.</em>
								</p>
							</div>
							<div class="note__text">
								<p>
									<b><em>Refusal  from the date</em></b> <br>
									<em>The client has the right to refuse from the date not later than for 14 days before the tour. Due to our company always trying to make your search comfortable and organize the service for you in advance, any financial loss that will occur because of the refuse from the tour shall be covered fully by you.</em>
								</p>
							</div>
						</div>
					</div>

					<div class="section-tour__three">
						<h2>Select one of the packages</h2>
						<ul class="form__radio form__radio__city">
							<li>
								<input type="radio" name="city_list" value="Kyiv" id="kyiv" checked required>
								<label for="kyiv">Kyiv</label>
							</li>
							<li>
								<input type="radio" name="city_list" value="Odessa" id="odessa">
								<label for="odessa">Odessa</label>
							</li>
							<li>
								<input type="radio" name="city_list" value="Mykolaiv" id="mykolaiv">
								<label for="mykolaiv">Mykolaiv</label>
							</li>
						</ul>
						<ul class="form__radio__packages">
							<li>
								<input type="radio" name="package_list" id="basic" value="<? echo $basic_price; ?>">
								<label for="basic">
									Basic Package<span class="mini">(3 days/2 nights)</span>
									<span class="btn__toggle"><img src="assets/images/arrow-bottom.png"></span>
									<span class="price"><? echo $basic_price; ?> EUR</span>
								</label>
								<ul class="drop-list">
									<? echo $basic_description; ?>
								</ul>
							</li>
							<li>
								<input type="radio" name="package_list" id="comfort" checked required value="<? echo $comfort_price; ?>">
								<label for="comfort">
									Comfort Package<span class="mini">(5 days/4 nights)</span>
									<span class="btn__toggle"><img src="assets/images/arrow-bottom.png"></span>
									<span class="price"><? echo $comfort_price; ?> EUR</span>
								</label>
								<ul class="drop-list">
									<? echo $comfort_description; ?>
								</ul>
							</li>
							<li>
								<input type="radio" name="package_list" id="luxe" value="<? echo $luxe_price; ?>">
								<label for="luxe">
									Luxe Package<span class="mini">(7 days/6 nights)</span>
									<span class="btn__toggle"><img src="assets/images/arrow-bottom.png"></span>
									<span class="price"><? echo $luxe_price; ?> EUR</span>
								</label>
								<ul class="drop-list">
									<? echo $luxe_description; ?>
								</ul>
							</li>
						</ul>
					</div>

					<div class="section-tour__for section-tour__gray">
						<div class="row">
							<div class="col-md-5">
								<div id="calendar"></div>
								<div id="cal_error"></div>
							</div>
							<div class="col-md-7">
								<ul class="form__radio form__radio__confirm">
									<li>
										<input type="checkbox" name="confirm1" id="confirm1" checked required>
										<label for="confirm1">I confirm that I pay the package consciously and the services will be provided to me in accordance with the rules and the list.</label>
									</li>
									<li>
										<input type="checkbox" name="confirm2" id="confirm2" checked required>
										<label for="confirm2">I confirm that I pay the package consciously and the services will be provided to me in accordance with the rules and the list.</label>
									</li>
								</ul>
								<img src="./assets/images/banner.png" alt="" width="100%">
								<div class="date-visit"> You choose a date to start your visit - <span id="cal_result">May 25, 2020</span></div>
							</div>
						</div>
					</div>

					<div class="section-tour__five">
						<a href="#" class="link">Order additional services</a>
						<div class="row">
							<div class="col-md-4">
								<div class="box">
									<input type="radio" name="payments_list" value="PastaBank" id="pastabank" disabled>
									<label for="pastabank">Pasta
										Bank
										<img src="assets/images/icon-lpb.jpg" alt="">
									</label>
									<h4>PAY WITH YOUR BANK CARD - GET CREDITS IN 30 SECONDS.</h4>
									<p>All the paiments are made online. After your payment is made you will receive notification of the status of the payment to your email address. All transactions are made over a secure SSL connection.</p>
									<img src="assets/images/icon-mmv.png" alt="">
								</div>
							</div>
							<div class="col-md-4">
								<div class="box">
									<input type="radio" name="payments_list" value="multicards" id="multicards" disabled>
									<label for="multicards">
										MultiCards
										<img src="assets/images/icon-mc.jpg" alt="">
									</label>
									<p>MultiCards Internet Billing is a provider of online credit card and debit card processing and payment solutions to many retailers worldwide. Payments are accepted in Euros.</p>
									<img src="assets/images/icon-allc.png" alt="">
								</div>
							</div>
							<div class="col-md-4">
								<div class="box">
									<input type="radio" name="payments_list" value="bitcoin" id="bitcoin" checked required>
									<label for="bitcoin">
										Bitcoin
										<img src="assets/images/icon-bit.jpg" alt="">
									</label>
									<p>Gourl.io is a payment platform where vendors and consumers can transact with each other, backed by the new bitcoin/altcoin payment protocols.</p>
								</div>
								<div class="final-price">
									Final price:
									<span class="regular__price" style="display: none;"><span>1350</span></span>
									<span class="discount__price"><span>1156</span> EUR</span>
								</div>
								<input type="hidden" name="package_name" value="">
								<input type="hidden" name="date" value="">
								<input type="hidden" name="phone_code" value="">
								<input type="submit" value="GO TO PAYMENT">
							</div>
						</div>
					</div>

				</form>
<!-- CONTENT (end)-->
			</div>
		</div>
	</div>
</section>

<? require "footer.php";?>

<!-- Site Scripts (start)-->
<script src="assets/js/core.min.js"></script>
<script src="assets/js/custom.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/16.0.2/js/intlTelInput.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion.calendar/2.0.2/js/moment-with-locales.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion.calendar/2.0.2/js/ion.calendar.min.js"></script>

<script src="assets/js/tour_order.js"></script>

<!-- Site Scripts (end)-->

</body>

</html>