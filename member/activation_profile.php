<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
$page_menu_name = "Activation_profile";
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
		<!-- Custom Style -->
		<link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.content.css" rel="stylesheet" type="text/css">
		
		<link rel="stylesheet" type="text/css" href="assets/css/style_activation_code.css">
		
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
			<!-- Main Page Content (start)-->
             <div class="main-content col-md-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="row">
							<div class="col-lg-2 col-md-2 hidden-sm hidden-xs"></div>
							<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 activated_text">
								<p>Thank you for your registration!</p><br>
								<p>According the rules of our website on your email address <span><? echo $_SESSION['email_client']; ?></span>
									was sent a letter with unique link and activation code.<br />
									Please open your mailbox and follow the link specified in the letter and enter activation code in this field  and press the button <span>Activate</span>
								</p><br>
							</div>
							<div class="col-lg-2 col-md-2 hidden-sm hidden-xs"></div>
						</div>
						<form action="../activation.php" method="GET" id="form">
							<input type="hidden" name="id" value="<? echo $user_id; ?>">
							<div class="row">
								<div class="col-lg-2 col-md-2 hidden-sm hidden-xs"></div>
								<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 code_active">
								   <div class="row">
									   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"><p><label for="code">Profile activation code</label></p></div>
									   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"><input type="text" name="key" id="code"></div><button class="button" type="submit" form="form">Activate</button></div>
								   </div>
								<div class="col-lg-2 col-md-2 hidden-sm hidden-xs"></div>
							</div>
						</form> 
					</div>
	
					<div class="row">
						<div class="col-lg-2 col-md-2 hidden-sm hidden-xs"></div>
						<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 activated_text2">
							<br><br>
							<p>Pay attention that a letter can appear in spam folder your mailbox. In this case we recommend to press this is not spam to get further notifications from us.<br /><br> 

								Also pay attention that our website provide <span>Individual</span> services. It means our website will cooperate with you  and your communication is the most important criteria of success. <br /><br />

								Therefore, your contacts are so important for us.<br /><br />

								If you didn’t get a letter with unique  link please write us<br /> <a href="mailto:admin@matchmaker.com">admin@matchmaker.com</a>

							</p><br>
						</div>
						<div class="col-lg-2 col-md-2 hidden-sm hidden-xs"></div>
					</div>
				</div> 
            </div>
			<!-- Main Page Content (end)-->
        </div>
    </div>
</div>

<? require "./footer.php"; ?>

<!-- Site Scripts (start)-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>