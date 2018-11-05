<?php
include("./connect.php");

$zapros_tarif = "SELECT * FROM request_tour_price";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
            $question1_price = $row_tarif['question1_price'];
            $question2_price = $row_tarif['question2_price'];
            $question3_price = $row_tarif['question3_price'];
            $question4_price = $row_tarif['question4_price'];
            $question5_price = $row_tarif['question5_price'];
            $question6_price = $row_tarif['question6_price'];
            $question7_price = $row_tarif['question7_price'];
            $question8_price = $row_tarif['question8_price'];
            $question9_price = $row_tarif['question9_price'];
            $question10_price = $row_tarif['question10_price'];
            $question11_price = $row_tarif['question11_price'];
            $question12_price = $row_tarif['question12_price'];
            $question13_price = $row_tarif['question13_price'];
    }
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

    <link href="assets/css/request-style.css" rel="stylesheet" type="text/css">
	<!-- Favicon -->
	<link rel="icon" href="" type="image/png"/>

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
                <h4 class="text-accent">
					Request for a tour to Ukraine
				</h4>
				<h6>
					Dear client!
					<br>
						Please choose on this page services which you are interested in  while making your visit to Ukraine.Pay attention, you will be billed for the services only after you put all the necessary checkboxes and press the button  “I confirm the order”. During a day on your email address
					you will receive the bill for purchase.
				</h6>

				<form action="./function/request-tour-end.php" method="post" class="form-content">
					<div class="row">
						<div class="col-lg-4">
							<label for="name1">
								First name <span>*</span>
							</label>
							<input class="form-input" type="text" name="first_name" id="name1" required>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0">
							<label for="name2">
								Last name <span>*</span>
							</label>
							<input class="form-input" type="text" name="last_name" id="name2" required>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0">
							<label for="user-email">
								Email <span>*</span>
							</label>
							<input class="form-input" type="email" name="email" id="user-email" required>
						</div>
						<div class="col-12 mt-5">
							<h6 class="text-accent text-uppercase">
								Safe Trip Groups
							</h6>
							<div class="block-checkbox">
								<div class="block-checkbox-item">
									<h6>
										Accompanying person
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
											<? echo $question1_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question1" value="Yes" id="check1">
										<label for="check1">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Insurance
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question2_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question2" value="Yes" id="check2">
										<label for="check2">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Rent a car during your stay in the country
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question3_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question3" value="Yes" id="check3">
										<label for="check3">
										</label>

									</div>
								</div>
							</div>
						</div>
						<div class="col-12 mt-5">
							<h6 class="text-accent text-uppercase">
								Your comfort
							</h6>
							<div class="block-checkbox">
								<div class="block-checkbox-item">
									<h6>
										Transfer from the airport to the hotel
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question4_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question4" value="Yes" id="check4">
										<label for="check4">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Accommodation at 3 star or 4 star Hotels
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question5_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question5" value="Yes" id="check5">
										<label for="check5">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Booking railway tickets
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question6_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question6" value="Yes" id="check6">
										<label for="check6">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Excursion and sightseeing
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question7_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question7" value="Yes" id="check7">
										<label for="check7">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Entertainment ( cafe, nightclub, concerts, etc)
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question8_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question8" value="Yes" id="check8">
										<label for="check8">
										</label>

									</div>
								</div>
							</div>
						</div>
						<div class="col-12 mt-5">
							<h6 class="text-accent text-uppercase">
								Date services
							</h6>
							<div class="block-checkbox">
								<div class="block-checkbox-item">
									<h6>
										Translator
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question9_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question9" value="Yes" id="check9">
										<label for="check9">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Matchmaker Advice
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question10_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question10" value="Yes" id="check10">
										<label for="check10">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Help in choosing a gift for a lady
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question11_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question11" value="Yes" id="check11">
										<label for="check11">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Unexpected Date
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question12_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question12" value="Yes" id="check12">
										<label for="check12">
										</label>

									</div>
								</div>
								<div class="block-checkbox-item">
									<h6>
										Entertainment during the date with a lady
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
                                        <? echo $question13_price; ?> Cr.
										</h6>
										<input type="checkbox" name="question13" value="Yes" id="check13">
										<label for="check13">
										</label>

									</div>
								</div>
							</div>
						</div>
						<!--<div class="col-12 mt-5">
							<h6 class="text-accent text-uppercase">
								Additional service
							</h6>
							<div class="block-checkbox">
								<div class="block-checkbox-item">
									<h6>
										Individual tour assitance
									</h6>
									<div class="block-right">
										<h6 class="text-accent">
											10 Cr.
										</h6>
										<input type="checkbox" name="question14" value="Yes" id="check14" checked="checked" disabled>
										<label class="lastCheck" for="check14">
										</label>

									</div>
								</div>

							</div>
						</div>!-->
						<div class="col-12 mt-5">
							<div class="media agree-block">
								<div class="align-self-center checkbox-block">
									<label for="agree">
										<input type="checkbox" id="agree">
										<span></span>
									</label>

								</div>
								<div class="media-body ml-3">
									<p class="text-agree">
										By clicking "Confirm the choice" you agree with the <a href="#">Terms and Conditions and License</a>.
									</p>
								</div>
							</div>
						</div>
						<div class="col-12 mt-4 text-center">
							<button class="btn btn-gradient disabled" type="submit"> Confirm the choice</button>
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
<script src="assets/js/customRequest.js"></script>

<!-- Site Scripts (end)-->

</body>

</html>