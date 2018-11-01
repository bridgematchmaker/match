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
        <link href="assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css">

        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.conference_1.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");

$page_menu_name = "Skype";

//////////////////Загрузка и фильтрация ID девушки/////////////////////////////////////
$girl_id = $_GET['girl_id'];
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);
///////////////////////////////////////////////////////////////////////////////////////

require "./header.php";
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
                            Ordering Video conference between you and your lady
                        </h2>

                        <div class="row mt-4 justify-content-center">
                            <div class="col-md-6">
                                <ul class="list-inline step-list">
                                    <li class="list-inline-item active">
                                        Step 1
                                    </li>
                                    <li class="list-inline-item">
                                        Step 2
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6 mt-3 mt-md-0 text-md-right">
                                <p class="text-with-numb">
                                    Amount of available Video conferences
                                    <span><? echo $skypes; ?></span>
                                </p>
                            </div>

                            <?
                                ////////////////////Выволдим таблицу скайп закозов которые ожидают выполнения////////////////////////////////////
                                $result_conference = mysql_query("SELECT * FROM orders WHERE user_id='$user_id' AND type='1' AND (status='0' OR status='1');");
                                $count_conference = mysql_num_rows($result_conference);
                                if($count_conference > 0) 
                                    {
                                        echo('
                                                <div class="col-12 mt-4">
                                                <div class="table-responsive">
                                                    <table class="table  table-custom">
                                                        <thead>
                                                        <tr>
                                                            <th>Date</th>
                                                            <th>Time</th>
                                                            <th>Name and ID</th>
                                                            <th>Status</th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                            '); 
                                        
                                        while($row_conference = mysql_fetch_array($result_conference)) 
                                        {
                                            $skype_time = $row_conference['skype_time'];
                                            $skype_link = $row_conference['skype_link'];
                                            $girl_id = $row_conference['girl_id'];
                                            $girl_name = $row_conference['girl_name'];
                                            $arr_skype_time = explode(' ', $skype_time);
                                            if ($skype_link !== "") {
                                                $skype_status = "<a href='$skype_link'>View conference</a>";
                                            } else {
                                                $skype_status = "Pending";
                                            }
                                            echo("
                                                <tr>
                                                    <td>$arr_skype_time[0]</td>
                                                    <td>$arr_skype_time[1]</td>
                                                    <td>$girl_name ID $girl_id</td>
                                                    <td>$skype_status</td>
                                                    <td>
                                                        <a href='./contact_us.php' class='table-btn'>
                                                            Cancel
                                                        </a>
                                                    </td>
                                                </tr>
                                                ");
                                        }

                                        echo('
                                                        </tbody>
                                                    </table>
                                                </div>
                                                </div>
                                            '); 

                                    }
                            ////////////////////////////////////////////////////////////////////////////////////////////////////////
                            ?>
                            
                            <div class="col-12 mt-3">
                                <div class="terms-block">
                                    <h4 class="text-accent">
                                        Terms of providing services
                                    </h4>
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
                                    <p>
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                                    </p>
                                    <p>
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.

                                    </p>
                                    <p>
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                                        Our highly professional staff is always ready to help you and answer all your questions email. Make sure to specify what your message is regarding. Your question may already be answered! Before you send us an email, take a look at our most FAQ frequently asked questions We promise to review your questions and respond to you as soon as possible.
                                    </p>
                                </div>
                            </div>
                            <div class="col-12 mt-4">
                                <form action="./conference_2.php" method="post" class="form-agree">
                                    <input type="hidden" name="girl_id" value="<? echo $girl_id; ?>">
                                    <div class="media agree-block">
                                        <div class="align-self-center checkbox-block">
                                            <label for="agree">
                                                <input type="checkbox" id="agree" name="agree" <? if($skypes < 1) { echo('disabled'); } ?>>
                                                <span></span>
                                            </label>

                                        </div>
                                        <div class="media-body ml-3">
                                            <ul class="agree-list">
                                                <li>
                                                    I agree that before the Video call, I will be contacted by Skype with a matchmaker and will be present in the video
                                                    chat if this is necessary.
                                                </li>
                                                <li>
                                                    I agree that the time of communication in the chat is limited and after the time ends there will be an interruption.
                                                </li>
                                                <li>
                                                    I agree with the fact that the lady or you can interrupt Skype if communication becomes unpleasant or offensive.
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="mt-4 text-center form-footer">
                                    <?
											if($matchmaker_login !== "None")
												{
													echo('
                                                            <a href="./chat_matchmaker.php" class="form-link">Please contact your personal matchmaker </a>
                                                        ');
                                                } else {
                                                    echo('
                                                            <a href="./contact_us.php" class="form-link">Please contact your personal matchmaker </a>
                                                        ');
                                                }
                                    ?>
                                        <p class="mt-4">
                                            <button type="submit" class="btn btn-gradient disabled">
                                                Next step
                                            </button>
                                        </p>
                                        <p class="mt-3 text-center text-red">
                                            <? 
                                                if($skypes < 1) { 
                                                    echo('
                                                        <span class="d-block">*This service isn\'t available for you at the moment.</span>
                                                        <span class="d-block">(Please contact your personal matchmaker ) to know details.</span>
                                                    '); 
                                                } else {
                                                    echo('<span class="d-block">*The first step of two.</span>');
                                                } 
                                            ?>
                                        </p>

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
    <script src="assets/js/jquery.mCustomScrollbar.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/customConference_1.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>