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

</head>

<body class="page">
<?
require "./header.php";
?>

<section class="section-main-content text-spacing-25">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-7 col-xl-5">
					<br><br>
					<form action="./function/fargot_password.php" method="POST">
						<div class="form-group">
							<input type="email" name="email" class="form-control"  placeholder="Your E-Mail">
						</div>
						<div class="g-recaptcha" style="display: inline-block;" data-sitekey="6LfSrWQUAAAAAO-BX1X76vX_LXfgxBsKpoDIyP2Y"></div><br>
						<button type="submit" class="btn btn-success btn-block">Reset password</button>
					</form>
				</div>
		</div>
	</div>
</section>

<? require "footer.php";?>

				

<!-- Site Scripts (start)-->
<script src="assets/js/core.min.js"></script>
<script src="assets/js/custom.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>

<!-- Site Scripts (end)-->

</body>

</html>
		