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
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.content.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");

$payment_id = $_GET['payment_id'];
$card_error = $_SESSION['card_error'];
$_SESSION['card_error'] = '';

$payment_id = htmlspecialchars($payment_id);
$payment_id = mysql_escape_string($payment_id);

/////////////////Проверяем cуществует ли такой не завершенный платеж/////////////////////

$result_access = mysql_query("SELECT * FROM payments WHERE payment_id = '$payment_id' AND status = '0' AND user_id = '$user_id';");
$num_access = mysql_num_rows($result_access);
if($num_access !== 1) 
	{ 
        echo("<script>javascript:window.location='./index.php'</script>");
        die();
	}
///////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////Загрузка данных про платеж////////////////////////////////
$zapros_payment = "SELECT * FROM payments WHERE payment_id = '$payment_id';";
$requirest_payment = mysql_query($zapros_payment);
while($row_payment = mysql_fetch_array($requirest_payment)) 
	{
       $payment_price = $row_payment['price'];
       $payment_type = $row_payment['type'];
       $payment_system = $row_payment['payment_system'];
	}
///////////////////////////////////////////////////////////////////////////////////////

////////////Если оплата подарка, то проверяем кредиты подарков/////////////////////////
if ($payment_type == "1") {
    if ($gifts == "0") {
        echo("<script>javascript:window.location='./index.php'</script>");
        die();
    }
}
///////////////////////////////////////////////////////////////////////////////////////

if ($payment_system == "pastabank") {
    $payment_redirect = "./function/payment/payment_pastabank.php";
} else {
    $payment_redirect = "./index.php.php";
}


require "./header.php";
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
                <form action="<? echo $payment_redirect; ?>" method="POST">
                    <input name="payment_id" type="hidden" value="<? echo $payment_id; ?>">
                    Card number: <input name="card_number" type="text"><br>
                    Card CVV: <input name="card_cvv" type="text"><br>
                    Card Name holder: <input name="card_name" type="text"><br>
                    MM: <input name="card_mm" type="text"> YY: <input name="card_yy" type="text"><br>
                    <input type="submit" value="PAY">
                </form>
                <hr>
                <? echo $card_error; ?>
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