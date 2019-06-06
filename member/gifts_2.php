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
        <link href="assets/css/style.gift2.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
$page_menu_name = "Gifts";
require "./header.php";

$girl_id = $_POST['girl_id'];
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$gift_id = $_POST['gift_id'];
$gift_id = htmlspecialchars($gift_id);
$gift_id = mysql_escape_string($gift_id);

if($gifts < 1) { 
    echo("<script>javascript:window.location='../msg.php?type=1&msg_id=1&redirect=0'</script>");
	exit();
}

if($girl_id <> '') {
    ////////////////////Проверка анкеты девушки на существование///////////////////////////
    $result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
    $num = mysql_num_rows($result_repeat);
    if($num !== 1) 
        { 
            echo("
                <script>javascript:window.location='./index.php'</script>
            ");
            exit();
        } 
    ///////////////////////////////////////////////////////////////////////////////////////

    /////////////////Загружаем данные анкеты девушки///////////////////////////////////////
    include("./function/girl_bd.php");
    ///////////////////////////////////////////////////////////////////////////////////////

    /////////////////Проверяем доступность профиля девушки для клиента/////////////////////

    $result_access = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$user_id';");
    $num_access = mysql_num_rows($result_access);
    if($num_access !== 1) 
        { 
            if($girl_gallery_status <> "1")
            {
                    echo("
                        <script>javascript:window.location='./index.php'</script>
                        ");
                    exit();
            }
        } 

    ///////////////////////////////////////////////////////////////////////////////////////
} else {
    echo("
        <script>javascript:window.location='./index.php'</script>
        ");
    exit();
}

if($gift_id <> '') {
    ////////////////////Проверка подарка на существование///////////////////////////
    $result_repeat = mysql_query("SELECT * FROM setting_gifts WHERE gift_id='$gift_id';");
    $num = mysql_num_rows($result_repeat);
    if($num !== 1) 
        { 
            echo("
                <script>javascript:window.location='./index.php'</script>
            ");
            exit();
        } 
    /////////////////////////////////////////////////////////////////////////////////

    /////////////////Загружаем данные подарка//////////////////////////////////////////////
    $zapros_gift = "SELECT * FROM setting_gifts WHERE gift_id='$gift_id'";
    $result_gift = mysql_query($zapros_gift);
    while ($row_gift = mysql_fetch_assoc($result_gift)) 
        {	
            $gift_name = $row_gift['gift_name'];
            $gift_price = $row_gift['gift_price'];
            $gift_description = $row_gift['gift_description'];
            $gift_foto = $row_gift['gift_foto'];
        }
    ///////////////////////////////////////////////////////////////////////////////////////
} else {
    echo("
        <script>javascript:window.location='./index.php'</script>
        ");
    exit();
}

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
                            Gift delivery service
                        </h3>


                        <form  class="mt-4 form-service" action="./function/gift_order_add.php" method="post">
                            <input name="girl_id" type="hidden" value="<? echo $girl_id; ?>">
                            <input name="gift_id" type="hidden" value="<? echo $gift_id; ?>">
                            <div class="row">
                                <div class="col-lg-8 mt-3">
                                    <div class="gift-card">
                                        <div class="gift-card-product media flex-column flex-sm-row">
                                            <div class="img-block">
                                                <img src="../<? echo $gift_foto; ?>" width="122" height="122" alt="">
                                            </div>
                                            <div class="media-body pt-4 pt-sm-0 pl-sm-3">
                                                <p class="title">
                                                   <? echo $gift_name; ?>
                                                </p>
                                                <p>
                                                    <? echo $gift_description; ?>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="gift-card-product mt-3 media flex-column flex-sm-row">
                                            <div class="img-block">
                                                <img src="../<? echo $girl_foto; ?>" width="122" height="122" alt="">
                                            </div>
                                            <div class="media-body pt-4 pt-sm-0 pl-sm-3">
                                                <p>
                                                    For lady ID <? echo $girl_id; ?>
                                                </p>
                                                <p class="title">
                                                    <? echo $girl_first_name; ?>
                                                </p>
                                            </div>

                                        </div>
                                        <div class="gift-card-price">
                                            <p >
                                                Price:
                                                <span class="gift-price">
                                                    <span><? echo $gift_price; ?></span>
                                                    EUR
                                                </span>
                                            </p>
                                        </div>
                                    </div>
                                    <ul class="check-list">
                                        <li>
                                            <label >
                                                <input type="radio" name="delivery" class="checkbox-report" id="checkGift1" value="Yes" checked>
                                                <span class="input-check"></span>
                                                Delivery report <span class="text-accent">(+12$)</span> will be sent you on your e-mail adress
                                                in 6 days. We guarantee a delivery of the gift, or your will get a full
                                                refund on your card
                                            </label>
                                        </li>
                                        <li>
                                            <label >
                                                <input type="checkbox" name="video_report" class="checkbox-report" id="checkGift2" value="Yes">
                                                <span class="input-check"></span>
                                                I would like to get an additional video report about delivery of this
                                                gift <span class="text-accent">(+10%)</span>
                                            </label>
                                        </li>
                                        <li>
                                            <label >
                                                <input type="radio" name="delivery" class="checkbox-report" id="checkGift3" value="No">
                                                <span class="input-check"></span>
                                                I’m no need in delivery. Gift weel be presented personally be me in
                                                a day of meeting with my lady
                                            </label>
                                        </li>
                                    </ul>
                                    <div class="box-total-price">
                                        <p>
                                            Price of all:
                                            <span class="total-price">
                                                <span>
                                                    
                                                </span>
                                                EUR
                                            </span>
                                        </p>
                                        <button class="btn btn-gradient" type="submit">
                                            Go to payment
                                        </button>
                                    </div>
                                    <div class="warning-block">
                                        <div class="block-inner">
                                            <img src="assets/images/att-im.png" alt="">
                                            <p>
                                                We guarantee a delivery of the gift, or your will get a full refund
                                                on your card
                                            </p>
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
                                                    <input type="radio" name="pay" id="pay2" disabled="disabled" >
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
    <script src="assets/js/customGift2.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>