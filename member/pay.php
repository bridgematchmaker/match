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
        <link href="assets/css/select2-conf.css" rel="stylesheet" type="text/css">

        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.pay.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");

$payment_id = $_GET['payment_id'];
if (!empty($_SESSION['card_error'])) {
    $card_error = $_SESSION['card_error'];
} else {
    $card_error = '';
    $_SESSION['card_error'] = '';
}

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
       $payment_info = $row_payment['payment_info'];
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
                <div class="row">
                    <div class="col-lg-12 col-xl-11">
                        <h2 class="page-title text-gray">
                            Pay securely with your card
                        </h2>

                        <? if($card_error !== "") {
                            echo('
                                    <div class="warning-block">
                                        <img src="assets/images/att-im.png" alt="">
                                        <p class="warning-block-title">
                                           ' . $card_error . '
                                        </p>
                                     </div>
                                ');
                            }  
                        ?>

                        <div class="row justify-content-lg-between">
                            <div class="col-md-6 col-lg-5">
                                <h2 class="text-accent">
                                   Amount: <? echo $payment_price; ?> EUR
                                </h2>
                                <div class="description-block mt-4">
                                    <p class="text-accent text-sbold">
                                        Description:
                                    </p>
                                    <ul>
                                        <li>
                                           Paymnent info: <? echo $payment_info; ?>
                                        </li>
                                        <li>
                                            Payment id: <? echo $payment_id; ?>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mt-4">
                                    <p class="text-sbold text-gray">
                                        Prompt:
                                    </p>
                                    <img src="assets/images/card-img.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-8 col-lg-6 mt-4 mt-lg-0">
                                <img src="assets/images/pay-img.jpg" alt="">
                                <form action="<? echo $payment_redirect; ?>" class="pay-form" method="POST">
                                    <input name="payment_id" type="hidden" value="<? echo $payment_id; ?>">
                                    <h4 class="text-gray text-sbold form-title">
                                        <img src="assets/images/form-pay-icon.png" alt="">
                                        <span>Card details</span>
                                    </h4>
                                    <div class="form-item">
                                        <input type="text"  name="card_name" placeholder="Name on the card">
                                    </div>
                                    <div class="form-item">
                                        <input type="text"  name="card_number" placeholder="Card number">
                                    </div>
                                    <p class="mt-4">
                                        Card expires:
                                    </p>
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <select name="card_mm" placeholder="Month" >
                                                <option title="Month"> Month</option>   
                                                <option value="01">01 </option>
                                                <option value="02">02</option>
                                                <option value="03">03</option>
                                                <option value="04">04</option>
                                                <option value="05">05 </option>
                                                <option value="06">06</option>
                                                <option value="07">07</option>
                                                <option value="08">08</option>
                                                <option value="09">09</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-4 mt-3 mt-sm-0">
                                            <select name="card_yy" placeholder="Year" >
                                                <option title="Year"> Year</option>                                               
                                                <option value="18">18</option>
                                                <option value="19">19</option>
                                                <option value="20">20</option>
                                                <option value="21">21</option>
                                                <option value="22">22</option>
                                                <option value="23">23</option>
                                                <option value="24">24</option>
                                                <option value="25">25</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-5 mt-3">
                                            <div class="form-item">
                                                <input type="password" name="card_cvv" placeholder="CSC/CVC">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btn-block text-center">
                                        <button class="btn btn-gradient" type="submit">
                                            PAY now securely
                                        </button>
                                    </div>
                                </form>
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
    <script src="assets/js/select2_2.min.js"></script>
    <script src="assets/js/select2.js"></script>
    <script src="assets/js/custom.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>