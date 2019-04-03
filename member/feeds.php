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
        <!-- Favicon -->
        <link href="assets/css/feeds.css" rel="stylesheet" type="text/css">
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

                <div class="content-container">

                    <h1 class="feeds-title">Message Feed</h1>

                    <!-- START feeds menu -->
                    <ul class="feeds-menu">
                        <li><a href="#">Messages</a></li>
                        <li class="active"><a href="./feeds.php">Feeds</a></li>
                    </ul>
                    <!-- end feeds menu -->

                    <!-- START Banner 
                    <div class="banner">
                        <img src="assets/images/banner.jpg" alt="">
                    </div>
                     END Banner -->

                    <!-- START feeds -->
                    <div class="feeds" id="feeds">
                        <div class="data-container"></div>

                        <?
                            ////////////////////////Загружаем массив девушек добавленных клиенту в профиль/////////////////////////
                            $data_girl_id = Array(); // Масив с id девушек
                            $count = 0;
                            $sql_client_girl = "SELECT * FROM clients_girl WHERE user_id='".$user_id."'";
                            $result_client_girl  = mysql_query($sql_client_girl);
                            while($row_client_girl = mysql_fetch_array($result_client_girl)) 
                                { 
                                    $data_girl_id[$count] = $row_client_girl['girl_id'];
                                    $count++;
                                }
                            ///////////////////////////////////////////////////////////////////////////////////////////////////////

                            ///////////////////////////////////////////Загрузка фидов//////////////////////////////////////////////
                            $girl_id = $_GET['girl_id'];
                            $girl_id = htmlspecialchars($girl_id);
                            $girl_id = mysql_escape_string($girl_id);

                            if($girl_id <> '') {
                                ////////////////////Проверка анкеты девушки на существование///////////////////////////
                                $result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
                                $num = mysql_num_rows($result_repeat);
                                if($num !== 1) { 
                                        $sql_feeds = "SELECT * FROM feeds ORDER BY id DESC LIMIT 100";
                                    } 
                                else {
                                    $sql_feeds = "SELECT * FROM feeds WHERE girl_id='$girl_id' ORDER BY id DESC LIMIT 100";
                                }
                            } else {
                                $sql_feeds = "SELECT * FROM feeds ORDER BY id DESC LIMIT 100";
                            }

                            $result_feeds  = mysql_query($sql_feeds);
                            while($row = mysql_fetch_array($result_feeds)) 
                                {
                                    if (!in_array($row['girl_id'], $data_girl_id)) 
                                        {
                                            $feed_type = $row['type'];
                                            $feed_id = $row['id'];
                                            $feed_girl_id = $row['girl_id'];
                                            $feed_date_add = $row['date_add'];

                                            if ($feed_type == "1") {
                                                $feed_icon = "icon-photo.png";
                                                $feed_title = "My new photo";
                                                $feed_url = "./feed_foto.php?feed_id=" . $feed_id;
                                            } elseif ($feed_type == "2") {
                                                $feed_icon = "icon-video.png";
                                                $feed_title = "My new video";
                                                $feed_url = "./feed_video.php?feed_id=" . $feed_id;             
                                            } elseif ($feed_type == "3") {
                                                $feed_icon = "icon-day.png";
                                                $feed_title = "Events of My day";
                                                $feed_url = "./feed_day.php?feed_id=" . $feed_id;
                                            } elseif ($feed_type == "4") {
                                                $feed_icon = "icon-timer.png";
                                                $feed_title = "I’m waiting for…";
                                                $feed_url = "./feed_waiting.php?feed_id=" . $feed_id;
                                            } elseif ($feed_type == "5") {
                                                $feed_icon = "icon-question.png";
                                                $feed_title = "Question to my matchmaker";
                                                $feed_url = "./feed_question.php?feed_id=" . $feed_id;
                                            } elseif ($feed_type == "6") {
                                                $feed_icon = "icon-relationship.png";
                                                $feed_title = "My future relationship";
                                                $feed_url = "./feed_relationship.php?feed_id=" . $feed_id;
                                            } elseif ($feed_type == "7") {
                                                $feed_icon = "icon-matchmaker.png";
                                                $feed_title = "Matchmaker presents a lady";
                                                $feed_url = "./feed_present.php?feed_id=" . $feed_id;
                                            }

                                            ///////////Загружаем данные девки////////////
                                            $zapros_feed_girl = "SELECT first_name, last_name, foto FROM girls WHERE girl_id='".$feed_girl_id."'";
                                            $requirest_feed_girl = mysql_query($zapros_feed_girl);
                                            while($row_feed_girl = mysql_fetch_array($requirest_feed_girl)) 
                                                {
                                                    $feed_girl_first_name = $row_feed_girl['first_name'];
                                                    $feed_girl_last_name = $row_feed_girl['last_name'];
                                                    $feed_girl_foto = $row_feed_girl['foto'];
                                                }
                                            /////////////////////////////////////////////

                                            ///////////////Вывод фида////////////////////
                                            echo('
                                                    <!-- START feeds post -->
                                                    <div class="feeds-post clearfix" id="feed-1">
                                                        <div class="feeds-left clearfix">
                                                            <div class="picture">
                                                                <a href="'.$feed_url.'"><img width="100" src="../'.$feed_girl_foto.'" alt=""></a>
                                                            </div>
                                                            <div class="profile-info">
                                                                <div class="name">
                                                                    <a href="#">'.$feed_girl_first_name.'</a>
                                                                    
                                                                </div>
                                                                <ul class="profile-menu">
                                                                    <li><a href="./send_email.php?girl_id='.$feed_girl_id.'" class="btn-wl">Write latters</a></li>
                                                                    <li><a href="./feeds.php?girl_id='.$feed_girl_id.'" class="btn-saf">Show all feeds</a></li>
                                                                    <li><a href="./function/blacklist_add.php?girl_id='.$feed_girl_id.'&user_id='.$user_id.'" class="btn-abl">+ Add to black list</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="feeds-middle clearfix">
                                                            <div class="icon">
                                                                <a href="'.$feed_url.'"><img src="assets/images/'.$feed_icon.'" alt=""></a>
                                                            </div>
                                                            <div class="feeds-title">
                                                                <b>EVENTS</b>
                                                                '.$feed_title.'
                                                            </div>
                                                            <a href="'.$feed_url.'" class="read-feed">Read this feed</a>
                                                        </div>
                                                        <div class="feeds-right">
                                                            <div class="time">
                                                                <span>'.$feed_date_add.'</span>
                                                            </div>
                                                            <a href="'.$feed_url.'" class="read-arrow">
                                                                <img src="assets/images/read-arrow.png" alt="">
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- End Event post -->                         
                                                ');
                                            /////////////////////////////////////////////
                                        }
                                }
                            ///////////////////////////////////////////////////////////////////////////////////////////////////////
                        
                        ?>
    
                    </div>
                    <!-- END Events -->

                    <!-- START Pagination -->
                    <div id="pagination-feed" class="pagination-nav"></div>
                    <!-- END Pagination -->

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
    <script src="assets/js/pagination.js"></script>
	<script src="assets/js/feeds.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>