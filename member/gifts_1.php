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
        <link href="assets/css/style.gift1.css" rel="stylesheet" type="text/css">
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


$girl_id = $_GET['girl_id'];
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

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
}

?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
            <div class="row">
                    <div class="col-lg-11">
                        <h2 class="page-title text-gray">
                            Gifts
                        </h2>
                        <form action="./gifts_2.php" method="POST" class="gift-form">
                        <div class="row mt-4 justify-content-center">
                            <div class="col-lg-6 col-xl-5">
                                <div class="info-block">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <div class="user-img"> 
                                                <? 
                                                    if($girl_id <> '') {
                                                        echo('<img width="180" height="180" src="../'.$girl_foto.'" alt="">');
                                                    } else {
                                                        echo('<img src="assets/images/user-img-1.jpg" alt="">');
                                                    }
                                                ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 mt-3 mt-lg-0">
                                            <ul class="list-info">
                                    
                                                <?
                                                    if($girl_id <> '') {
                                                        echo('
                                                            <li>
                                                                <p>Name</p>
                                                                <p class="name">'.$girl_first_name.'</p>
                                                            </li>
                                                        ');
                                                    } 
                                                ?>
                                    
                                                <li>
                                                    <label for="numbId">
                                                        ID <span>*</span>
                                                    </label>
                                                    <input type="text" name="girl_id" id="numbId" placeholder="123456" value="<? echo $girl_id; ?>" class="form-input form-input-sm" required>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-7 mt-3 mt-lg-0">
                                <div class="terms-block">
                                    <p>
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.

                                    </p>
                                    <p>
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                                    </p>
                                    <p>
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.

                                    </p>


                                </div>
                            </div>

                            <div class="col-12 mt-5">
                                <div class="row">
                                    <?
                                        $zapros_gift = "SELECT * FROM setting_gifts";
                                        $result_gift = mysql_query($zapros_gift);
                                        while ($row_gift = mysql_fetch_assoc($result_gift)) 
                                            {
                                                //////////////////////Загружаем данных/////////////////////////
                                                $gift_id = $row_gift['gift_id'];					
                                                $gift_name = $row_gift['gift_name'];
                                                $gift_price = $row_gift['gift_price'];
                                                $gift_description = $row_gift['gift_description'];
                                                $gift_foto = $row_gift['gift_foto'];
                                                ///////////////////////////////////////////////////////////////
                                                
                                                echo('
                                                        <div class="col-sm-6 col-lg-4">
                                                            <div class="gift-block">
                                                                <div class="gift-block-inner">
                                                                    <div class="gift-img">
                                                                        <img width="200" height="200" src="../'.$gift_foto.'" alt="">
                                                                    </div>
                    
                                                                    <p class="gift-block-title">
                                                                        '.$gift_name.'
                                                                    </p>
                                                                    <p class="text">
                                                                        '.$gift_description.'
                                                                    </p>
                    
                                                                </div>
                                                                <div class="gift-block-footer text-center">
                                                                    <label>
                                                                        <input class="product-checkbox" type="radio" name="gift_id" value="'.$gift_id.'" required>
                                                                    <span></span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                
                                                    ');
                                            }

                                            
                                    ?>
                                   
                                   
                                </div>
                            </div>
                            <div class="col-12 mt-4">

                                    <div class="align-self-center checkbox-block ">
                                        <label for="agree" class="text-hacki">
                                            <input type="checkbox" id="agree">
                                            <span></span>
                                            I agree that the time of communication in the chat is limited and after the time ends there will be an interruption.
                                        </label>

                                    </div>

                                    <div class="mt-4 text-center form-footer">
                                        <p class="mt-4">
                                            <button type="submit" class="btn btn-gradient disabled">
                                                Next
                                            </button>
                                        </p>

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
    <script src="assets/js/jquery.mousewheel.min.js"></script>
    <script src="assets/js/jquery.mousewheel-3.0.6.min.js"></script>
    <script src="assets/js/jquery.mCustomScrollbar.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/customGift1.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>