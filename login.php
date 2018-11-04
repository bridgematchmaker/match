<?php
error_reporting(0);
include ("./connect.php"); 
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
				<form action="" method="POST">
					<div class="form-group">
						<input type="hidden" name="ref" value="<? echo $_SERVER['HTTP_REFERER']; ?>">
						<input type="email" name="login" class="form-control" id="email" placeholder="Your email">
					</div>
					<div class="form-group">
						
						<input type="password" name="pass" class="form-control" id="pass" placeholder="Your password">
						<a href="./forgot.php">Forgot password?</a>
					</div>
					<button type="submit" class="btn btn-success btn-block">Sign in</button>
				</form>	
			
			<? function draw_form($bad_login = false) 
				{
					if ($bad_login) { echo '<script>alert("Invalid E-Mail or password");</script>'; }
				} 				
			?>
			<!-- CONTENT (end)-->
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
		
<?php
 
//////////Функция проверки авторизации////////////
function check_login($login, $pass) {
	$passwd_md5 = md5($_POST["pass"]);
	$query = "SELECT `user_id`
            FROM `clients`
            WHERE `email_client`='{$_POST["login"]}' AND `password`='{$passwd_md5}'
            LIMIT 1";
	$sql = mysql_query($query) or die(mysql_error());
    return (mysql_num_rows($sql) == 1);
}
/////////////////////////////////////////////////


session_start();


////////////Выход//////////////
if (isset($_GET['logout'])) {
     session_unset();
     session_destroy();
     echo	("
			<script>javascript:window.location='login.php'</script>
		");
     exit(); 
}
//////////////////////////////

// Eсли мы уже авторизированы 
if (!isset($_SESSION['email_client'])) {

     $login = $_POST['login'];
     $pass = $_POST['pass'];

     if (count($_POST) <= 0)
         draw_form();
     else {
         if (check_login($login, $pass))
             $_SESSION['email_client'] = $login;
         else
             draw_form(true);
     }
}

isset($_SESSION['email_client']) or die(); // здесь если функция вернула false то выполняется die()

if (substr_count($_POST['ref'], 'bridgematchmaker.com/member') > 0) {
	$ref = $_POST['ref'];
	echo("<script>javascript:window.location='$ref'</script>");
} else {
	echo("<script>javascript:window.location='./member/index.php#login'</script>");
}

?>