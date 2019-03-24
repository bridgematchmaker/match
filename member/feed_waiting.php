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
        <link href="assets/css/feed_waiting.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";

$feed_id = $_GET['feed_id'];
$feed_id = htmlspecialchars($feed_id);
$feed_id = mysql_escape_string($feed_id);

$feed_current_type = '4'; // Waiting

if($feed_id <> '') {
    ////////////////////Проверка фида на существование///////////////////////////
    $result_repeat = mysql_query("SELECT * FROM feeds WHERE id='$feed_id';");
    $num = mysql_num_rows($result_repeat);
    if($num !== 1) 
        { 
            echo("<script>javascript:window.location='./feeds.php'</script>");
            exit();
        } 
    /////////////////////////////////////////////////////////////////////////////

    /////////////////Загружаем данные фида///////////////////////////////////////
    $zapros = "SELECT * FROM feeds WHERE id='".$feed_id."'";
    $requirest = mysql_query($zapros);
    while($row = mysql_fetch_array($requirest)) 
        {
            $girl_id = $row['girl_id'];
            $feed_foto = $row['foto'];
            $feed_foto_description = $row['foto_description'];
            $feed_video = $row['video'];
            $feed_video_description = $row['video_description'];
            $feed_day_status = $row['day_status'];
            $feed_day_rating = $row['day_rating'];
            $feed_day_description = $row['day_description'];
            $feed_waiting_foto = $row['waiting_foto'];
            $feed_waiting_description = $row['waiting_description'];
            $feed_question_girl = $row['question_girl'];
            $feed_question_match = $row['question_match'];
            $feed_question_rating = $row['question_rating'];
            $feed_relation_description = $row['relation_description'];
            $feed_relation_girl = $row['relation_girl'];
            $feed_relation_man = $row['relation_man'];
            $feed_relation_foto = $row['relation_foto'];
            $feed_present_property = $row['present_property'];
            $feed_present_description = $row['present_description'];
            $feed_present_foto = $row['present_foto'];
            $feed_description = $row['description'];
            $feed_type = $row['type'];
            $feed_match_add = $row['match_add'];
            $feed_match_add_login = $row['match_add_login'];
            $feed_date_add = $row['date_add'];
        }
    
        $zapros = "SELECT * FROM girls WHERE girl_id='".$girl_id."'";
        $requirest = mysql_query($zapros);
        while($row = mysql_fetch_array($requirest)) 
            {
                $girl_first_name = $row['first_name'];
                $girl_last_name = $row['last_name'];
                $girl_country = $row['country'];
                $girl_city  = $row['city'];
                $girl_foto = $row['foto'];
                $girl_birthday = $row['birthday'];
            }
        
        if($girl_foto == "")
            {
                $foto_print = "../uploads/girls/avatar.jpg";
            }
        else
            {
                $foto_print = "../".$girl_foto;
            }
    /////////////////////////////////////////////////////////////////////////////

    //////////////////////////Проверка типа фида/////////////////////////////////
    if ($feed_type != $feed_current_type) {
        echo("<script>javascript:window.location='./feeds.php'</script>");
        exit();
    }

    /////////////////////////////////////////////////////////////////////////////
} else {
    echo("<script>javascript:window.location='./feeds.php'</script>");
    exit();
}
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9 col-xl-8">
                <h4 class="content-title">
                    Feed: I’m waiting for…
                </h4>
                <a href="#" class="button-back">
                    Back to feeds
                </a>
                <div class="photo-block">
                    <div class="photo-block-header ">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="media img-block">
                                    <img width="80" src="<? echo $foto_print; ?>" alt="" class="mr-3">
                                    <div class="media-body">
                                        <h6><a href="#" class="name"><? echo $girl_first_name; ?></a></h6>
                                        <ul>
                                            <li>
                                                ID: <span><? echo $girl_id;?></span>
                                            </li>
                                            <li>
                                                Birthday: <span><? echo $girl_birthday;?></span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-5 col-xl-6">
                                <div class="photo-block-title">
                                    <img src="assets/images/img-waiting-icon.png" alt="">
                                    <h5>
                                        <span>Events</span>
                                        I’m waiting for…
                                    </h5>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xl-2">
                                <ul class="time-list">
                                    <li>
                                        Date:<span><? echo $feed_date_add; ?></span>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <div class="photo-block-body">
                        <div class="photo-block-body-inner media">
                            <div class="img-block mr-3">
                                <img width="200" src="../<? echo $feed_waiting_foto; ?>" alt="">
                            </div>
                            <div class="media-body">
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <a href="./send_email.php?girl_id=<? echo $girl_id ?>" class="button-service button-blue"> Write  latters</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="./feeds.php?girl_id=<? echo $girl_id ?>" class="button-service button-blue-dark">Show all feeds</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="./function/blacklist_add.php?girl_id=<? echo $girl_id ?>&user_id=<? echo $user_id; ?>" class="button-service button-dark">  + Add to black list</a>
                                    </li>
                                </ul>

                                <p>
                                    <? echo $feed_waiting_description; ?>
                                </p>
                            </div>
                        </div>
                       
                        <?
                        if ($matchmaker_login !== "None") {
                            echo('

                            <div class="photo-block-body-banner">
                                <h5 class="text-accent">
                                    Your personal matchmaker
                                </h5>
                                <h3 class="chat-info">
                                    '.$name_match.'
                                    <span>
                                            <i class="fa fa-phone"></i>
                                            <a href="tel:#">
                                                '.$phone_match.'
                                            </a>
                                        </span>
                                </h3>
                                <div class="d-flex align-items-center">
                                    <div class="mr-3">
                                        <p class="text-gray text-sbold">
                                            Working hours:
                                        </p>
                                        <h5>
                                           '.$time_match.'
                                        </h5>
                                    </div>
                                    <a href="./chat_matchmaker.php" class="btn btn-gradient">write questions</a>
                                </div>


                                <div class="block-chat-img">
                                    <img src="assets/images/chat-img.png" alt="">
                                </div>

                            </div>
                            
                            ');
                        }
                        ?>

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