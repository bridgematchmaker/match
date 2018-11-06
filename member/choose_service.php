<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
$page_menu_name = "Select service";
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
		
		<link rel="stylesheet" type="text/css" href="assets/css/style.choose.service.css">
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
			
				</div>
				<div class="row">
					<div class="col-lg-1 col-md-1 hidden-sm hidden-xs"></div>
					<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 activated_text">
						<p>Thank you! Your account is fully activated.</p><br>
						<p>Dear client!<br /><br />
							We offer you  to <span>choose one of two service packages</span>. Their comparison you can see in table  below.<br />
							Pay attention, you have alternative in your choice. You always can come back to this page and change your settings.<br /><br />
							We fully rely on your conscious choice and welcome any of your decisions.
						</p><br>
					</div>
					<div class="col-lg-1 col-md-1 hidden-sm hidden-xs"></div>
				</div>
				<form action="./function/service_set.php" method="post" id="form">
				<input type="hidden" name="user_id" value="<? echo $user_id; ?>">
				<div class="row">
					<div class="col-lg-1 col-md-1 hidden-sm hidden-xs"></div>
					<div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 bridge_of_love" id="bridge">
						<label for="check1">
						<img src="assets/images/bridgeoflove_img.png" alt="">
						<ul>
							<li id="li1"><span>
								Service of independent search for relationships, new communication and acquaintances, flirting, without obligatory payments.</span>
							</li><br />
							<li id="li2"><span>
								The success of the search depends only on you, on the basis of the service and your intuition and your time. <br />Communication only with real ladies whose profiles checked based on information from marriage agencies.</span>
							</li><br /><br />
							<li id="li3"><span>
								Choosing Bridge-of-Love you get access to the gallery of ladies from different cities of Ukraine and other countries.</span>
							</li><br />
							<li id="li4"><span>
								You can send an email to any lady on our website. And also chat with her online and have video chat.</span>
							</li><br />
							<li id="li5"><span>
								Even at a distance you can please your lady by ordering on our website one of the offered gifts.</span>
							</li><br />
							<li id="li6"><span>
								The organization of real meetings takes place personally with the lady directly.</span>
							</li><br />
							<li id="li7"><span>
								You can also go to the Intention to dating section and we will be able to help you organize your meeting with the chosen lady.</span>
							</li><br />
							<li id="li8"><span>
								Check the box if you know the lady(or ladies) with whom you want to meet) and also if you do not need any of our help at any stage of communication.</span>
							</li><br />
						</ul>
						<input id="check1" type="radio" name="check" value="2" <? if($service == "2") { echo("checked"); } ?>/><span class="radio-custom" id="radio1"></span>
						</label>    
					</div>
					
					<div class="col-lg-5 col-md-5 col-sm-6 col-xs-6 bridge_of_love_match" id="bridge_match">
						<label for="check2">
							<img src="assets/images/bridgematchmaker_img.png" alt="">
							<ul>
								<li id="l1"><span>
									Service where the search for candidates is carried out according to the criteria stated by you personally and professional matchmakers. </span>
								</li><br />
								<li id="l2"><span>
									Registering on the Bridge Matchmaker in your gallery will appear ladies who match your search criteria. You have the right to write a letter, take the lady’s attention or refuse it.
									You can send an email to any lady on our website. And also chat with her online and have video chat.</span>
								</li><br />
								<li id="l3"><span>
									Choosing BridgeMatchmaker you can use any package of services for communication offered on the website</span>
								</li><br />
								<li id="l4"><span>
									You can send an email to any lady on our website. And also chat with her online and have video chat.</span>
								</li><br />
								<li id="l5"><span>
									Service packages include many different services that can make your search faster and more efficient</span>
								</li><br />
								<li id="l6"><span>
									Full organization of a real meeting for you and your lady  according mutual interest.</span>
								</li><br />
								<li id="l7"><span>
									Help a professional matchmaker allows you to make a choice and achieve the goal that you want.</span>
								</li><br /><br />
								<li id="l8"><span>
									Check the box if you have not decided on the ladyl yet, you need help and new services to achieve the result that you designate yourself.</span>
								</li><br />
							</ul>
							<input id="check2" type="radio" name="check" value="1" <? if($service == "1") { echo("checked"); } ?>/><span class="radio-custom" id="radio2"></span>
						</label>
					</div>
					
					<div class="col-lg-1 col-md-1 hidden-sm hidden-xs"></div>
					<div class="row">
						<div class="col-lg-1 col-md-1 hidden-sm hidden-xs"></div>
                        <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
							<p class="fotter_text">The service chosen by me completely corresponds to my desire.<br />
								I understand and admit that the service I have chosen works exclusively by website rules.
							</p>
							<button class="button" type="submit" form="form">I AGREE</button>
							<p id="choice">*You are at the stage of choosing our services. Please make your choice!</p>
						</div>
						<div class="col-lg-1 col-md-1 hidden-sm hidden-xs"></div>
					</div>       
				</div>
                </form>
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
	<script src="assets/js/choose.service.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>