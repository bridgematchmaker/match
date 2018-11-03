<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");

$type = $_GET['type'];
$msg_id = $_GET['msg_id'];
$redirect = $_GET['redirect'];
$load_url = $_GET['load_url'];

$type = htmlspecialchars($type);
$type = mysql_escape_string($type);

$msg_id = htmlspecialchars($msg_id);
$msg_id = mysql_escape_string($msg_id);

$redirect = htmlspecialchars($redirect);
$redirect= mysql_escape_string($redirect);

$load_url = htmlspecialchars($load_url);
$load_url = mysql_escape_string($load_url);

if($redirect == "" ) { $redirect = 0; }

switch ($redirect) 
	{
		case 99:
			$url = $load_url;
		break;
		
		case 0:
			$url = "./index.php";
		break;
			
		case 1:
			$url = "./index.php";
		break;

		case 2:
			$url = "./conference_1.php";
		break;
	}

switch ($type) 
	{
		case 0:
			$color = "#CBBA85";
		break;
			
		case 1:
			$color = "#E95E5A";
		break;
	}
	
switch ($msg_id) 
	{
		case 0:
			$msg = "Your message was successfully sent."; //Ваше сообщение успешно отправленно
		break;
			
		case 1:
			$msg = "Not enough balance"; // Недостаточный баланс
		break;
		
		case 2:
			$msg = "Enter your message"; // Введите сообщение
		break;
		
		case 3:
			$msg = "Invalid profile ID"; // Введите сообщение
		break;
		
		case 4:
			$msg = "Access to the profile is limited"; // Введите сообщение
		break;
		
		case 5:
			$msg = "Your tariff plan has expired. To renew the subscription, use the 'Purchase of services' page. If you have any questions please write to us "; // Введите сообщение
		break;
		
		case 6:
			$msg = "You can not send letters, because you are not assigned a personal machmaker."; // Введите сообщение
		break;

		case 7:
			$msg = "Your message was successfully sent"; // Введите сообщение
		break;

		case 8:
			$msg = "You already have a conference scheduled at this time."; // Введите сообщение
		break;

		case 9:
			$msg = "Conference successfully scheduled."; // Введите сообщение
		break;
	}

?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
		<meta http-equiv="refresh" content="3;<? echo $url; ?>">
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
					<div class="offset-1 col-md-10" style="margin-top:50px;  background: #FCF9F4; border: 3px solid <? echo $color; ?>;">
						<div style="margin:30px; font-size: 18px; color: <? echo $color; ?>;"><i class="fa fa-exclamation-circle" aria-hidden="true"></i>  <? echo $msg; ?></div>
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